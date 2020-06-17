/*
   Hologram generating algorithms for CUDA Devices

   Copyright 2009, 2010, 2011, 2012 Martin Persson
   martin.persson@physics.gu.se

   This file is part of GenerateHologramCUDA.

   GenerateHologramCUDA is free software: you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public License as published
   by the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   GenerateHologramCUDA is distributed in the hope that it will be
   useful, but WITHOUT ANY WARRANTY; without even the implied warranty
   of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public License
   along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/

// Activates a number of custom debug macros
#define M_CUDA_DEBUG
//#define M_CORE_DEBUG

#include "hologram.h"
#include "stats.h"
#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

#define MAX_SPOTS 64 // Even 64 is pushing it
#define MAX_POL 120
#define MAX_UCHAR 256

#define BLOCK_SIZE 256
#define BLOCK_STRIDE 4

#define SLM_HEIGHT 1024
#define SLM_WIDTH 2048
#define NUM_PIXELS (SLM_HEIGHT * SLM_WIDTH)
#define NUM_CHANNELS 3
#define NUM_SPOTS 2

// forward declaration
void computeAndCopySpotData(const float * const x,
                            const float * const y,
                            const float * const z,
                            const float * const intensity,
                            const int n);

// Custom debug macros
#define M_CHECK_ERROR() mCheckError(__LINE__, __FILE__)
#define M_SAFE_CALL(errcode) mSafeCall(errcode, __LINE__, __FILE__)
#define M_DISPLAY_DATA_F(data, length) mDisplayDataF(data, length, __LINE__)
#define M_DISPLAY_DATA_UC(data, length) mDisplayDataUC(data, length, __LINE__)
#define M_DISPLAY_DATA_I(data, length) mDisplayDataI(data, length, __LINE__)
inline void mSafeCall(cudaError_t status, int line, const char *file);
inline void mCheckError(int line, const char *file);
inline void mDisplayDataF(float *d_data, int length, int line);
inline void mDisplayDataUC(unsigned char *d_data, int length, int line);
inline void mDisplayDataI(int *d_data, int length, int line);

// Hologram info
unsigned char *d_hologram; // [0, 255]
float *d_hologramPhase;    // [-pi, pi]
float *d_prevHologramPhase;

const int slmWidth = SLM_WIDTH;
const int slmHeight = SLM_HEIGHT;
const float slmPitch = 1.0f / ((float) SLM_WIDTH);
const int numPixels = SLM_WIDTH * SLM_HEIGHT;
const int numIterations = 10;
const int numSpots = NUM_SPOTS;
const int numLocalSumPerUnit = ceil(1.0 * numPixels/(BLOCK_SIZE * BLOCK_STRIDE));
const int numLocalSum = numLocalSumPerUnit * NUM_CHANNELS * numSpots;
int hologramMemSize;

// Spot info
float *d_local_spotRe;
float *d_local_spotIm;
float *d_desiredAmp;
float *d_spotRe;
float *d_spotIm;
float *d_phase;
float *d_weights;
float *d_obtainedI;
bool saveSpotI;
int weightMemSize;

// Aberration correction
bool useAC;
float *d_aberrationCoeffs;

// Spatially Varying Phase Response
bool useSVPR;
int polOrder;
int numPolCoeffs;
float *d_polCoeffs;

// phase-to-uc LUT
bool useLUT;
unsigned char *d_lut;

// Restricted Phase Change
bool useRPC;
float alpha;

// Error checking
char CUDAmessage[100];
cudaError_t status;

// Put spot positions in constant memory
__constant__ float d_spotX[numSpots];
__constant__ float d_spotY[numSpots];
__constant__ float d_spotZ[numSpots];

/****************************** Device functions ******************************/

// Convert from unsigned char [0, 255] to phase (float) [-pi, pi]
__device__ inline float uc2phase(const unsigned char uc)
{
    return (((float) uc) * 2.0f * M_PI/256.0f - M_PI);
}

// Convert from phase (float) [-pi, pi] to unsigned char [0, 255]
__device__ inline unsigned char phase2uc(const float phase)
{
    return (unsigned char) floor((phase + M_PI) * 256.0f / (2.0f * M_PI));
}

// Convert from phase (float) [-pi, pi] to int
__device__ inline int phase2int(const float phase)
{
    return (int) floor((phase + M_PI) * 256.0f / (2.0f * M_PI));
}

// Apply wavefront distortion/aberration correction
__device__ inline float applyAberrationCorrection(float pSpot, const float correction)
{
    // First apply correction, then apply mod([-pi, pi], pSpot)
    pSpot = pSpot - correction;
    return (pSpot - (2.0f * M_PI) * floor((pSpot + M_PI) / (2.0f * M_PI)));
}

// Get x coordinate from global thread ID
__device__ inline int getXIdx(const int index, const int slmDim)
{
    return index % slmDim;
}

// Get y coordinate from global thread ID and x coordinate
__device__ inline int getYIdx(const int index, const int xIdx, const float slmPitch)
{
    return floor(((float) (index - xIdx)) * slmPitch);
}

// Get pixel coordinates in [-0.5, 0.5]
__device__ inline float getPixelCoords(const int index, const int slmDim, const float slmPitch)
{
    return (slmPitch * ((float) (index - (slmDim >> 1))));
}

// Get pixel coordinates in [-0.5, 0.5]
__device__ inline float normalizeCoordinate(int idx, int total){
    return ((float)idx - (total >> 1))/total;
}

