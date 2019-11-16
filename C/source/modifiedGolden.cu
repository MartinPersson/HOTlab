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

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

#define MAX_SPOTS 64 // Even 64 is pushing it
#define MAX_POL 120
#define MAX_UCHAR 256

#define BLOCK_SIZE 256

// FIXME: This shouldn't be hardcoded
#define SLM_SIZE 256

// Use bitwise modulo operations if the SLM size is a power of 2
#if (((SLM_SIZE - 1) & (SLM_SIZE)) == 0)
#define SLMPOW2
#endif

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
inline void mSafeCall(cudaError_t status, int line, const char *file);
inline void mCheckError(int line, const char *file);
inline void mDisplayDataF(float *d_data, int length, int line);
inline void mDisplayDataUC(unsigned char *d_data, int length, int line);
inline void mDisplayDataI(int *d_data, int length, int line);

// Hologram info
unsigned char *d_hologram; // [0, 255]
float *d_hologramPhase;    // [-pi, pi]
float *d_prevHologramPhase;
int slmDim;
float slmPitch;
int numPixels;
int numIterations;
int hologramMemSize;

// Spot info
float *d_x;
float *d_y;
float *d_z;
float *d_desiredAmp;
float *d_spotRe;
float *d_spotIm;
float *d_phase;
float *d_weights;
float *d_obtainedI;
int numSpots;
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
#ifdef SLMPOW2
  int idx = index & (slmDim - 1);
#else
  int idx = index % slmDim;
#endif
  return idx;
}

// Get y coordinate from global thread ID and x coordinate
__device__ inline int getYIdx(const int index, const int xIdx, const float slmPitch)
{
#ifdef SLMPOW2
  int idx = (index - xIdx) >> 9; // FIXME
#else
  int idx = floor(((float) (index - xIdx)) * slmPitch);
#endif
  return idx;
}

