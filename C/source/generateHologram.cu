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

// Includes
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>
#include <cufft.h>

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

// Number of spots/traps/depth planes - even 64 is pushing it
#define MAX_SPOTS 64

// FIXME: This shouldn't be hardcoded
#define SLM_SIZE 512

// Use bitwise modulo operations if the SLM size is a power of 2
#if (((SLM_SIZE - 1) & (SLM_SIZE)) == 0)
#define SLMPOW2
#endif

#define BLOCK_SIZE 256
#define MAX_POL 120
#define MAX_UCHAR 256

// Forward declaration
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
inline void mSafeCall(cudaError_t status, int line, char *file);
inline void mCheckError(int line, char *file);
inline void mDisplayDataF(float *d_data, int length, int line);
inline void mDisplayDataUC(unsigned char *d_data, int length, int line);
inline void mDisplayDataI(int *d_data, int length, int line);

// Global declaration
float *d_x, *d_y, *d_z, *d_I;         //trap coordinates and intensity in GPU memory
float *d_pSLM_f;                //the optimized pSpot pattern, float [-pi, pi]
float *d_weights, *d_Iobtained, *d_desiredAmp;    //used h_weights and calculated amplitudes for each spot and each iteration
float *d_pSLMstart_f;             //Initial pSpot pattern [-pi, pi]
float *d_spotRe_f, *d_spotIm_f;
float *d_AberrationCorr_f = NULL;
float *d_LUTPolCoeff_f = NULL;
float SLMsizef = (float) SLM_SIZE;
int N_PolLUTCoeff = 0;
int n_blocks_Phi, memsize_SLM_f, memsize_SLMuc, memsize_spotsf, data_w, N_pixels;
float h_desiredAmp[MAX_SPOTS];
unsigned char *d_hologram;           //The optimized pSpot pattern, unsigned char, the one sent to the SLM [0, 255]
unsigned char *d_LUT_uc = NULL;
bool ApplyLUT_b = false, UseAberrationCorr_b = false, UsePolLUT_b = false, saveI_b = false, useRPC_b = false;
float alphaRPC_f = 10;
char CUDAmessage[100];
cudaError_t status;
float *d_obtainedPhase;

// Constant memory declarations
__device__ __constant__ int c_data_w[1];
__device__ __constant__ float c_data_w_f[1];
__device__ __constant__ float c_half_w_f[1];
__device__ __constant__ int c_N_pixels[1];
__device__ __constant__ float c_N_pixels_f[1];
__device__ __constant__ float c_SLMpitch_f[1];
__device__ __constant__ bool c_applyLUT_b[1];
__device__ __constant__ bool c_useAberrationCorr_b[1];
__device__ __constant__ bool c_usePolLUT_b[1];
__device__ __constant__ int c_N_PolLUTCoeff[1];
__device__ __constant__ bool c_useRPC_b[1];
__device__ __constant__ float c_alphaRPC_f[1];
__device__ __constant__ bool c_saveI_b[1];
__device__ __constant__ int c_log2data_w[1];
__device__ __constant__ float c_x[MAX_SPOTS];
__device__ __constant__ float c_y[MAX_SPOTS];
__device__ __constant__ float c_z[MAX_SPOTS];
__device__ __constant__ float c_desiredAmp[MAX_SPOTS];
__device__ __constant__ int c_N_spots[1];

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
  pSpot = pSpot - correction; // Apply correction
  return (pSpot - (2.0f * M_PI) * floor((pSpot + M_PI) / (2.0f * M_PI))); // Apply mod([-pi, pi], pSpot)
}

// Get x coordinate from global thread ID
__device__ inline int getXIdx(const int index, const int slmDim)
{
#ifdef SLMPOW2
  int idx = index & (slmDim - 1);
#else
  int idx = index % slmDim;
#endif
  return idx;
}

// Get y coordinate from global thread ID and x coordinate
__device__ inline int getYIdx(const int index, const int xIdx, const int slmDim, const float slmPitch)
{
#ifdef SLMPOW2
  int idx = (index - xIdx) >> c_log2data_w[0]; // FIXME
#else
  int idx = floor(((float) (index - xIdx)) * slmPitch);
#endif
  return idx;
}

// Get pixel coordinates in [-0.5, 0.5]
__device__ inline float getPixelCoords(const int index, const int slmDim, const float slmPitch)
{
  return (((float) (index - (slmDim << 1))) * slmPitch);
}

// Compute phase from pixel position and spot position
__device__ inline float computePhase(const float x,
                                     const float y,
                                     const float spotx,
                                     const float spoty,
                                     const float spotz)
{
  return (M_PI * (spotz * (x*x + y*y) + 2.0f * (x*spotx + y*spoty)));
}