// Compute phase from pixel position and spot position
__device__ inline float computePhase(const float x,
                                     const float y,
                                     const float spotx,
                                     const float spoty,
                                     const float spotz)
{
    // TODO: use equation from paper?
    return (M_PI * (spotz * (x*x + y*y) + 2.0f * (x*spotx + y*spoty)));
}

// Apply SVPR
__device__ unsigned char applySVPR(const float phase,
                                   const float x,
                                   const float y,
                                   const float * const coeff,
                                   const int numPolCoeffs)
{
    float result = 0.0f;
    switch (numPolCoeffs) {
        case 120:
            result += coeff[84]*x*x*x*x*x*x*x;
            result += coeff[85]*x*x*x*x*x*x*y;
            result += coeff[86]*x*x*x*x*x*x*phase;
            result += coeff[87]*x*x*x*x*x*y*y;
            result += coeff[88]*x*x*x*x*x*y*phase;
            result += coeff[89]*x*x*x*x*x*phase*phase;
            result += coeff[90]*x*x*x*x*y*y*y;
            result += coeff[91]*x*x*x*x*y*y*phase;
            result += coeff[92]*x*x*x*x*y*phase*phase;
            result += coeff[93]*x*x*x*x*phase*phase*phase;
            result += coeff[94]*x*x*x*y*y*y*y;
            result += coeff[95]*x*x*x*y*y*y*phase;
            result += coeff[96]*x*x*x*y*y*phase*phase;
            result += coeff[97]*x*x*x*y*phase*phase*phase;
            result += coeff[98]*x*x*x*phase*phase*phase*phase;
            result += coeff[99]*x*x*y*y*y*y*y;
            result += coeff[100]*x*x*y*y*y*y*phase;
            result += coeff[101]*x*x*y*y*y*phase*phase;
            result += coeff[102]*x*x*y*y*phase*phase*phase;
            result += coeff[103]*x*x*y*phase*phase*phase*phase;
            result += coeff[104]*x*x*phase*phase*phase*phase*phase;
            result += coeff[105]*x*y*y*y*y*y*y;
            result += coeff[106]*x*y*y*y*y*y*phase;
            result += coeff[107]*x*y*y*y*y*phase*phase;
            result += coeff[108]*x*y*y*y*phase*phase*phase;
            result += coeff[109]*x*y*y*phase*phase*phase*phase;
            result += coeff[110]*x*y*phase*phase*phase*phase*phase;
            result += coeff[111]*x*phase*phase*phase*phase*phase*phase;
            result += coeff[112]*y*y*y*y*y*y*y;
            result += coeff[113]*y*y*y*y*y*y*phase;
            result += coeff[114]*y*y*y*y*y*phase*phase;
            result += coeff[115]*y*y*y*y*phase*phase*phase;
            result += coeff[116]*y*y*y*phase*phase*phase*phase;
            result += coeff[117]*y*y*phase*phase*phase*phase*phase;
            result += coeff[118]*y*phase*phase*phase*phase*phase*phase;
            result += coeff[119]*phase*phase*phase*phase*phase*phase*phase;
        case 84:
            result += coeff[56]*x*x*x*x*x*x;
            result += coeff[57]*x*x*x*x*x*y;
            result += coeff[58]*x*x*x*x*x*phase;
            result += coeff[59]*x*x*x*x*y*y;
            result += coeff[60]*x*x*x*x*y*phase;
            result += coeff[61]*x*x*x*x*phase*phase;
            result += coeff[62]*x*x*x*y*y*y;
            result += coeff[63]*x*x*x*y*y*phase;
            result += coeff[64]*x*x*x*y*phase*phase;
            result += coeff[65]*x*x*x*phase*phase*phase;
            result += coeff[66]*x*x*y*y*y*y;
            result += coeff[67]*x*x*y*y*y*phase;
            result += coeff[68]*x*x*y*y*phase*phase;
            result += coeff[69]*x*x*y*phase*phase*phase;
            result += coeff[70]*x*x*phase*phase*phase*phase;
            result += coeff[71]*x*y*y*y*y*y;
            result += coeff[72]*x*y*y*y*y*phase;
            result += coeff[73]*x*y*y*y*phase*phase;
            result += coeff[74]*x*y*y*phase*phase*phase;
            result += coeff[75]*x*y*phase*phase*phase*phase;
            result += coeff[76]*x*phase*phase*phase*phase*phase;
            result += coeff[77]*y*y*y*y*y*y;
            result += coeff[78]*y*y*y*y*y*phase;
            result += coeff[79]*y*y*y*y*phase*phase;
            result += coeff[80]*y*y*y*phase*phase*phase;
            result += coeff[81]*y*y*phase*phase*phase*phase;
            result += coeff[82]*y*phase*phase*phase*phase*phase;
            result += coeff[83]*phase*phase*phase*phase*phase*phase;
        case 56:
            result += coeff[35]*x*x*x*x*x;
            result += coeff[36]*x*x*x*x*y;
            result += coeff[37]*x*x*x*x*phase;
            result += coeff[38]*x*x*x*y*y;
            result += coeff[39]*x*x*x*y*phase;
            result += coeff[40]*x*x*x*phase*phase;
            result += coeff[41]*x*x*y*y*y;
            result += coeff[42]*x*x*y*y*phase;
            result += coeff[43]*x*x*y*phase*phase;
            result += coeff[44]*x*x*phase*phase*phase;
            result += coeff[45]*x*y*y*y*y;
            result += coeff[46]*x*y*y*y*phase;
            result += coeff[47]*x*y*y*phase*phase;
            result += coeff[48]*x*y*phase*phase*phase;
            result += coeff[49]*x*phase*phase*phase*phase;
            result += coeff[50]*y*y*y*y*y;
            result += coeff[51]*y*y*y*y*phase;
            result += coeff[52]*y*y*y*phase*phase;
            result += coeff[53]*y*y*phase*phase*phase;
            result += coeff[54]*y*phase*phase*phase*phase;
            result += coeff[55]*phase*phase*phase*phase*phase;
        case 35:
            result += coeff[20]*x*x*x*x;
            result += coeff[21]*x*x*x*y;
            result += coeff[22]*x*x*x*phase;
            result += coeff[23]*x*x*y*y;
            result += coeff[24]*x*x*y*phase;
            result += coeff[25]*x*x*phase*phase;
            result += coeff[26]*x*y*y*y;
            result += coeff[27]*x*y*y*phase;
            result += coeff[28]*x*y*phase*phase;
            result += coeff[29]*x*phase*phase*phase;
            result += coeff[30]*y*y*y*y;
            result += coeff[31]*y*y*y*phase;
            result += coeff[32]*y*y*phase*phase;
            result += coeff[33]*y*phase*phase*phase;
            result += coeff[34]*phase*phase*phase*phase;
        case 20:
            result += coeff[0];
            result += coeff[1]*x;
            result += coeff[2]*y;
            result += coeff[3]*phase;
            result += coeff[4]*x*x;
            result += coeff[5]*x*y;
            result += coeff[6]*x*phase;
            result += coeff[7]*y*y;
            result += coeff[8]*y*phase;
            result += coeff[9]*phase*phase;
            result += coeff[10]*x*x*x;
            result += coeff[11]*x*x*y;
            result += coeff[12]*x*x*phase;
            result += coeff[13]*x*y*y;
            result += coeff[14]*x*y*phase;
            result += coeff[15]*x*phase*phase;
            result += coeff[16]*y*y*y;
            result += coeff[17]*y*y*phase;
            result += coeff[18]*y*phase*phase;
            result += coeff[19]*phase*phase*phase;
            break;
        default:
            result = 0.0f;
        break;
    }

    if (result < 0.0f)
        result = 0.0f;

    return (unsigned char) result;
}