// Get pixel coordinates in [-0.5, 0.5]
__device__ inline float getPixelCoords(const int index, const int slmDim, const float slmPitch)
{
  return (slmPitch * ((float) (index - (slmDim >> 1))));
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

// Apply corrections to precalculated hologram
__global__ void applyCorrections(// Hologram information
                                 unsigned char * const hologram,       // hologram to use
                                 const unsigned int slmDim,            // SLM's dimension
                                 const float slmPitch,                 // 1/slmDim
                                 // Correction information
                                 const bool useAC,                     // use aberration correction
                                 const float * const aberrationCoeffs, // correction coefficients
                                 const bool useSVPR,                   // use spatially varying phase response
                                 const int numPolCoeffs,               // number of polynomial coefficients
                                 const float * const polCoeffs,        // polynomial coefficients
                                 const bool useLUT,                    // use LUT for phase-to-uc conversion
                                 const unsigned char * const lut)      // LUT for phase-to-uc conversion
{
  const int tid = threadIdx.x;
  const int idx = blockIdx.x * blockDim.x + threadIdx.x;

  float pixelPhase = uc2phase(hologram[idx]);
  if (useAC)
    pixelPhase = applyAberrationCorrection(pixelPhase, aberrationCoeffs[idx]);

  if (useSVPR) {
    int xIdx = getXIdx(idx, slmDim);
    int yIdx = getYIdx(idx, xIdx, slmPitch);
    float x = getPixelCoords(xIdx, slmDim, slmPitch);
    float y = getPixelCoords(yIdx, slmDim, slmPitch);

    __shared__ float coeff[MAX_POL];
    if (tid < numPolCoeffs)
      coeff[tid] = polCoeffs[tid];
    __syncthreads();

    hologram[idx] = applySVPR(pixelPhase, x, y, coeff, numPolCoeffs);
  } else if (useLUT) {
    __shared__ unsigned char lut_t[MAX_UCHAR];
    if (tid < MAX_UCHAR)
      lut_t[tid] = lut[tid];
    __syncthreads();

    hologram[idx] = lut_t[phase2int(pixelPhase)];
  } else {
    hologram[idx] = phase2uc(pixelPhase);
  }
}

// Calculate hologram using "Lenses and Prisms"
__global__ void lensesAndPrisms(// Hologram information
                                unsigned char * const hologram,       // hologram to use
                                const unsigned int slmDim,            // SLM's dimension
                                const float slmPitch,                 // 1/slmDim
                                const unsigned int numPixels,         // number of pixels in SLM
                                // Spot information
                                const float * const spotX,            // x coordinates of spots
                                const float * const spotY,            // y coordinates of spots
                                const float * const spotZ,            // z coordinates of spots
                                const float * const spotDesiredAmp,   // desired amplitudes of spots
                                const unsigned int numSpots,          // number of spots
                                // Correction information
                                const bool useAC,                     // use aberration correction
                                const float * const aberrationCoeffs, // correction coefficients
                                const bool useSVPR,                   // use spatially varying phase response
                                const int numPolCoeffs,               // number of polynomial coefficients
                                const float * const polCoeffs,        // polynomial coefficients
                                const bool useLUT,                    // use LUT for phase-to-uc conversion
                                const unsigned char * const lut)      // LUT for phase-to-uc conversion
{
  __shared__ float spotx[MAX_SPOTS];
  __shared__ float spoty[MAX_SPOTS];
  __shared__ float spotz[MAX_SPOTS];

  const int idx = blockIdx.x * blockDim.x + threadIdx.x;
  const int tid = threadIdx.x;

  if (idx < numPixels) {
    if (tid < numSpots) {
      spotx[tid] = spotX[tid];
      spoty[tid] = spotY[tid];
      spotz[tid] = spotZ[tid];
    }
    __syncthreads();

    float pixelPhase;
    float vRe = 0.0f;
    float vIm = 0.0f;

    int xIdx = getXIdx(idx, slmDim);
    int yIdx = getYIdx(idx, xIdx, slmPitch);
    float x = getPixelCoords(xIdx, slmDim, slmPitch);
    float y = getPixelCoords(yIdx, slmDim, slmPitch);

    // Compute the pixel's phase by summing contributions from all spots
    for (int i = 0; i < numSpots; i++) {
      // TODO: Add variable phases to function call
      pixelPhase = computePhase(x, y, spotx[i], spoty[i], spotz[i]);
      vRe += spotDesiredAmp[i] * cosf(pixelPhase);
      vIm += spotDesiredAmp[i] * sinf(pixelPhase);
    }

    pixelPhase = atan2f(vIm, vRe); // [-pi, pi]
    if (useAC)
      pixelPhase = applyAberrationCorrection(pixelPhase, aberrationCoeffs[idx]);

    if (useSVPR) {
      __shared__ float coeff[MAX_POL];
      if (tid < numPolCoeffs)
        coeff[tid] = polCoeffs[tid];
      __syncthreads();

      hologram[idx] = applySVPR(pixelPhase, x, y, coeff, numPolCoeffs);
    } else if (useLUT) {
      __shared__ unsigned char lut_t[MAX_UCHAR];
      if (tid < MAX_UCHAR)
        lut_t[tid] = lut[tid];
      __syncthreads();

      hologram[idx] = lut_t[phase2int(pixelPhase)];
    } else {
      hologram[idx] = phase2uc(pixelPhase);
    }
  }
}

__global__ void calculateI(// Hologram information
                           const unsigned char * const hologram, // hologram to use
                           const unsigned int slmDim,            // SLM's dimension
                           const float slmPitch,                 // 1/slmDim
                           const unsigned int numPixels,         // number of pixels in SLM
                           // Spot information
                           const float * const spotX,            // x coordinates of spots
                           const float * const spotY,            // y coordinates of spots
                           const float * const spotZ,            // z coordinates of spots
                           float * const spotI)                  // spot intensities
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  const float spotx = spotX[spotNumber];
  const float spoty = spotY[spotNumber];
  const float spotz = spotZ[spotNumber];

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  float x = getPixelCoords(tid, slmDim, slmPitch);
  float y = -0.5f; // (0 - slmDim/2) / slmDim

  float pixelPhase;
  int i = tid;
  while (i < numPixels) {
    pixelPhase = uc2phase(hologram[i]) - computePhase(x, y, spotx, spoty, spotz);

    vRe[tid] += cosf(pixelPhase);
    vIm[tid] += sinf(pixelPhase);

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
    float re = vRe[0] / ((float) numPixels);
    float im = vIm[0] / ((float) numPixels);
    spotI[spotNumber] = re*re + im*im;
  }
}