// Apply SVPR
__device__ unsigned char applySVPR(float phase, float x, float y, float *coeff)
{
  float result = 0.0f;
  switch (c_N_PolLUTCoeff[0]) {
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

// Apply corrections to precalculated hologram
__global__ void applyCorrections(unsigned char * const hologram,       // hologram to use
                                 const unsigned int slmDim,            // SLM's dimension
                                 const float slmPitch,                 // 1/slmDim
                                 const bool useAC,                     // use aberration correction
                                 const float * const aberrationCoeffs, // correction coefficients
                                 const bool useSVPR,                   // use spatially varying phase response
                                 const int numPolCoeffs,               // polynomial order for phase correction
                                 const float * const polCoeffs,        // polynomial coefficients
                                 const bool useLUT,                    // use LUT for phase-to-uc conversion
                                 const unsigned char * const lut)      // LUT for phase-to-uc conversion
{
  const int tid = threadIdx.x;
  const int idx = blockIdx.x * blockDim.x + threadIdx.x;

  float phase = uc2phase(hologram[idx]);
  if (useAC)
    phase = applyAberrationCorrection(phase, aberrationCoeffs[idx]);

  if (useSVPR) {
    int xIdx = getXIdx(idx, slmDim);
    int yIdx = getYIdx(idx, xIdx, slmDim, slmPitch);
    float x = getPixelCoords(xIdx, slmDim, slmPitch);
    float y = getPixelCoords(yIdx, slmDim, slmPitch);

    __shared__ float coeff[MAX_POL];
    if (tid < numPolCoeffs)
      coeff[tid] = polCoeffs[tid];
    __syncthreads();

    hologram[idx] = applySVPR(phase, x, y, coeff);
  } else if (useLUT) {
    __shared__ unsigned char lut_t[MAX_UCHAR];
    if (tid < MAX_UCHAR)
      lut_t[tid] = lut[tid];
    __syncthreads();

    hologram[idx] = lut_t[phase2int(phase)];
  } else {
    hologram[idx] = phase2uc(phase);
  }
}

// Calculate hologram using "Lenses and Prisms"
__global__ void lensesAndPrisms(unsigned char * const hologram,       // hologram to use
                                const unsigned int slmDim,            // SLM's dimension
                                const float slmPitch,                 // 1/slmDim
                                const unsigned int numPixels,         // number of pixels in SLM
                                const float * const spotX,            // x coordinates of spots/traps
                                const float * const spotY,            // y coordinates of spots/traps
                                const float * const spotZ,            // z coordinates of spots/traps
                                const float * const spotI,            // relative intensities of spots/traps
                                const unsigned int numSpots,          // number of spots/traps
                                const bool useAC,                     // use aberration correction
                                const float * const aberrationCoeffs, // correction coefficients
                                const bool useSVPR,                   // use spatially varying phase response
                                const int numPolCoeffs,               // polynomial order for phase correction
                                const float * const polCoeffs,        // polynomial coefficients
                                const bool useLUT,                    // use LUT for phase-to-uc conversion
                                const unsigned char * const lut)      // LUT for phase-to-uc conversion
{
  const int idx = blockIdx.x * blockDim.x + threadIdx.x;
  const int tid = threadIdx.x;

  if (idx < numPixels) {
    int xIdx = getXIdx(idx, slmDim);
    int yIdx = getYIdx(idx, xIdx, slmDim, slmPitch);
    float x = getPixelCoords(xIdx, slmDim, slmPitch);
    float y = getPixelCoords(yIdx, slmDim, slmPitch);

    float phase;
    float re = 0.0f;
    float im = 0.0f;

    for (int i = 0; i < numSpots; i++) {
      // Add variable phases to function call
      phase = computePhase(x, y, spotX[i], spotY[i], spotZ[i]);
      re += spotI[i] * cosf(phase);
      im += spotI[i] * sinf(phase);
    }

    phase = atan2f(im, re); // [-pi, pi]
    if (useAC)
      phase = applyAberrationCorrection(phase, aberrationCoeffs[idx]);

    if (useSVPR) {
      __shared__ float coeff[MAX_POL];
      if (tid < numPolCoeffs)
        coeff[tid] = polCoeffs[tid];
      __syncthreads();

      hologram[idx] = applySVPR(phase, x, y, coeff);
    } else if (useLUT) {
      __shared__ unsigned char lut_t[MAX_UCHAR];
      if (tid < MAX_UCHAR)
        lut_t[tid] = lut[tid];
      __syncthreads();

      hologram[idx] = lut_t[phase2int(phase)];
    } else {
      hologram[idx] = phase2uc(phase);
    }
  }
}

__global__ void calculateI(const unsigned char * const hologram, // hologram to use
                           const unsigned int slmDim,            // SLM's dimension
                           const float slmPitch,                 // 1/slmDim
                           const unsigned int numPixels,         // number of pixels in SLM
                           const float * const spotX,            // x coordinates of spots/traps
                           const float * const spotY,            // y coordinates of spots/traps
                           const float * const spotZ,            // z coordinates of spots/traps
                           float * const intensity)              // spot intensity
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  float x = getPixelCoords(tid, slmDim, slmPitch);
  float y = -0.5f; // (0 - slmDim/2) / slmDim

  float phase;
  int i = tid;
  while (i < numPixels) {
    phase = uc2phase(hologram[i]) - computePhase(x, y, spotX[spotNumber], spotY[spotNumber], spotZ[spotNumber]);

    vRe[tid] += cosf(phase);
    vIm[tid] += sinf(phase);

    i += blockSize;
    y += slmPitch;
  }
  __syncthreads();

  if ((tid < 256) && (SLM_SIZE > 256)) {
    vRe[tid] += vRe[tid + 256];
    vIm[tid] += vIm[tid + 256];
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

  if (tid == 0) {
    float re = vRe[0]/numPixels;
    float im = vIm[0]/numPixels;
    intensity[spotNumber] = re*re + im*im;
  }
}

__global__ void calculateIAndPhase(const unsigned char * const hologram, // hologram to use
                                   const unsigned int slmDim,            // SLM's dimension
                                   const float slmPitch,                 // 1/slmDim
                                   const unsigned int numPixels,         // number of pixels in SLM
                                   const float * const spotX,            // x coordinates of spots/traps
                                   const float * const spotY,            // y coordinates of spots/traps
                                   const float * const spotZ,            // z coordinates of spots/traps
                                   float * const intensity,              // spot intensity
                                   float * const phase)                  // spot phase
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  float x = getPixelCoords(tid, slmDim, slmPitch);
  float y = -0.5f; // (0 - slmDim/2) / slmDim

  float p;
  int i = tid;
  while (i < numPixels) {
    p = uc2phase(hologram[i]) - computePhase(x, y, spotX[spotNumber], spotY[spotNumber], spotZ[spotNumber]);
    p += 2.0f * M_PI * spotZ[spotNumber];

    vRe[tid] += cosf(p);
    vIm[tid] += sinf(p);

    i += blockSize;
    y += slmPitch;
  }
  __syncthreads();

  if ((tid < 256) && (SLM_SIZE > 256)) {
    vRe[tid] += vRe[tid + 256];
    vIm[tid] += vIm[tid + 256];
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

  if (tid == 0) {
    float re = vRe[0]/numPixels;
    float im = vIm[0]/numPixels;
    intensity[spotNumber] = re*re + im*im;
    phase[spotNumber] = atan2f(im, re);
  }
}

// Propagate from the SLM to the spot positions using Fresnel summation
// FIXME: Works only for blocksize = SLMsize
__global__ void propagateToSpotPositions(const float * const phase,    // hologram's phase
                                         const unsigned int slmDim,    // SLM's dimension
                                         const float slmPitch,         // 1/slmDim
                                         const unsigned int numPixels, // number of pixels in SLM
                                         const float * const spotX,    // x coordinates of spots/traps
                                         const float * const spotY,    // y coordinates of spots/traps
                                         const float * const spotZ,    // z coordinates of spots/traps
                                         float * const spotRe,         // real component of spot phase
                                         float * const spotIm)         // imaginary component of spot phase
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  float x = getPixelCoords(tid, slmDim, slmPitch);
  float y = -0.5f; // (0 - slmDim/2) / slmDim

  float p;
  int i = tid;
  while (i < numPixels) {
    p = phase[i] - computePhase(x, y, spotX[spotNumber], spotY[spotNumber], spotZ[spotNumber]);

    vRe[tid] += cosf(p);
    vIm[tid] += sinf(p);

    i += blockSize;
    y += slmPitch;
  }
  __syncthreads();

  if ((tid < 256) && (SLM_SIZE > 256)) {
    vRe[tid] += vRe[tid + 256];
    vIm[tid] += vIm[tid + 256];
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

  if (tid == 0) {
    spotRe[spotNumber] = vRe[0];
    spotIm[spotNumber] = vIm[0];
  }
}

// Obtain phases in SLM plane
__global__ void propagateToSLM(const float * const spotRe,
                               const float * const spotIm,
                               float * const phase,
                               float * const weights,
                               const int iteration,
                               float * const g_pSLMstart,
                               float * const g_Iobtained,
                               const bool lastIter,
                               const unsigned int numPixels,         // number of pixels in SLM
                               const float * const spotX,            // x coordinates of spots/traps
                               const float * const spotY,            // y coordinates of spots/traps
                               const float * const spotZ,            // z coordinates of spots/traps
                               const float * const spotI,            // relative intensities of spots/traps
                               const unsigned int numSpots,          // number of spots/traps
                               unsigned char * const hologram,       // output hologram
                               const unsigned int slmDim,            // SLM's dimension
                               const float slmPitch,                 // 1/slmDim
                               const bool useAC,                     // use aberration correction
                               const float * const aberrationCoeffs, // correction coefficients
                               const bool useSVPR,                   // use spatially varying phase response
                               const int numPolCoeffs,               // polynomial order for phase correction
                               const float * const polCoeffs,        // polynomial coefficients
                               const bool useLUT,                    // use LUT for phase-to-uc conversion
                               const unsigned char * const lut,      // LUT for phase-to-uc conversion
                               const bool useRPC,                    // use restricted phase change
                               const float alpha)                    // RPC threshold
{
  __shared__ float s_aSpot[MAX_SPOTS], s_aSpotsMean, s_weight[MAX_SPOTS], s_pSpot[MAX_SPOTS];
  const int idx = blockIdx.x * blockDim.x + threadIdx.x;
  const int tid = threadIdx.x;

  float re = 0.0f, im = 0.0f, p = 0.0f;

  if (idx < c_N_pixels[0]) {
    if (tid < c_N_spots[0]) {
      float spotRe_f = spotRe[tid];
      float spotIm_f = spotIm[tid];
      s_pSpot[tid] = atan2f(spotIm_f, spotRe_f);
      s_aSpot[tid] = hypotf(spotRe_f, spotIm_f)/c_desiredAmp[tid];
      if (iteration != 0) {
        s_weight[tid] = weights[tid + iteration*c_N_spots[0]];
      } else {
        s_aSpot[tid] = (s_aSpot[tid]<0.5f) ? 0.5f : s_aSpot[tid];
        s_weight[tid] = c_desiredAmp[tid];
      }
    }
    __syncthreads();

    //compute weights
    if (tid == 0) {
      float s_aSpot_sum = 0.0f;
      for (int jj = 0; jj < c_N_spots[0]; jj++) {
        s_aSpot_sum += s_aSpot[jj];
      }
      s_aSpotsMean = s_aSpot_sum / (float)c_N_spots[0];
    }
    __syncthreads();

    if (tid < c_N_spots[0]) {
      s_weight[tid] = s_weight[tid] * s_aSpotsMean / s_aSpot[tid];
      if (!lastIter)                      //Copy weights to use as initial value next run
        weights[tid + c_N_spots[0]*(iteration+1)] = s_weight[tid];
      //else
      //  weights[tid] = s_weight[tid];             //Transferring weights to next run may give diverging weights
      if (c_saveI_b[0])
        g_Iobtained[tid + c_N_spots[0]*iteration] = s_aSpot[tid]*s_aSpot[tid];      //may be excluded, used for monitoring only
    }
    __syncthreads();

    //get pixel coordinates
    int X_int = getXIdx(idx, 512);
    int Y_int = getYIdx(idx, X_int, 512, 1/512);
    float x = c_SLMpitch_f[0]*(X_int - c_half_w_f[0]);
    float y = c_SLMpitch_f[0]*(Y_int - c_half_w_f[0]);

    //compute SLM pSpot by summing contribution from all spots
    for (int k = 0; k < c_N_spots[0]; k++) {
      float delta = computePhase(x, y, spotX[k], spotY[k], spotZ[k]);
      re += s_weight[k] * cosf(s_pSpot[k] + delta);
      im += s_weight[k] * sinf(s_pSpot[k] + delta);
    }
    p = atan2f(im, re);

    if (useRPC) {
      float pSLMstart = g_pSLMstart[idx];
      if (fabs(p - pSLMstart) > alpha)
        p = pSLMstart;
      if (lastIter)
        g_pSLMstart[idx] = p;
    }

    // This is the last iteration, compute and write the final SLM phases to global memory
    if (lastIter) {
      if (useAC)
        p = applyAberrationCorrection(p, aberrationCoeffs[idx]);

      if (useSVPR) {
        __shared__ float coeff[MAX_POL];
        if (tid < numPolCoeffs)
          coeff[tid] = polCoeffs[tid];
        __syncthreads();

        hologram[idx] = applySVPR(p, x, y, coeff);
      } else if (useLUT) {
        __shared__ unsigned char lut_t[MAX_UCHAR];
        if (tid < MAX_UCHAR)
          lut_t[tid] = lut[tid];
        __syncthreads();

        hologram[idx] = lut_t[phase2int(p)];
      } else {
        hologram[idx] = phase2uc(p);
      }
    } else { // Otherwise, write intermediate phases to global memory
      phase[idx] = p;
    }
  }
}

// Convert from unsigned char [0, 255] to float [-pi, pi]
__global__ void uc2f(float *f, const unsigned char * const uc, int N)
{
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    f[idx] = uc[idx] * 2.0f * M_PI/256.0f - M_PI;
  }
}

// Custom debug functions
inline void mSafeCall(cudaError_t status, int line, char *file)
{
#ifdef M_CUDA_DEBUG
  do {
    if (status != cudaSuccess) {
      char CUDAmessage[200] = "CUDA says: ";
      strcat(CUDAmessage, cudaGetErrorString(status));
      sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
      printf("%s", CUDAmessage);
      if (status != CUFFT_SUCCESS)
        exit(-1);
    }
    cudaThreadSynchronize();
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

inline void mCufftSafeCall(cufftResult_t status, int line, char *file)
{
#ifdef M_CUDA_DEBUG
  if(status != CUFFT_SUCCESS)
  {
    char CUDAmessage[200] = "CUFFT error, CUDA says:\n ";
    switch (status) {
            case CUFFT_INVALID_PLAN:   strcat(CUDAmessage,"CUFFT_INVALID_PLAN\n");break;
            case CUFFT_ALLOC_FAILED:   strcat(CUDAmessage,"CUFFT_ALLOC_FAILED\n");break;
            case CUFFT_INVALID_TYPE:   strcat(CUDAmessage,"CUFFT_INVALID_TYPE\n");break;
            case CUFFT_INVALID_VALUE:  strcat(CUDAmessage,"CUFFT_INVALID_VALUE\n");break;
            case CUFFT_INTERNAL_ERROR: strcat(CUDAmessage,"CUFFT_INTERNAL_ERROR\n");break;
            case CUFFT_EXEC_FAILED:    strcat(CUDAmessage,"CUFFT_EXEC_FAILED\n");break;
            case CUFFT_SETUP_FAILED:   strcat(CUDAmessage,"CUFFT_SETUP_FAILED\n");break;
            case CUFFT_INVALID_SIZE:   strcat(CUDAmessage,"CUFFT_INVALID_SIZE\n");break;
            //case CUFFT_UNALIGNED_DATA: strcat(CUDAmessage,"CUFFT_UNALIGNED_DATA\n");break;
            default: strcat(CUDAmessage,"CUFFT Unknown error code\n");

    }
    sprintf(CUDAmessage,  "%son line: %d\nin file: %s", CUDAmessage, line, file);
    printf("%s", CUDAmessage);
    exit(-1);
  }
  cudaThreadSynchronize();
  cudaError_t status2 = cudaGetLastError();
  if(status2!=cudaSuccess)
  {
      char CUDAmessage[200] = "CUDA failed after sychronization:\n";
      strcat(CUDAmessage, cudaGetErrorString(status2));
      sprintf(CUDAmessage,  "%s\non line: %d\n", CUDAmessage, line);
      printf("%s", CUDAmessage);
      exit(-1);
  }
#endif
  return;
}
inline void mCheckError(int line, char *file)
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
    cudaThreadSynchronize();
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

inline void mDisplayDataCC(cufftComplex *d_data, int length, int line)
{
#ifdef M_CUDA_DEBUG
  do
  {
    int maxlength = 25;
    cufftComplex *h_data;
    length = (length<=maxlength) ? length : maxlength;
    char MessageString[1000];
    h_data = (cufftComplex*)malloc(length * sizeof (cufftComplex));
    M_SAFE_CALL(cudaMemcpy(h_data, d_data, length*sizeof(cufftComplex), cudaMemcpyDeviceToHost));
    sprintf(MessageString,  "Line: %d\nData: ", line);
    for (int ii = 0;ii<length;++ii)
    {
      sprintf(MessageString,  "%s re: %f im: %f", MessageString, h_data[ii].x, h_data[ii].y);
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

//compute amps for constant total int
/*void computeAmps(float *h_I, float *h_desiredAmp, float *x, float *y, int N_spots, float e_desired)
{
  float SLMsize = (float)SLM_SIZE;
  float Isum = 0.0f;
  for (int i = 0; i<N_spots; i++)
    Isum += h_I[i];
  for (int j = 0; j<N_spots; j++)
  {
    float sincx_rec = 1.0f;//= (x==0)? 1.0f:((M_PI*x[j]/SLMsize)/sinf(M_PI*x[j]/SLMsize));
    float sincy_rec = 1.0f;//(y==0)? 1.0f:((M_PI*y[j]/SLMsize)/sinf(M_PI*y[j]/SLMsize));
    h_desiredAmp[j] = (h_I[j] <= 0.0f) ? 1.0f:(sincx_rec * sincy_rec * sqrtf(e_desired*h_I[j]/Isum)*SLMsize*SLMsize);
  }
}*/

/*
// Obtain phases in SLM plane (ALTERNATIVE VERSION)
// works only for blocksize 512 and max 512 spots
__global__ void propagateToSLM(float *g_x,
                float *g_y,
                float *g_z,
                float *g_I,
                float *g_spotRe_f,
                float *g_spotIm_f,
                float *g_pSLM2pi,
                int N_pixels,
                int N_spots,
                float *g_weights,
                int iteration,
                float *g_pSLMstart,
                float RPC,
                float *g_amps,
                bool getpSLM255,
                unsigned char *g_pSLM255_uc,
                unsigned char *g_LUT,
                bool ApplyLUT_b,
                bool UseAberrationCorr_b,
                float *g_AberrationCorr_f,
                bool UsePolLUT_b,
                float *g_LUTPolCoeff_f,
                int N_PolCoeff)
{
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  int tid = threadIdx.x;
  __shared__ float s_aSpot[MAX_SPOTS], s_aSpotsMean, s_weight[MAX_SPOTS], s_pSpot[MAX_SPOTS];
  __shared__ float s_xm[MAX_SPOTS];
  __shared__ float s_ym[MAX_SPOTS];
  __shared__ float s_zm[MAX_SPOTS];
  float reSLM = 0.0f, imSLM = 0.0f, pSLM2pi_f = 0.0f;
  __shared__ float s_weights_sum;
  if (idx<N_pixels)
  {
    //float N = 512;
    //int logN = (int)log2(N);

    if (tid<c_N_spots[0])
    {
      float spotRe_f = g_spotRe_f[tid];
      float spotIm_f = g_spotIm_f[tid];
      s_pSpot[tid] = atan2f(spotIm_f, spotRe_f);

      s_weight[tid] = g_weights[tid + iteration*c_N_spots[0]] * sqrtf(g_I[tid])/hypotf(spotRe_f, spotIm_f);

      s_xm[tid] = g_x[tid];
      s_ym[tid] = g_y[tid];
      s_zm[tid] = g_z[tid];

      __syncthreads();
      if  (tid==0)
      {
        s_weights_sum = 0.0f;
        for (int jj=0; jj<c_N_spots[0];jj++)
        {
          s_weights_sum += s_weight[jj];
        }
      }
      __syncthreads();
      s_weight[tid] /= s_weights_sum;
      s_weight[tid] = (s_weight[tid]<0.0001f) ? 0.0001f : s_weight[tid];
      //////////////////////////////////////////////////////////////////////////////////
      if (getpSLM255)                     //Copy weights to use as initial value next run
        g_weights[tid] = s_weight[tid];
      else
        g_weights[tid + c_N_spots[0]*(iteration+1)] = s_weight[tid];
      //g_amps[tid + c_N_spots[0]*iteration] = s_aSpot[tid];      //may be excluded, used for monitoring only
    }
    __syncthreads();
    //get pixel coordinates
    float X = c_SLMpitch_f[0] * ((float)threadIdx.x - 256.0f);        //512!
    float Y = c_SLMpitch_f[0] * ((float)blockIdx.x - 256.0f);

    //compute SLM pSpot by summing contribution from all spots
    for (int k=0; k<c_N_spots[0]; k++)
    {
      float delta = M_PI * s_zm[k] * (X*X + Y*Y) + 2.0f * M_PI * (X * s_xm[k] + Y * s_ym[k]);
      reSLM += s_weight[k] * cosf(s_pSpot[k] + delta);
      imSLM += s_weight[k] * sinf(s_pSpot[k] + delta);
    }
    pSLM2pi_f = atan2f(imSLM, reSLM);


    if (RPC < (2.0f*M_PI))      //Apply RPC (restricted Phase Change)
    {
      float pSLMstart = g_pSLMstart[idx];
      if (fabs(pSLM2pi_f - pSLMstart) > RPC)
        pSLM2pi_f = pSLMstart;
      if (getpSLM255)
        g_pSLMstart[idx] = pSLM2pi_f;
    }

    if (getpSLM255)         //Compute final SLM phases and write to global memory...
    {
      if (UseAberrationCorr_b)
        pSLM2pi_f = applyAberrationCorrection(pSLM2pi_f, g_AberrationCorr_f[idx]);

      if (UsePolLUT_b)
      {
        __shared__ float s_LUTcoeff[MAX_POL];
        if (tid < N_PolCoeff)
          s_LUTcoeff[tid] = g_LUTPolCoeff_f[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = applySVPR(pSLM2pi_f, X, Y, s_LUTcoeff);
      }
      else if (ApplyLUT_b)
      {
        __shared__ unsigned char s_LUT[MAX_UCHAR];
        if (tid < MAX_UCHAR)
          s_LUT[tid] = g_LUT[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = s_LUT[phase2int(pSLM2pi_f)];
      }
      else
        g_pSLM255_uc[idx] = phase2uc(pSLM2pi_f);
    }
    else
      g_pSLM2pi[idx] = pSLM2pi_f; //...or write intermediate pSpot to global memory
  }
}*/

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
int setup(const float * const initPhases)
{
  UseAberrationCorr_b = false;
  UsePolLUT_b = false;
  saveI_b = true;
  ApplyLUT_b = false;

  // Make sure there's a GPU
  int deviceCount = 0;
  if (cudaGetDeviceCount(&deviceCount) != 0) {
    printf("No CUDA compatible GPU found\n");
    exit(1);
  } else {
    M_SAFE_CALL(cudaSetDevice(0));
  }

  int MaxIterations = 1000;
  data_w = SLM_SIZE;
  cudaMemcpyToSymbol(c_data_w, &data_w, sizeof(int), 0, cudaMemcpyHostToDevice);
  float data_w_f = (float)data_w;
  cudaMemcpyToSymbol(c_data_w_f, &data_w_f, sizeof(float), 0, cudaMemcpyHostToDevice);
  float half_w_f = (float)data_w/2.0f;
  cudaMemcpyToSymbol(c_half_w_f, &half_w_f, sizeof(float), 0, cudaMemcpyHostToDevice);
  N_pixels = data_w * data_w;
  cudaMemcpyToSymbol(c_N_pixels, &N_pixels, sizeof(int), 0, cudaMemcpyHostToDevice);
  float N_pixels_f = (float)N_pixels;
  cudaMemcpyToSymbol(c_N_pixels_f, &N_pixels_f, sizeof(float), 0, cudaMemcpyHostToDevice);
  int logN = (int)(log2(data_w_f));
  cudaMemcpyToSymbol(c_log2data_w, &logN, sizeof(int), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_useRPC_b, &useRPC_b, sizeof(bool), 0, cudaMemcpyHostToDevice);
  float SLMpitch_f = 1.0f/data_w_f;
  cudaMemcpyToSymbol(c_SLMpitch_f, &SLMpitch_f, sizeof(float), 0, cudaMemcpyHostToDevice);

  memsize_spotsf = MAX_SPOTS * sizeof(float);
  memsize_SLM_f = N_pixels * sizeof(float);
  memsize_SLMuc = N_pixels * sizeof(unsigned char);
  n_blocks_Phi = (N_pixels/BLOCK_SIZE + (N_pixels%BLOCK_SIZE == 0 ? 0:1));

  // Memory allocations for all methods
  M_SAFE_CALL(cudaMalloc((void**)&d_x, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_y, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_z, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_I, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_desiredAmp, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_weights, MAX_SPOTS*(MaxIterations+1)*sizeof(float)));
  M_SAFE_CALL(cudaMalloc((void**)&d_Iobtained, MAX_SPOTS*MaxIterations*sizeof(float)));

  M_SAFE_CALL(cudaMalloc((void**)&d_obtainedPhase, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_spotRe_f, memsize_spotsf ));
  M_SAFE_CALL(cudaMalloc((void**)&d_spotIm_f, memsize_spotsf ));

  int data_w_pow2 = pow(2, ceil(log((float)data_w)/log(2.0f)));
  M_SAFE_CALL(cudaMalloc((void**)&d_pSLM_f, data_w_pow2*data_w_pow2*sizeof(float)));//the size of d_pSLM_f must be a power of 2 for the summation algorithm to work
  M_SAFE_CALL(cudaMemset(d_pSLM_f, 0, data_w_pow2*data_w_pow2*sizeof(float)));

  M_SAFE_CALL(cudaMalloc((void**)&d_pSLMstart_f, memsize_SLM_f));
  M_SAFE_CALL(cudaMalloc((void**)&d_hologram, memsize_SLMuc));
  M_SAFE_CALL(cudaMemset(d_pSLMstart_f, 0, N_pixels*sizeof(float)));

  M_SAFE_CALL(cudaMemcpy(d_pSLM_f, initPhases, N_pixels*sizeof(float), cudaMemcpyHostToDevice));

  status = cudaGetLastError();
  return status;
}

// Free GPU memory
int finish()
{
  M_SAFE_CALL(cudaFree(d_x));
  M_SAFE_CALL(cudaFree(d_y));
  M_SAFE_CALL(cudaFree(d_z));
  M_SAFE_CALL(cudaFree(d_I));

  M_SAFE_CALL(cudaFree(d_weights));
  M_SAFE_CALL(cudaFree(d_Iobtained));
  M_SAFE_CALL(cudaFree(d_pSLM_f));
  M_SAFE_CALL(cudaFree(d_pSLMstart_f));
  M_SAFE_CALL(cudaFree(d_hologram));

  if (ApplyLUT_b) {
    cudaFree(d_LUT_uc);
    d_LUT_uc = NULL;
  }

  if (UseAberrationCorr_b) {
    cudaFree(d_AberrationCorr_f);
    d_AberrationCorr_f = NULL;
  }

  if (UsePolLUT_b) {
    cudaFree(d_LUTPolCoeff_f);
    d_LUTPolCoeff_f = NULL;
  }

  cudaThreadExit();
  status = cudaGetLastError();
  return status;
}

// Set correction parameters
int setCorrectionParameters(const bool useAC,                 // use wavefront aberration/distortion correction
                            const float *aberrationCoeffs,    // correction matrix
                            const bool useSVPR,               // use spatially varying phase response
                            const int polOrder,               // polynomial order for phase correction
                            const float * const polCoeffs,    // polynomial coefficients
                            const bool useLUT,                // use LUT for phase-to-uc conversion (mutually exclusive with svpr)
                            const unsigned char * const lut,  // LUT for phase-to-uc conversion
                            const bool useRPC,                // use restricted phase change
                            const float alpha,                // if < 1.0, RPC threshold = 2*pi*alpha
                            const bool saveAmps)              // save amplitudes in host array
{
  UseAberrationCorr_b = (bool) useAC;
  cudaMemcpyToSymbol(c_useAberrationCorr_b, &UseAberrationCorr_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  UsePolLUT_b = (bool) useSVPR;
  cudaMemcpyToSymbol(c_usePolLUT_b, &UsePolLUT_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  saveI_b = (bool) saveAmps;
  cudaMemcpyToSymbol(c_saveI_b, &saveI_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  ApplyLUT_b = (bool) useLUT;
  cudaMemcpyToSymbol(c_applyLUT_b, &ApplyLUT_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  alphaRPC_f = alpha * 2.0f * M_PI;
  if (useRPC && alpha < 1.0f)
    useRPC_b = true;
  else
    useRPC_b = false;
  cudaMemcpyToSymbol(c_alphaRPC_f, &alphaRPC_f, sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_useRPC_b, &useRPC_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  int Ncoeff[5] = {20, 35, 56, 84, 120};

  if ((3 <= polOrder) && (polOrder <= 7)) {
    N_PolLUTCoeff = Ncoeff[polOrder - 3];
    printf("%d\n", N_PolLUTCoeff);
  } else {
    printf("Polynomial order out of range\n -coerced to 3\n");
    N_PolLUTCoeff = Ncoeff[0];
  }
  cudaMemcpyToSymbol(c_N_PolLUTCoeff, &N_PolLUTCoeff, sizeof(int), 0, cudaMemcpyHostToDevice);

  if(UseAberrationCorr_b)
  {
    if (d_AberrationCorr_f == NULL)   //Allocate memory only if not already allocated
      cudaMalloc((void**)&d_AberrationCorr_f, memsize_SLM_f);
    UseAberrationCorr_b = !cudaMemcpy(d_AberrationCorr_f, aberrationCoeffs, memsize_SLM_f, cudaMemcpyHostToDevice);
  }
  else if (d_AberrationCorr_f != NULL)  //If memory is allocated: free memory and reset pointer to NULL
  {
    cudaFree(d_AberrationCorr_f);
    d_AberrationCorr_f = NULL;
  }
  if(UsePolLUT_b)
  {
    if (d_LUTPolCoeff_f == NULL)          //Allocate memory only if not already allocated
      cudaMalloc((void**)&d_LUTPolCoeff_f, MAX_POL*sizeof(float));
    UsePolLUT_b = !cudaMemcpy(d_LUTPolCoeff_f, polCoeffs, N_PolLUTCoeff*sizeof(float), cudaMemcpyHostToDevice);
  }
  else if (d_LUTPolCoeff_f!=NULL) //If memory is allocated: free memory and reset pointer to NULL
  {
    cudaFree(d_LUTPolCoeff_f);
    d_LUTPolCoeff_f = NULL;
  }

  if(ApplyLUT_b&&(!UsePolLUT_b))
  {
    if (d_LUT_uc == NULL)         //Allocate memory only if not already allocated
      cudaMalloc((void**)&d_LUT_uc, MAX_UCHAR*sizeof(unsigned char));
    ApplyLUT_b = !cudaMemcpy(d_LUT_uc, lut, MAX_UCHAR*sizeof(unsigned char), cudaMemcpyHostToDevice);
  }
  else if (d_LUT_uc!=NULL)  //If memory is allocated: free memory and reset pointer to NULL
  {
    cudaFree(d_LUT_uc);
    d_LUT_uc = NULL;
  }
  M_CHECK_ERROR();

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
                     float * const interAmps,        // intermediate amplitudes (debug)
                     int method)                     // method to use for generating hologram
{
  if (numSpots < 1)
    method = 100;
  else if (numSpots < 3)
    method = 0;

  computeAndCopySpotData(spotX, spotY, spotZ, spotI, numSpots);
  memsize_spotsf = numSpots * sizeof(float);
  double t;

  switch (method) {
    case 0:
      // Generate hologram using "Lenses and Prisms"
      printf("Starting Lenses and Prisms...\n");
      t = getClock();

      lensesAndPrisms<<<n_blocks_Phi, BLOCK_SIZE>>>(d_hologram,
                                                    SLM_SIZE,
                                                    1.0/SLM_SIZE,
                                                    SLM_SIZE*SLM_SIZE,
                                                    spotX, // FIXME: device arrays
                                                    spotY, // FIXME: device arrays
                                                    spotZ, // FIXME: device arrays
                                                    spotI, // FIXME: device arrays + desired amps
                                                    numSpots,
                                                    UseAberrationCorr_b,
                                                    d_AberrationCorr_f,
                                                    UsePolLUT_b,
                                                    N_PolLUTCoeff,
                                                    d_LUTPolCoeff_f,
                                                    ApplyLUT_b,
                                                    d_LUT_uc);
      M_CHECK_ERROR();
      cudaThreadSynchronize();
      M_CHECK_ERROR();

      if (saveI_b) {
        calculateI<<<numSpots, SLM_SIZE>>>(d_hologram,
                                           SLM_SIZE,
                                           1.0/SLM_SIZE,
                                           SLM_SIZE*SLM_SIZE,
                                           spotX,
                                           spotY,
                                           spotZ,
                                           d_Iobtained);
        M_CHECK_ERROR();
        cudaThreadSynchronize();
        M_SAFE_CALL(cudaMemcpy(interAmps, d_Iobtained, numSpots*sizeof(float), cudaMemcpyDeviceToHost));
      }
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, memsize_SLMuc, cudaMemcpyDeviceToHost));

      t = getClock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      break;
    case 1:
      // Generate holgram using fresnel propagation
      printf("Starting Fresnel...\n");
      t = getClock();

      // Uncomment this to start with pre-calculated hologram:
      //cudaMemcpy(d_hologram, hologram, memsize_SLMuc, cudaMemcpyHostToDevice);
      //cudaThreadSynchronize();
      //uc2f<<<n_blocks_Phi, BLOCK_SIZE >>>(d_pSLM_f, d_hologram, N_pixels);

      for (int l = 0; l < numIterations; l++) {
        printf("Iteration %d\n", l);

        // Propagate to the spot positions
        propagateToSpotPositions<<<numSpots, SLM_SIZE>>>(d_pSLM_f,
                                                         SLM_SIZE,
                                                         1.0/SLM_SIZE,
                                                         SLM_SIZE*SLM_SIZE,
                                                         spotX,
                                                         spotY,
                                                         spotZ,
                                                         d_spotRe_f,
                                                         d_spotIm_f);
        M_CHECK_ERROR();
        cudaThreadSynchronize();

        // Propagate to the SLM plane
        propagateToSLM<<<n_blocks_Phi, BLOCK_SIZE >>>(d_spotRe_f, d_spotIm_f, d_pSLM_f, d_weights, l, d_pSLMstart_f, d_Iobtained, (l==(numIterations-1)), d_hologram, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f);
        M_CHECK_ERROR();
        cudaThreadSynchronize();
      }

      if (saveI_b)
        M_SAFE_CALL(cudaMemcpy(interAmps, d_Iobtained, numSpots*(numIterations)*sizeof(float), cudaMemcpyDeviceToHost));
      else
        M_SAFE_CALL(cudaMemcpy(interAmps, d_weights, numSpots*(numIterations)*sizeof(float), cudaMemcpyDeviceToHost));
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, memsize_SLMuc, cudaMemcpyDeviceToHost));

      t = getClock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      printf("Time/iteration = %12.8lf seconds\n", t/((double) numIterations));
      break;
    case 100:
      // Apply corrections to pre-calculated hologram
      M_SAFE_CALL(cudaMemcpy(d_hologram, hologram, memsize_SLMuc, cudaMemcpyHostToDevice));
      applyCorrections<<<n_blocks_Phi, BLOCK_SIZE>>>(d_hologram,
                                                     SLM_SIZE,
                                                     1.0/SLM_SIZE,
                                                     UseAberrationCorr_b,
                                                     d_AberrationCorr_f,
                                                     UsePolLUT_b,
                                                     N_PolLUTCoeff,
                                                     d_LUTPolCoeff_f,
                                                     ApplyLUT_b,
                                                     d_LUT_uc);
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, memsize_SLMuc, cudaMemcpyDeviceToHost));
      break;
    default:
      break;
  }

  // Handle CUDA errors
  status = cudaGetLastError();
  return status;
}

// Calculate amplitude and phase at positions (x, y, z) from a given hologram
int getAmpAndPhase(const float * spotX,                  // x coordinates of spots/traps
                   const float * spotY,                  // y coordinates of spots/traps
                   const float * spotZ,                  // z coordinates of spots/traps
                   const int numSpots,                   // number of spots/traps
                   const unsigned char * const hologram, // hologram to use
                   float *amp,                           // amplitude at (x, y, z)
                   float *phase)                         // phase at (x, y, z)
{
  float *d_amp;
  float *d_phase;
  cudaMalloc((void**)&d_amp, numSpots * sizeof(float));
  cudaMalloc((void**)&d_phase, numSpots * sizeof(float));
  cudaMemcpy(d_hologram, hologram, memsize_SLMuc, cudaMemcpyHostToDevice);

  int offset = 0;
  int num_spots_rem = numSpots;
  int num_spots_this;

  while (num_spots_rem > 0) {
    num_spots_this = (num_spots_rem > MAX_SPOTS) ? MAX_SPOTS : num_spots_rem;
    cudaMemcpyToSymbol(c_x, spotX + offset, num_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(c_y, spotY + offset, num_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(c_z, spotZ + offset, num_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    // FIXME: device arrays for spots
    calculateIAndPhase<<<num_spots_this, SLM_SIZE>>>(d_hologram,
                                                     SLM_SIZE,
                                                     1/SLM_SIZE,
                                                     SLM_SIZE*SLM_SIZE,
                                                     spotX,
                                                     spotY,
                                                     spotZ,
                                                     d_amp+offset,
                                                     d_phase+offset);
    cudaThreadSynchronize();

    num_spots_rem -= MAX_SPOTS;
    offset += MAX_SPOTS;
  }

  cudaMemcpy(amp, d_amp, numSpots*sizeof(float), cudaMemcpyDeviceToHost);
  cudaMemcpy(phase, d_phase, numSpots*sizeof(float), cudaMemcpyDeviceToHost);
  cudaFree(d_amp);
  cudaFree(d_phase);

  status = cudaGetLastError();
  return status;
}

void computeAndCopySpotData(const float * const x,
                            const float * const y,
                            const float * const z,
                            const float * const intensity,
                            const int n)
{
  //float Isum = 0.0f;
  //for (int i = 0; i<n; i++)
  //  Isum += intensity[i];

  for (int j = 0; j < n; j++) {
    float sincx_rec = (x[j] == 0) ? 1.0f : ((M_PI * x[j]/SLMsizef) / sinf(M_PI * x[j]/SLMsizef));
    float sincy_rec = (y[j] == 0) ? 1.0f : ((M_PI * y[j]/SLMsizef) / sinf(M_PI * y[j]/SLMsizef));
    h_desiredAmp[j] = (intensity[j] <= 0.0f) ? 1.0f : (sincx_rec * sincy_rec * sqrtf(intensity[j]/100) * SLMsizef * SLMsizef);
  }

  cudaMemcpyToSymbol(c_x, x, n * sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_y, y, n * sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_z, z, n * sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_desiredAmp, h_desiredAmp, n * sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_N_spots, &n, sizeof(int), 0, cudaMemcpyHostToDevice);
}

int main()
{
  srand(1);
  const int num_pixels = SLM_SIZE * SLM_SIZE; // 512^2
  const int num_spots = 4; // Four spots
  const int method = 100; // 0 => Direct, 1 => Fresnel, 100 => Corrections
  const int iterations = 10; // 10 iterations for convergence

  // Spots/traps. These form a quadrant across four planes.
  const float x[] = {-128.0f, -128.0f, 127.0f, 127.0f};
  const float y[] = {127.0f, -128.0f, 127.0f, -128.0f};
  const float z[] = {1.0f, 2.0f, 3.0f, 4.0f};
  const float I[] = {0.12f, 0.34f, 0.56f, 0.78f};

  // Correction parameters
  const int use_aberration_correction = 0;
  const float *aberration_coefficients = NULL;
  const int use_svpr = 0;
  const int pol_order = 5;
  const int pol_size = MAX_POL; // MAX_POL terms with order 7 polynomial
  const int use_lut = 0;
  const unsigned char *lut = NULL;
  int use_rpc = 0;
  float alpha = 0.0f;
  const int save_amplitudes = 1;

  float * const pol_coeffs = (float *) malloc(pol_size * sizeof(float));
  for (int i = 0; i < pol_size; i++) {
    pol_coeffs[i] = random() / ((float) RAND_MAX);
  }

  unsigned char *hologram = (unsigned char *) malloc(num_pixels * sizeof(unsigned char));
  float * const init_phases = (float *) malloc(num_pixels * sizeof(float)); // [-pi, pi]
  for (int i = 0; i < num_pixels; i++) {
    hologram[i] = 0.0f;
    init_phases[i] = (2.0 * M_PI * (random() / ((float) RAND_MAX))) - M_PI;
  }

  float *amps = (float *) malloc(num_spots * iterations * sizeof(float));
  for (int i = 0; i < num_spots * iterations; i++) {
    amps[i] = 0.0f;
  }

  if (setup(init_phases) != 0) {
    printf("Init failed.\n");
    exit(1);
  }

  if (setCorrectionParameters(use_aberration_correction, aberration_coefficients,
      use_svpr, pol_order, pol_coeffs, use_lut, lut, use_rpc, alpha, save_amplitudes) != 0) {
    printf("Correction setup failed.\n");
    exit(1);
  }

  double t = getClock();

  if (generateHologram(hologram, x, y, z, I, num_spots, iterations, amps, method) != 0) {
    printf("Computation failed.\n");
    exit(1);
  }

  t = getClock() - t;

  if (finish() != 0) {
    printf("Cleanup failed.\n");
    exit(1);
  }

  printf("Total time = %12.8lf seconds\n", t);

  // Save hologram
  FILE *hfile = fopen("orig_hologram.dat", "w");
  for (int i = 0; i < num_pixels; i++) {
    fprintf(hfile, "%hhu\n", hologram[i]);
  }

  // Save amplitudes
  FILE *afile = fopen("orig_amps.dat", "w");
  for (int i = 0; i < num_spots * iterations; i++) {
    fprintf(afile, "%f\n", amps[i]);
  }

  fclose(hfile);
  fclose(afile);

  return 0;
}