// Performs intra-warp reduction. The arrays are in shared memory.
__device__ void warpReduce(volatile float *vRe, volatile float *vIm, int tid)
{
    vRe[tid] += vRe[tid + 32];
    vIm[tid] += vIm[tid + 32];

    vRe[tid] += vRe[tid + 16];
    vIm[tid] += vIm[tid + 16];

    vRe[tid] += vRe[tid + 8];
    vIm[tid] += vIm[tid + 8];

    vRe[tid] += vRe[tid + 4];
    vIm[tid] += vIm[tid + 4];

    vRe[tid] += vRe[tid + 2];
    vIm[tid] += vIm[tid + 2];

    vRe[tid] += vRe[tid + 1];
    vIm[tid] += vIm[tid + 1];
}

// Propagate from the SLM to the spot positions using Fresnel summation
__global__ void propagateToSpotPositions(// Hologram information
                                         const float * const hologramPhase,    // hologram's phase
                                         const int slmWidth,
                                         const int slmHeight,
                                         // Spot information
                                         float * const spotRe,                 // real component of spot states
                                         float * const spotIm)                 // imaginary component of spot states
{
    __shared__ float vRe[BLOCK_SIZE];
    __shared__ float vIm[BLOCK_SIZE];

    const int numPixels = slmWidth * slmHeight;
    int pixelIdx = blockIdx.x * BLOCK_SIZE * BLOCK_STRIDE + threadIdx.x;
    int channelOffset = numPixels * blockIdx.z;
    float spotx = d_spotX[blockIdx.y];
    float spoty = d_spotY[blockIdx.y];
    float spotz = d_spotZ[blockIdx.y];
    int tid = threadIdx.x;
    vRe[tid] = 0.0f;
    vIm[tid] = 0.0f;

    for (int i = 0; i < BLOCK_STRIDE; ++i){
        // calculate normalized [-0.5, 0.5] pixel coordinate
        int coordX = pixelIdx % slmWidth;
        int coordY = pixelIdx / slmWidth;
        float normalX = normalizeCoordinate(coordX, slmWidth);
        float normalY = normalizeCoordinate(coordY, slmHeight);
        float pixelPhase = hologramPhase[pixelIdx + channelOffset] - computePhase(normalX, normalY, spotx, spoty, spotz);
        int validPixel = pixelIdx < numPixels;
        vRe[tid] += cosf(pixelPhase) * validPixel;
        vIm[tid] += sinf(pixelPhase) * validPixel;
        pixelIdx += BLOCK_SIZE;
    }
    if (BLOCK_SIZE > 1024){
        __syncthreads();
        if (tid < 1024){
            vRe[tid] += vRe[tid + 1024];
            vIm[tid] += vIm[tid + 1024];
        }
    }
    if (BLOCK_SIZE > 512){
        __syncthreads();
        if (tid < 512){
            vRe[tid] += vRe[tid + 512];
            vIm[tid] += vIm[tid + 512];
        }
    }
    if (BLOCK_SIZE > 256){
        __syncthreads();
        if (tid < 256) {
            vRe[tid] += vRe[tid + 256];
            vIm[tid] += vIm[tid + 256];
        }
    }

    __syncthreads();
    if (tid < 128) {
        vRe[tid] += vRe[tid + 128];
        vIm[tid] += vIm[tid + 128];
    }
    __syncthreads();
    if (tid < 64) {
        vRe[tid] += vRe[tid + 64];
        vIm[tid] += vIm[tid + 64];
    }
    __syncthreads();
    if (tid < 32)
        warpReduce(vRe, vIm, tid);

    // put back the local sum to global memory
    int localSumIdx = blockIdx.x + blockIdx.y * gridDim.x + blockIdx.z * gridDim.x * gridDim.y;
    if (tid == 0) {
        spotRe[localSumIdx] = vRe[0];
        spotIm[localSumIdx] = vIm[0];
    }
}