__global__ void calculateIAndPhase(// Hologram information
                                   const unsigned char * const hologram, // hologram to use
                                   const unsigned int slmDim,            // SLM's dimension
                                   const float slmPitch,                 // 1/slmDim
                                   const unsigned int numPixels,         // number of pixels in SLM
                                   // Spot information
                                   const float * const spotX,            // x coordinates of spots
                                   const float * const spotY,            // y coordinates of spots
                                   const float * const spotZ,            // z coordinates of spots
                                   float * const spotI,                  // spot intensities
                                   float * const spotP)                  // spot phases
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  const float spotx = spotX[spotNumber];
  const float spoty = spotY[spotNumber];
  const float spotz = spotZ[spotNumber];

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  float x = getPixelCoords(tid, slmDim, slmPitch);
  float y = -0.5f; // (0 - slmDim/2) / slmDim

  float pixelPhase;
  int i = tid;
  while (i < numPixels) {
    pixelPhase = uc2phase(hologram[i]) - computePhase(x, y, spotx, spoty, spotz);
    pixelPhase += 2.0f * M_PI * spotZ[spotNumber];

    vRe[tid] += cosf(pixelPhase);
    vIm[tid] += sinf(pixelPhase);

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
    float re = vRe[0] / ((float) numPixels);
    float im = vIm[0] / ((float) numPixels);
    spotI[spotNumber] = re*re + im*im;
    spotP[spotNumber] = atan2f(im, re);
  }
}

__device__ inline float normalize(int idx, int support){
	return ((float)idx - (support >> 1))/support;
}