// Additional kernel to sum up local sums
__global__ void propagateToSpotSum(float* local_spotRe,
                                    float* local_spotIm,
                                    const int numLocalSumPerUnit,
                                    const int numSpots,
                                    float* spotRe,
                                    float* spotIm
                                    )
{
    __shared__ float temp_spotRe[BLOCK_SIZE];
    __shared__ float temp_spotIm[BLOCK_SIZE];
    const int gidx = blockIdx.x + blockIdx.y * numSpots;
    const int tid = threadIdx.x;
    int sumIdx = numLocalSumPerUnit * gidx + tid;
    const int sumIdxEnd = numLocalSumPerUnit * gidx + numLocalSumPerUnit;
    temp_spotRe[tid] = 0;
    temp_spotIm[tid] = 0;
    // sum into a BLOCK_SIZE array
    while (sumIdx < sumIdxEnd)
    {
        temp_spotRe[tid] += local_spotRe[sumIdx];
        temp_spotIm[tid] += local_spotIm[sumIdx];
        sumIdx += BLOCK_SIZE;
    }
    // Parrallel reduction
    if (BLOCK_SIZE > 1024){
        __syncthreads();
        if (tid < 1024){
            temp_spotRe[tid] += temp_spotRe[tid + 1024];
            temp_spotIm[tid] += temp_spotIm[tid + 1024];
        }
    }

    if (BLOCK_SIZE > 512){
        __syncthreads();
        if (tid < 512){
            temp_spotRe[tid] += temp_spotRe[tid + 512];
            temp_spotIm[tid] += temp_spotIm[tid + 512];
        }
    }
    if (BLOCK_SIZE > 256){
        __syncthreads();
        if (tid < 256) {
            temp_spotRe[tid] += temp_spotRe[tid + 256];
            temp_spotIm[tid] += temp_spotIm[tid + 256];
        }
    }
    __syncthreads();
    if (tid < 128) {
        temp_spotRe[tid] += temp_spotRe[tid + 128];
        temp_spotIm[tid] += temp_spotIm[tid + 128];
    }
    __syncthreads();
    if (tid < 64) {
        temp_spotRe[tid] += temp_spotRe[tid + 64];
        temp_spotIm[tid] += temp_spotIm[tid + 64];
    }
    __syncthreads();
    if (tid < 32)
        warpReduce(temp_spotRe, temp_spotIm, tid);

    if (tid == 0){
        spotRe[gidx] = temp_spotRe[0];
        spotIm[gidx] = temp_spotIm[0];
    }
};

// Obtain phases in SLM plane
__global__ void propagateToSLM(// Hologram information
                               unsigned char * const hologram,       // output hologram
                               float * const hologramPhase,          // current hologram phase
                               float * const prevHologramPhase,      // previous hologram phase, used for RPC
                               const unsigned int slmDim,            // SLM's dimension
                               const float slmPitch,                 // 1/slmDim
                               const unsigned int numPixels,         // number of pixels in SLM
                               const int iteration,                  // GSW iteration number
                               const bool lastIteration,             // true if last iteration of GSW
                               // Spot information
                               const float * const spotDesiredAmp,   // desired amplitudes of spots
                               const float * const spotRe,           // real component of spot states
                               const float * const spotIm,           // imaginary component of spot states
                               float * const spotWeight,             // spot weights
                               float * const spotI,                  // intermediate spot intensities (debug)
                               const bool saveSpotI,                 // if true, spot intensities are saved to global memory (debug)
                               const unsigned int numSpots,          // number of spots
                               // Correction information
                               const bool useAC,                     // use aberration correction
                               const float * const aberrationCoeffs, // correction coefficients
                               const bool useSVPR,                   // use spatially varying phase response
                               const int numPolCoeffs,               // number of polynomial coefficients
                               const float * const polCoeffs,        // polynomial coefficients
                               const bool useLUT,                    // use LUT for phase-to-uc conversion
                               const unsigned char * const lut,      // LUT for phase-to-uc conversion
                               const bool useRPC,                    // use restricted phase change
                               const float alpha)                    // RPC threshold
{
    __shared__ float spotAMean;
    __shared__ float spotP[NUM_SPOTS];
    __shared__ float spotA[NUM_SPOTS];
    __shared__ float spotW[NUM_SPOTS];

    const int idx = blockIdx.x * blockDim.x + threadIdx.x;
    const int tid = threadIdx.x;
    const int channelSpotOffset = numSpots * blockIdx.y;
    const int channelPixelOffset = numPixels * blockIdx.y;

    float pixelRe = 0.0f;
    float pixelIm = 0.0f;
    float pixelPhase = 0.0f;

    if (idx < numPixels) {
        // Load spot phases, amplitudes, and weights
        // FIXME: would be faster on CPU?
        if (tid < numSpots) {
            float re = spotRe[tid + channelSpotOffset];
            float im = spotIm[tid + channelSpotOffset];
            spotP[tid] = atan2f(im, re);
            spotA[tid] = hypotf(re, im)/spotDesiredAmp[tid];
            if (iteration != 0) {
                spotW[tid] = spotWeight[tid + iteration*numSpots];
            } else {
                spotA[tid] = (spotA[tid] < 0.5f) ? 0.5f : spotA[tid];
                spotW[tid] = spotDesiredAmp[tid];
            }
        }
        __syncthreads();

        // Compute mean spot amplitude
        // FIXME: parallel reduction?
        if (tid == 0) {
            float sum = 0.0f;
            for (int i = 0; i < numSpots; i++) {
                sum += spotA[i];
            }
            spotAMean = sum/((float) numSpots);
        }
        __syncthreads();

        // Update spot weights
        if (tid < numSpots) {
            spotW[tid] = spotW[tid] * spotAMean / spotA[tid];

            // Copy weights to use as initial value in next run
            if (!lastIteration)
                spotWeight[tid + numSpots*(iteration + 1)] = spotW[tid];

            // May be excluded, used for monitoring only
            if (saveSpotI)
                spotI[tid + numSpots*iteration] = spotA[tid]*spotA[tid];
        }
        __syncthreads();

        int xIdx = getXIdx(idx, slmDim);
        int yIdx = getYIdx(idx, xIdx, slmPitch);
        float x = getPixelCoords(xIdx, slmDim, slmPitch);
        float y = getPixelCoords(yIdx, slmDim, slmPitch);

        // Compute the pixel's phase by summing contributions from all spots
        for (int i = 0; i < numSpots; i++) {
            float delta = computePhase(x, y, d_spotX[i], d_spotY[i], d_spotZ[i]);
            pixelRe += spotW[i] * cosf(spotP[i] + delta);
            pixelIm += spotW[i] * sinf(spotP[i] + delta);
        }

        pixelPhase = atan2f(pixelIm, pixelRe);
        if (useRPC) {
            float prevPhase = prevHologramPhase[idx + channelPixelOffset];
            if (fabs(pixelPhase - prevPhase) > alpha)
                pixelPhase = prevPhase;

            if (lastIteration)
                prevHologramPhase[idx + channelPixelOffset] = pixelPhase;
        }

        // This is the last iteration, compute and write the final hologram phases to global memory
        if (lastIteration) {
            if (useAC)
                pixelPhase = applyAberrationCorrection(pixelPhase, aberrationCoeffs[idx]);

            if (useSVPR) {
                __shared__ float coeff[MAX_POL];
                if (tid < numPolCoeffs)
                    coeff[tid] = polCoeffs[tid];
                __syncthreads();

                hologram[idx + channelPixelOffset] = applySVPR(pixelPhase, x, y, coeff, numPolCoeffs);
            } else if (useLUT) {
                __shared__ unsigned char lut_t[MAX_UCHAR];
                if (tid < MAX_UCHAR)
                    lut_t[tid] = lut[tid];
                __syncthreads();

                hologram[idx + channelPixelOffset] = lut_t[phase2int(pixelPhase)];
            } else {
                hologram[idx + channelPixelOffset] = phase2uc(pixelPhase);
            }
        } else {
            // Otherwise, write intermediate phases to global memory
            hologramPhase[idx + channelPixelOffset] = pixelPhase;
        }
    }
}

// Custom debug functions
inline void mSafeCall(cudaError_t status, int line, const char *file)
{
#ifdef M_CUDA_DEBUG
    do {
        if (status != cudaSuccess) {
            char CUDAmessage[200] = "CUDA says: ";
            strcat(CUDAmessage, cudaGetErrorString(status));
            sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
            printf("%s", CUDAmessage);
            exit(-1);
        }
        cudaDeviceSynchronize();
        status = cudaGetLastError();
        if(status!=cudaSuccess) {
            char CUDAmessage[200] = "CUDA failed after sychronization:\n";
            strcat(CUDAmessage, cudaGetErrorString(status));
            sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
            printf("%s", CUDAmessage);
            exit(-1);
        }
    } while (0);
#endif
    return;
}

inline void mCheckError(int line, const char *file)
{
#ifdef M_CUDA_DEBUG
    do
    {
        cudaError_t status = cudaGetLastError();
        if(status!=cudaSuccess)
        {
            char CUDAmessage[200] = "CUDA says: ";
            strcat(CUDAmessage, cudaGetErrorString(status));
            sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
            printf("%s", CUDAmessage);
            exit(-1);
        }
        cudaDeviceSynchronize();
        status = cudaGetLastError();
        if(status!=cudaSuccess)
        {
            char CUDAmessage[200] = "CUDA failed after sychronization:\n";
            strcat(CUDAmessage, cudaGetErrorString(status));
            sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
            printf("%s", CUDAmessage);
            exit(-1);
        }
    }while(0);
#endif
    return;
}