// Propagate from the SLM to the spot positions using Fresnel summation
// FIXME: Works only for blocksize = SLMsize
__global__ void propagateToSpotPositions(// Hologram information
                                         const float * const hologramPhase,    // hologram's phase
                                         const unsigned int slmDim,            // SLM's dimension
                                         const float slmPitch,                 // 1/slmDim
                                         const unsigned int numPixels,         // number of pixels in SLM
                                         // Spot information
                                         const float * const spotX,            // x coordinates of spots
                                         const float * const spotY,            // y coordinates of spots
                                         const float * const spotZ,            // z coordinates of spots
                                         float * const spotRe,                 // real component of spot states
                                         float * const spotIm)                 // imaginary component of spot states
{
  __shared__ float vRe[SLM_SIZE];
  __shared__ float vIm[SLM_SIZE];

  const int blockSize = blockDim.x;
  const int spotNumber = blockIdx.x;
  const int tid = threadIdx.x;

  const float spotx = spotX[spotNumber];
  const float spoty = spotY[spotNumber];
  const float spotz = spotZ[spotNumber];

  vRe[tid] = 0.0f;
  vIm[tid] = 0.0f;

  //float x = getPixelCoords(tid, slmDim, slmPitch);
  //float y = -0.5f; // (0 - slmDim/2) / slmDim

  float pixelPhase;
  int i = tid;
  int y = 0;
  int x = tid;
  float normalX = normalize(x, (int)slmDim);
  while (i < numPixels) {
    float normalY = normalize(y, (int)slmDim);
    pixelPhase = hologramPhase[i] - computePhase(normalX, normalY, spotx, spoty, spotz);

    if (x == 12 && y == 12)
    	printf("%f\n", pixelPhase);

    vRe[tid] += cosf(pixelPhase);
    vIm[tid] += sinf(pixelPhase);

    y++;
    i += blockSize;
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
                               const float * const spotX,            // x coordinates of spots
                               const float * const spotY,            // y coordinates of spots
                               const float * const spotZ,            // z coordinates of spots
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
  __shared__ float spotP[MAX_SPOTS];
  __shared__ float spotA[MAX_SPOTS];
  __shared__ float spotW[MAX_SPOTS];

  const int idx = blockIdx.x * blockDim.x + threadIdx.x;
  const int tid = threadIdx.x;

  float pixelRe = 0.0f;
  float pixelIm = 0.0f;
  float pixelPhase = 0.0f;

  if (idx < numPixels) {
    // Load spot phases, amplitudes, and weights
    // FIXME: would be faster on CPU?
    if (tid < numSpots) {
      float re = spotRe[tid];
      float im = spotIm[tid];
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
    // TODO: use scratchpad for spot x, y, z
    for (int i = 0; i < numSpots; i++) {
      float delta = computePhase(x, y, spotX[i], spotY[i], spotZ[i]);
      pixelRe += spotW[i] * cosf(spotP[i] + delta);
      pixelIm += spotW[i] * sinf(spotP[i] + delta);
    }

    pixelPhase = atan2f(pixelIm, pixelRe);
    if (useRPC) {
      float prevPhase = prevHologramPhase[idx];
      if (fabs(pixelPhase - prevPhase) > alpha)
        pixelPhase = prevPhase;

      if (lastIteration)
        prevHologramPhase[idx] = pixelPhase;
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

        hologram[idx] = applySVPR(pixelPhase, x, y, coeff, numPolCoeffs);
      } else if (useLUT) {
        __shared__ unsigned char lut_t[MAX_UCHAR];
        if (tid < MAX_UCHAR)
          lut_t[tid] = lut[tid];
        __syncthreads();

        hologram[idx] = lut_t[phase2int(pixelPhase)];
      } else {
        hologram[idx] = phase2uc(pixelPhase);
      }
    } else { // Otherwise, write intermediate phases to global memory
      hologramPhase[idx] = pixelPhase;
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

  hologramMemSize = numPixels * sizeof(unsigned char);
  const unsigned int hologramPhaseMemSize = numPixels * sizeof(float);
  M_SAFE_CALL(cudaMalloc((void **) &d_hologram, hologramMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_hologramPhase, hologramPhaseMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_prevHologramPhase, hologramPhaseMemSize));
  M_SAFE_CALL(cudaMemcpy(d_hologramPhase, initPhases, hologramPhaseMemSize, cudaMemcpyHostToDevice));
  M_SAFE_CALL(cudaMemcpy(d_prevHologramPhase, initPhases, hologramPhaseMemSize, cudaMemcpyHostToDevice));

  /*** Spots ***/

  const unsigned int spotMemSize = numSpots * sizeof(float);
  weightMemSize = numSpots * numIterations * sizeof(float);
  M_SAFE_CALL(cudaMalloc((void **) &d_x, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_y, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_z, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_desiredAmp, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_spotRe, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_spotIm, spotMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_weights, weightMemSize));
  M_SAFE_CALL(cudaMalloc((void **) &d_obtainedI, weightMemSize));

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

  M_SAFE_CALL(cudaFree(d_x));
  M_SAFE_CALL(cudaFree(d_y));
  M_SAFE_CALL(cudaFree(d_z));
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
                     float * const interAmps,        // intermediate amplitudes (debug)
                     int method)                     // method to use for generating hologram
{
  if (numSpots < 1)
    method = 100;
  else if (numSpots < 3)
    method = 0;

  computeAndCopySpotData(spotX, spotY, spotZ, spotI, numSpots);
  double t;
  int numBlocks;

  switch (method) {
    case 0:
      // Generate hologram using "Lenses and Prisms"
      printf("Starting Lenses and Prisms...\n");
      t = getClock();

      numBlocks = (numPixels/BLOCK_SIZE + (numPixels % BLOCK_SIZE ? 1 : 0));
      lensesAndPrisms<<<numBlocks, BLOCK_SIZE>>>(d_hologram,
                                                 slmDim,
                                                 slmPitch,
                                                 numPixels,
                                                 d_x,
                                                 d_y,
                                                 d_z,
                                                 d_desiredAmp,
                                                 numSpots,
                                                 useAC,
                                                 d_aberrationCoeffs,
                                                 useSVPR,
                                                 numPolCoeffs,
                                                 d_polCoeffs,
                                                 useLUT,
                                                 d_lut);
      M_CHECK_ERROR();
      cudaDeviceSynchronize();
      M_CHECK_ERROR();

      if (saveSpotI) {
        calculateI<<<numSpots, SLM_SIZE>>>(d_hologram,
                                           slmDim,
                                           slmPitch,
                                           numPixels,
                                           d_x,
                                           d_y,
                                           d_z,
                                           d_obtainedI);
        M_CHECK_ERROR();
        cudaDeviceSynchronize();
        M_SAFE_CALL(cudaMemcpy(interAmps, d_obtainedI, numSpots*sizeof(float), cudaMemcpyDeviceToHost));
      }
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, hologramMemSize, cudaMemcpyDeviceToHost));

      t = getClock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      break;
    case 1:
      // Generate holgram using fresnel propagation
      printf("Starting Fresnel...\n");
      t = getClock();
      numBlocks = (numPixels/BLOCK_SIZE + (numPixels % BLOCK_SIZE ? 1 : 0));

      // Uncomment this to start with pre-calculated hologram
      //cudaMemcpy(d_hologram, hologram, hologramMemSize, cudaMemcpyHostToDevice);
      //cudaDeviceSynchronize();
      //uc2f<<<numBlocks, BLOCK_SIZE >>>(d_hologramPhase, d_hologram, numPixels);

      for (int l = 0; l < numIterations; l++) {
        printf("Iteration %d\n", l);
        propagateToSpotPositions<<<numSpots, SLM_SIZE>>>(d_hologramPhase,
                                                         slmDim,
                                                         slmPitch,
                                                         numPixels,
                                                         d_x,
                                                         d_y,
                                                         d_z,
                                                         d_spotRe,
                                                         d_spotIm);
        M_CHECK_ERROR();
        cudaDeviceSynchronize();

        propagateToSLM<<<numBlocks, BLOCK_SIZE>>>(d_hologram,
                                                  d_hologramPhase,
                                                  d_prevHologramPhase,
                                                  slmDim,
                                                  slmPitch,
                                                  numPixels,
                                                  l,
                                                  (l == (numIterations - 1)),
                                                  d_x,
                                                  d_y,
                                                  d_z,
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
/*                // debuggin output
        float* peekSpot = (float*)malloc(32 * sizeof(float));
        cudaMemcpy(peekSpot, d_hologram, 32 * sizeof(float), cudaMemcpyDeviceToHost);
        for (int i = 0; i < 32; ++i){
          printf("%f ", peekSpot[i]);
        }
        printf("\n");
        M_CHECK_ERROR();
        cudaDeviceSynchronize();*/
      }

      if (saveSpotI)
        M_SAFE_CALL(cudaMemcpy(interAmps, d_obtainedI, weightMemSize, cudaMemcpyDeviceToHost));
      else
        M_SAFE_CALL(cudaMemcpy(interAmps, d_weights, weightMemSize, cudaMemcpyDeviceToHost));
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, hologramMemSize, cudaMemcpyDeviceToHost));

      t = getClock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      printf("Time/iteration = %12.8lf seconds\n", t/((double) numIterations));
      break;
    case 100:
      // Apply corrections to pre-calculated hologram
      numBlocks = (numPixels/BLOCK_SIZE + (numPixels % BLOCK_SIZE ? 1 : 0));
      M_SAFE_CALL(cudaMemcpy(d_hologram, hologram, hologramMemSize, cudaMemcpyHostToDevice));
      applyCorrections<<<numBlocks, BLOCK_SIZE>>>(d_hologram,
                                                  slmDim,
                                                  slmPitch,
                                                  useAC,
                                                  d_aberrationCoeffs,
                                                  useSVPR,
                                                  numPolCoeffs,
                                                  d_polCoeffs,
                                                  useLUT,
                                                  d_lut);
      M_CHECK_ERROR();
      cudaDeviceSynchronize();
      M_SAFE_CALL(cudaMemcpy(hologram, d_hologram, hologramMemSize, cudaMemcpyDeviceToHost));
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
  cudaMalloc((void **) &d_amp, numSpots * sizeof(float));
  cudaMalloc((void **) &d_phase, numSpots * sizeof(float));
  cudaMemcpy(d_hologram, hologram, hologramMemSize, cudaMemcpyHostToDevice);

  int offset = 0;
  int numSpotsRem = numSpots;
  int numSpotsThis;

  while (numSpotsRem > 0) {
    numSpotsThis = (numSpotsRem > MAX_SPOTS) ? MAX_SPOTS : numSpotsRem;
    cudaMemcpy(d_x, spotX + offset, numSpotsThis * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_y, spotY + offset, numSpotsThis * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_z, spotZ + offset, numSpotsThis * sizeof(float), cudaMemcpyHostToDevice);
    calculateIAndPhase<<<numSpotsThis, SLM_SIZE>>>(d_hologram,
                                                   slmDim,
                                                   slmPitch,
                                                   numPixels,
                                                   d_x,
                                                   d_y,
                                                   d_z,
                                                   d_amp + offset,
                                                   d_phase + offset);
    cudaDeviceSynchronize();

    numSpotsRem -= MAX_SPOTS;
    offset += numSpotsThis;
  }

  cudaMemcpy(amp, d_amp, numSpots * sizeof(float), cudaMemcpyDeviceToHost);
  cudaMemcpy(phase, d_phase, numSpots * sizeof(float), cudaMemcpyDeviceToHost);
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
  // An alternate way is to use sum instead of 100 in the formula below, but
  // I'm not sure what the difference is
  /*
  float sum = 0.0f;
  for (int i = 0; i < n; i++)
    sum += intensity[i];
  */

  const float slmDimf = (float) slmDim;
  float *desiredAmp = (float *) malloc(n * sizeof(float));

  for (int i = 0; i < n; i++) {
    float sincxRec = (x[i] == 0) ? 1.0f : ((M_PI * x[i]/slmDimf) / sinf(M_PI * x[i]/slmDimf));
    float sincyRec = (y[i] == 0) ? 1.0f : ((M_PI * y[i]/slmDimf) / sinf(M_PI * y[i]/slmDimf));
    desiredAmp[i] = (intensity[i] <= 0.0f) ? 1.0f : (sincxRec * sincyRec * sqrtf(intensity[i]/100) * slmDimf * slmDimf);
  }

  cudaMemcpy(d_x, x, n * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(d_y, y, n * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(d_z, z, n * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(d_desiredAmp, desiredAmp, n * sizeof(float), cudaMemcpyHostToDevice);
  free(desiredAmp);
}

int main(int argc, char *argv[])
{
  srand(1);
  const int method = atoi(argv[1]); // 0 => Direct, 1 => Fresnel, 100 => Corrections

  slmDim = SLM_SIZE;
  slmPitch = 1.0f / ((float) slmDim);
  numPixels = slmDim * slmDim;
  numIterations = 1; // 10 iterations for convergence
  numSpots = 4;

  // Spots/traps. These form a quadrant across four planes.
  const float x[] = {-128.0f, -128.0f, 127.0f, 127.0f};
  const float y[] = {127.0f, -128.0f, 127.0f, -128.0f};
  const float z[] = {1.0f, 2.0f, 3.0f, 4.0f};
  const float I[] = {0.12f, 0.34f, 0.56f, 0.78f};

  // Correction parameters
  saveSpotI = true;
  useAC = false;
  const float * const aberrationCoeffs = NULL;

  useSVPR = false;
  polOrder = 5;
  float * const polCoeffs = (float *) malloc(MAX_POL * sizeof(float));
  for (int i = 0; i < MAX_POL; i++) {
    polCoeffs[i] = 0.0f;
  }

  useLUT = false;
  const unsigned char * const lut = NULL;

  useRPC = false;
  alpha = 2.0f * M_PI * 0.123f;

  unsigned char *hologram = (unsigned char *) malloc(numPixels * sizeof(unsigned char));
  float *amps = (float *) malloc(numSpots * numIterations * sizeof(float));
  float * const initPhases = (float *) malloc(numPixels * sizeof(float)); // [-pi, pi]
  for (int i = 0; i < numPixels; i++) {
    hologram[i] = random() % 256;
    initPhases[i] = (2.0 * M_PI * (random() / ((float) RAND_MAX))) - M_PI;
  }

  if (setup(initPhases, aberrationCoeffs, polCoeffs, lut) != 0) {
    printf("Init failed.\n");
    exit(1);
  }

  // Save initial hologram
  FILE *ifile = fopen("my_init_hologram.dat", "w");
  for (int i = 0; i < numPixels; i++) {
    fprintf(ifile, "%hhu\n", hologram[i]);
  }

  double t = getClock();

  if (generateHologram(hologram, x, y, z, I, numSpots, numIterations, amps, method) != 0) {
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
  FILE *hfile = fopen("my_output_hologram.dat", "w");
  for (int i = 0; i < numPixels; i++) {
    fprintf(hfile, "%hhu\n", hologram[i]);
  }

  // Save amplitudes
  FILE *afile = fopen("my_amps.dat", "w");
  for (int i = 0; i < numSpots * numIterations; i++) {
    fprintf(afile, "%f\n", amps[i]);
  }

  fclose(ifile);
  fclose(hfile);
  fclose(afile);

  free(polCoeffs);
  free(hologram);
  free(initPhases);
  free(amps);

  return 0;
}