inline void mDisplayDataF(float *d_data, int length, int line)
{
#ifdef M_CUDA_DEBUG
    do
    {
        int maxlength = 50;
        float *h_data;
        length = (length<=maxlength) ? length : maxlength;
        char MessageString[1000];
        h_data = (float*)malloc(length * sizeof (float));
        M_SAFE_CALL(cudaMemcpy(h_data, d_data, length*sizeof(float), cudaMemcpyDeviceToHost));
        sprintf(MessageString,  "Line: %d\nData: ", line);
        for (int ii = 0;ii<length;++ii)
        {
            sprintf(MessageString,  "%s %f", MessageString, h_data[ii]);
        }
        printf("%s", MessageString);
        free(h_data);
    }while(0);
#endif
    return;
}

inline void mDisplayDataUC(unsigned char *d_data, int length, int line)
{
#ifdef M_CUDA_DEBUG
    do
    {
        int maxlength = 50;
        unsigned char *h_data;
        length = (length<=maxlength) ? length : maxlength;
        char MessageString[1000];
        h_data = (unsigned char*)malloc(length * sizeof (unsigned char));
        M_SAFE_CALL(cudaMemcpy(h_data, d_data, length*sizeof(unsigned char), cudaMemcpyDeviceToHost));
        sprintf(MessageString,  "Line: %d\nData: ", line);
        for (int ii = 0;ii<length;++ii)
        {
            sprintf(MessageString,  "%s %hhu", MessageString, h_data[ii]);
        }
        printf("%s", MessageString);
        free(h_data);
    }while(0);
#endif
    return;
}

inline void mDisplayDataI(int *d_data, int length, int line)
{
#ifdef M_CUDA_DEBUG
    do
    {
        int maxlength = 50;
        int *h_data;
        length = (length<=maxlength) ? length : maxlength;
        char MessageString[1000];
        h_data = (int*)malloc(length * sizeof (int));
        M_SAFE_CALL(cudaMemcpy(h_data, d_data, length*sizeof(int), cudaMemcpyDeviceToHost));
        sprintf(MessageString,  "Line: %d\nData: ", line);
        for (int ii = 0;ii<length;++ii)
        {
            sprintf(MessageString,  "%s %d", MessageString, h_data[ii]);
        }
        printf("%s", MessageString);
        free(h_data);
    }while(0);
#endif
    return;
}

/******************************* Host functions *******************************/

// Timing
double getClock() {
    struct timeval tv;
    int ok;
    ok = gettimeofday(&tv, NULL);
    if (ok < 0) {
        printf("gettimeofday error");
    }
    return (tv.tv_sec * 1.0 + tv.tv_usec * 1.0E-6);
}

// Allocate GPU memory and parameters
int setup(const float * const initPhases,       // initial pixel phases
          const float * const aberrationCoeffs, // aberration correction matrix
          const float * const polCoeffs,        // SVPR polynomial coefficients
          const unsigned char * const lut)      // phase-to-uc conversion LUT
{
    // Make sure there's a GPU that we can use
    int deviceCount = 0;
    if (cudaGetDeviceCount(&deviceCount) != 0) {
        printf("No CUDA compatible GPU found\n");
        exit(1);
    } else {
        M_SAFE_CALL(cudaSetDevice(0));
    }

    /*** Hologram ***/
    hologramMemSize = numPixels * sizeof(unsigned char) * NUM_CHANNELS;
    const unsigned int hologramPhaseMemSize = numPixels * sizeof(float) * NUM_CHANNELS;
    M_SAFE_CALL(cudaMalloc((void **) &d_hologram, hologramMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_hologramPhase, hologramPhaseMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_prevHologramPhase, hologramPhaseMemSize));
    M_SAFE_CALL(cudaMemcpy(d_hologramPhase, initPhases, hologramPhaseMemSize, cudaMemcpyHostToDevice));
    M_SAFE_CALL(cudaMemcpy(d_prevHologramPhase, initPhases, hologramPhaseMemSize, cudaMemcpyHostToDevice));

    /*** Spots ***/
    const unsigned int spotMemSize = numSpots * sizeof(float);
    // local spot values for each thread block
    M_SAFE_CALL(cudaMalloc((void **) &d_local_spotRe, numLocalSum * sizeof(float)));
    M_SAFE_CALL(cudaMalloc((void **) &d_local_spotIm, numLocalSum * sizeof(float)));
    // final spot values
    weightMemSize = numSpots * numIterations * sizeof(float);
    M_SAFE_CALL(cudaMalloc((void **) &d_desiredAmp, NUM_CHANNELS * spotMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_spotRe, NUM_CHANNELS * spotMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_spotIm, NUM_CHANNELS * spotMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_weights, NUM_CHANNELS * weightMemSize));
    M_SAFE_CALL(cudaMalloc((void **) &d_obtainedI, NUM_CHANNELS * weightMemSize));

    /*** Corrections ***/
    // Aberration correction
    if (useAC) {
        cudaMalloc((void **) &d_aberrationCoeffs, hologramPhaseMemSize);
        M_SAFE_CALL(cudaMemcpy(d_aberrationCoeffs, aberrationCoeffs, hologramPhaseMemSize, cudaMemcpyHostToDevice));
    }

    // SVPR
    if (useSVPR) {
        int numCoeff[5] = {20, 35, 56, 84, 120};
        if ((3 <= polOrder) && (polOrder <= 7)) {
            numPolCoeffs = numCoeff[polOrder - 3];
        } else {
            printf("Polynomial order out of range. Coerced to 3.\n");
            numPolCoeffs = numCoeff[0];
        }

        cudaMalloc((void **) &d_polCoeffs, numPolCoeffs * sizeof(float));
        M_SAFE_CALL(cudaMemcpy(d_polCoeffs, polCoeffs, numPolCoeffs * sizeof(float), cudaMemcpyHostToDevice));
    }

    // LUT
    if (useLUT && !useSVPR) {
        cudaMalloc((void **) &d_lut, MAX_UCHAR * sizeof(unsigned char));
        M_SAFE_CALL(cudaMemcpy(d_lut, lut, MAX_UCHAR * sizeof(unsigned char), cudaMemcpyHostToDevice));
    }
    // RPC
    if (useRPC && alpha < (2.0f * M_PI))
        useRPC = true;
    else
        useRPC = false;
    status = cudaGetLastError();
    return status;
}

// Free GPU memory
int finish()
{
    /*** Hologram ***/
    M_SAFE_CALL(cudaFree(d_hologram));
    M_SAFE_CALL(cudaFree(d_hologramPhase));
    M_SAFE_CALL(cudaFree(d_prevHologramPhase));
    /*** Spots ***/
    M_SAFE_CALL(cudaFree(d_local_spotRe));
    M_SAFE_CALL(cudaFree(d_local_spotIm));
    M_SAFE_CALL(cudaFree(d_desiredAmp));
    M_SAFE_CALL(cudaFree(d_spotRe));
    M_SAFE_CALL(cudaFree(d_spotIm));
    M_SAFE_CALL(cudaFree(d_weights));
    M_SAFE_CALL(cudaFree(d_obtainedI));
    if (useAC) {
        M_SAFE_CALL(cudaFree(d_aberrationCoeffs));
    }
    if (useSVPR) {
        M_SAFE_CALL(cudaFree(d_polCoeffs));
    }
    if (useLUT) {
        M_SAFE_CALL(cudaFree(d_lut));
    }
    cudaDeviceReset();
    status = cudaGetLastError();
    return status;
}

// Generate a hologram
int generateHologram(unsigned char * const hologram, // hologram to send to SLM
                     const float * const spotX,      // x coordinates of spots/traps
                     const float * const spotY,      // y coordinates of spots/traps
                     const float * const spotZ,      // z coordinates of spots/traps
                     const float * const spotI,      // relative intensities of spots/traps
                     const int numSpots,             // number of spots/traps
                     const int numIterations,        // number of iterations to run GSW
                     float * const interAmps)        // intermediate amplitudes (debug)
{
    computeAndCopySpotData(spotX, spotY, spotZ, spotI, numSpots);
    double t;
    dim3 toSpotGridDim(ceil(1.0 * NUM_PIXELS/(BLOCK_SIZE * BLOCK_STRIDE)), numSpots, NUM_CHANNELS);
    dim3 toSpotBlockDim(BLOCK_SIZE, 1, 1);
    dim3 toSpotSumGridDim(numSpots, NUM_CHANNELS, 1);
    dim3 toSpotSumBlockDim(BLOCK_SIZE, 1, 1);
    dim3 toSLMGridDim(ceil(1.0 * numPixels/BLOCK_SIZE), NUM_CHANNELS, 1);
    dim3 toSLMBlockDim(BLOCK_SIZE, 1, 1);

    //printf("Starting Fresnel...\n");
    t = getClock();

    for (int l = 0; l < numIterations; l++) {
        //printf("Iteration %d\n", l);
        propagateToSpotPositions<<<toSpotGridDim, toSpotBlockDim>>>(d_hologramPhase,
                                                                    slmWidth,
                                                                    slmHeight,
                                                                    d_local_spotRe,
                                                                    d_local_spotIm);
        M_CHECK_ERROR();
        cudaDeviceSynchronize();
        // Second level parallel reduction
        propagateToSpotSum<<<toSpotSumGridDim, toSpotSumBlockDim>>>(d_local_spotRe,
                                                                    d_local_spotIm,
                                                                    numLocalSumPerUnit,
                                                                    numSpots,
                                                                    d_spotRe,
                                                                    d_spotIm);
        M_CHECK_ERROR();
        cudaDeviceSynchronize();

        propagateToSLM<<<toSLMGridDim, toSLMBlockDim>>>(d_hologram,
                                                        d_hologramPhase,
                                                        d_prevHologramPhase,
                                                        slmWidth,
                                                        slmPitch,
                                                        numPixels,
                                                        l,
                                                        (l == (numIterations - 1)),
                                                        d_desiredAmp,
                                                        d_spotRe,
                                                        d_spotIm,
                                                        d_weights,
                                                        d_obtainedI,
                                                        saveSpotI,
                                                        numSpots,
                                                        useAC,
                                                        d_aberrationCoeffs,
                                                        useSVPR,
                                                        numPolCoeffs,
                                                        d_polCoeffs,
                                                        useLUT,
                                                        d_lut,
                                                        useRPC,
                                                        alpha);
        M_CHECK_ERROR();
        cudaDeviceSynchronize();
    }

    // if (saveSpotI)
    //     M_SAFE_CALL(cudaMemcpy(interAmps, d_obtainedI, weightMemSize, cudaMemcpyDeviceToHost));
    // else
    //     M_SAFE_CALL(cudaMemcpy(interAmps, d_weights, weightMemSize, cudaMemcpyDeviceToHost));
    M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, hologramMemSize, cudaMemcpyDeviceToHost));
    t = getClock() - t;
    //printf("Total time = %12.8lf seconds\n", t);
    //printf("Time/iteration = %12.8lf seconds\n", t/((double) numIterations));
    // printf("%12.8lf\n", t);
    // Handle CUDA errors
    status = cudaGetLastError();
    return status;
}

void computeAndCopySpotData(const float * const x,
                            const float * const y,
                            const float * const z,
                            const float * const intensity,
                            const int n)
{
    // An alternate way is to use sum instead of 100 in the formula below, but
    // I'm not sure what the difference is
    /*
    float sum = 0.0f;
    for (int i = 0; i < n; i++)
        sum += intensity[i];
    */
    const float slmDimf = (float) slmWidth;
    float *desiredAmp = (float *) malloc(n * sizeof(float));

    for (int i = 0; i < n; i++) {
        float sincxRec = (x[i] == 0) ? 1.0f : ((M_PI * x[i]/slmDimf) / sinf(M_PI * x[i]/slmDimf));
        float sincyRec = (y[i] == 0) ? 1.0f : ((M_PI * y[i]/slmDimf) / sinf(M_PI * y[i]/slmDimf));
        desiredAmp[i] = (intensity[i] <= 0.0f) ? 1.0f : (sincxRec * sincyRec * sqrtf(intensity[i]/100) * slmDimf * slmDimf);
    }

    cudaMemcpyToSymbol(d_spotX, x, numSpots * sizeof(float));
    cudaMemcpyToSymbol(d_spotY, y, numSpots * sizeof(float));
    cudaMemcpyToSymbol(d_spotZ, z, numSpots * sizeof(float));
    cudaMemcpy(d_desiredAmp, desiredAmp, n * sizeof(float), cudaMemcpyHostToDevice);
    free(desiredAmp);
}

unsigned char *hologram = (unsigned char *) malloc(numPixels * NUM_CHANNELS * sizeof(unsigned char));
float *amps = (float *) malloc(numSpots * numIterations * NUM_CHANNELS * sizeof(float));
float * const initPhases = (float *) malloc(numPixels * NUM_CHANNELS * sizeof(float)); // [-pi, pi];
float * const polCoeffs = (float *) malloc(MAX_POL * sizeof(float));

bool HLG_initailize()
{
    cudaSetDevice(0);
    cudaSetDeviceFlags(cudaDeviceScheduleBlockingSync);
    double t = getClock();
    srand(1);
    // Correction parameters
    saveSpotI = false;
    useAC = false;
    const float * const aberrationCoeffs = NULL;
    useSVPR = true;
    polOrder = 5;
    for (int i = 0; i < MAX_POL; i++) {
        polCoeffs[i] = 0.0f;
    }
    useLUT = false;
    const unsigned char * const lut = NULL;
    useRPC = false;
    alpha = 2.0f * M_PI * 0.123f;
#ifdef M_CORE_DEBUG
    FILE *savedPhase = fopen("my_init_hologram.dat", "r");
    for (int i = 0; i < numPixels * NUM_CHANNELS; i++) {
        fscanf(savedPhase, "%hhu\n", &hologram[i]);
    }
    fclose(savedPhase);
#else
    for (int i = 0; i < numPixels * NUM_CHANNELS; i++) {
        hologram[i] = random() % 256;
        initPhases[i] = (2.0 * M_PI * (random() / ((float) RAND_MAX))) - M_PI;
    }
#endif

    if (setup(initPhases, aberrationCoeffs, polCoeffs, lut) != 0) {
        printf("Init failed.\n");
        exit(1);
    }

#ifdef M_CORE_DEBUG
    // Save initial hologram
    FILE *ifile = fopen("my_init_hologram.dat", "w");
    for (int i = 0; i < numPixels; i++) {
        fprintf(ifile, "%hhu\n", hologram[i]);
    }
    fclose(ifile);
#endif

    t = getClock() - t;
    //printf("Setup time = %12.8lf seconds\n", t);

    return true;
}

bool HLG_process(){
    // Randomize depth planes
    float x[NUM_SPOTS];
    float y[NUM_SPOTS];
    float z[NUM_SPOTS];
    float I[NUM_SPOTS];
    for (int spotIdx = 0; spotIdx < NUM_SPOTS; ++spotIdx){
        x[spotIdx] = (float)(random() & (0xFF)) - 128.0f;
        y[spotIdx] = (float)(random() & (0xFF)) - 128.0f;
        z[spotIdx] = (float)(random() & (0xFF)) - 128.0f;
        I[spotIdx] = (float)(random() & (0xFF)) / 256.0f;
    }
    if (generateHologram(hologram, x, y, z, I, numSpots, numIterations, amps) != 0) {
        printf("Computation failed.\n");
        return false;
    }
    return true;
}

bool HLG_cleanup(){
    if (finish() != 0) {
        printf("Cleanup failed.\n");
        return false;
    }

#ifdef M_CORE_DEBUG
    // Save hologram
    FILE *hfile = fopen("new_output_hologram.dat", "w");
    for (int i = 0; i < numPixels; i++) {
        fprintf(hfile, "%hhu\n", hologram[i]);
    }

    // Save amplitudes
    FILE *afile = fopen("new_amps.dat", "w");
    for (int i = 0; i < numSpots * numIterations; i++) {
        fprintf(afile, "%f\n", amps[i]);
    }
    fclose(hfile);
    fclose(afile);
#endif
    free(polCoeffs);
    free(hologram);
    free(initPhases);
    free(amps);

    return true;
}
