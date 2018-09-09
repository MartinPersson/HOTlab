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

#define BLOCK_SIZE 256

#define SLM_SIZE 512

// Use bitwise modulo operations if the SLM size is a power of 2
#if (((SLM_SIZE - 1) & (SLM_SIZE)) == 0)
#define SLMPOW2
#endif

// Forward declarations
__global__ void ApplyCorrections(unsigned char *g_pSLM_uc, unsigned char *g_LUT, float *d_AberrationCorr_f, float *d_LUTPolCoeff_f);
__global__ void LensesAndPrisms(unsigned char *g_SLMuc, unsigned char *g_LUT, float *d_AberrationCorr_f, float *d_LUTPolCoeff_f);
__global__ void calculateIobtained(unsigned char *g_pSLM_uc, float *g_Iobtained);
__global__ void PropagateToSLM_Fresnel(float *g_spotRe_f, float *g_spotIm_f, float *g_pSLM2pi, float *g_weights, int iteration, float *g_pSLMstart, float *g_amps, bool getpSLM255, unsigned char *g_pSLM255_uc, unsigned char *g_LUT, float *g_AberrationCorr_f, float *g_LUTPolCoeff_f);
__global__ void PropagateToSpotPositions_Fresnel(float *g_pSLM2pi, float *g_spotRe_f, float *g_spotIm_f);
__global__ void XYtoIndex();
__global__ void f2uc(unsigned char *uc, float *f, int N_pixels, unsigned char *g_LUT, int use_linLUT, int data_w);
__global__ void uc2f(float *f, unsigned char *uc, int N);
inline int computeAndCopySpotData(float *h_I, float *x, float *y, float *z, int N_spots, int method);

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
unsigned char *d_pSLM_uc;           //The optimized pSpot pattern, unsigned char, the one sent to the SLM [0, 255]
unsigned char *h_LUT_uc;
unsigned char *d_LUT_uc = NULL;
bool ApplyLUT_b = false, UseAberrationCorr_b = false, UsePolLUT_b = false, saveI_b = false, useRPC_b = false;
float alphaRPC_f = 10;
char CUDAmessage[100];
cudaError_t status;
float *d_obtainedPhase;

// Constant memory declarations
__device__ __constant__ int c_data_w[1];
__device__ __constant__ float c_data_w_f[1];
__device__ __constant__ int c_half_w[1];
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

// Timing
double get_clock() {
  struct timeval tv;
  int ok;
  ok = gettimeofday(&tv, NULL);
  if (ok < 0) {
    printf("gettimeofday error");
  }
  return (tv.tv_sec * 1.0 + tv.tv_usec * 1.0E-6);
}

// Generates a hologram
int generate_hologram(unsigned char *hologram,
                      float *x_spots,
                      float *y_spots,
                      float *z_spots,
                      float *i_spots,
                      int num_spots,
                      const int num_iterations,
                      float *intensity,
                      int method)
{
  if (num_spots > MAX_SPOTS)
    num_spots = MAX_SPOTS;
  else if (num_spots < 1)
    method = 100;
  else if (num_spots < 3)
    method = 0;

  memsize_spotsf = num_spots * sizeof(float);

  // Sets method to -1 if num_spots == 0.
  method = computeAndCopySpotData(i_spots, x_spots, y_spots, z_spots, num_spots, method);

  double t;

  switch (method) {
    case 0:
      // Generate hologram using "Lenses and Prisms"
      printf("Starting Lenses and Prisms...\n");
      t = get_clock();

      LensesAndPrisms<<<n_blocks_Phi, BLOCK_SIZE >>>(d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f);
      M_CHECK_ERROR();
      cudaThreadSynchronize();
      M_CHECK_ERROR();

      if (saveI_b) {
        calculateIobtained<<<num_spots, SLM_SIZE>>>(d_pSLM_uc, d_Iobtained);
        M_CHECK_ERROR();
        cudaThreadSynchronize();
        M_SAFE_CALL(cudaMemcpy(intensity, d_Iobtained, num_spots*sizeof(float), cudaMemcpyDeviceToHost));
      }
      M_SAFE_CALL(cudaMemcpy(hologram, d_pSLM_uc, memsize_SLMuc, cudaMemcpyDeviceToHost));

      t = get_clock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      break;
    case 1:
      // Generate holgram using fresnel propagation
      printf("Starting Fresnel...\n");
      t = get_clock();

      // Uncomment this to start with pre-calculated hologram:
      //cudaMemcpy(d_pSLM_uc, hologram, memsize_SLMuc, cudaMemcpyHostToDevice);
      //cudaThreadSynchronize();
      //uc2f<<<n_blocks_Phi, BLOCK_SIZE >>>(d_pSLM_f, d_pSLM_uc, N_pixels);

      for (int l = 0; l < num_iterations; l++) {
        printf("Iteration %d\n", l);

        // Propagate to the spot positions
        PropagateToSpotPositions_Fresnel<<<num_spots, SLM_SIZE>>>(d_pSLM_f, d_spotRe_f, d_spotIm_f);
        M_CHECK_ERROR();
        cudaThreadSynchronize();

        // Propagate to the SLM plane
        PropagateToSLM_Fresnel<<<n_blocks_Phi, BLOCK_SIZE >>>(d_spotRe_f, d_spotIm_f, d_pSLM_f, d_weights, l, d_pSLMstart_f, d_Iobtained, (l==(num_iterations-1)), d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f);
        M_CHECK_ERROR();
        cudaThreadSynchronize();
      }

      if (saveI_b)
        M_SAFE_CALL(cudaMemcpy(intensity, d_Iobtained, num_spots*(num_iterations)*sizeof(float), cudaMemcpyDeviceToHost));
      else
        M_SAFE_CALL(cudaMemcpy(intensity, d_weights, num_spots*(num_iterations)*sizeof(float), cudaMemcpyDeviceToHost));
      M_SAFE_CALL(cudaMemcpy(hologram, d_pSLM_uc, memsize_SLMuc, cudaMemcpyDeviceToHost));

      t = get_clock() - t;
      printf("Total time = %12.8lf seconds\n", t);
      printf("Time/iteration = %12.8lf seconds\n", t/((double) num_iterations));
      break;
    case 100:
      // Apply corrections to pre-calculated hologram
      M_SAFE_CALL(cudaMemcpy(d_pSLM_uc, hologram, memsize_SLMuc, cudaMemcpyHostToDevice));
      ApplyCorrections<<<n_blocks_Phi, BLOCK_SIZE >>>(d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f);
      M_SAFE_CALL(cudaMemcpy(hologram, d_pSLM_uc, memsize_SLMuc, cudaMemcpyDeviceToHost));
      break;
    default:
      break;
  }

  // Handle CUDA errors
  status = cudaGetLastError();
  return status;
}

// Set correction parameters
int corrections(int UseAberrationCorr, float *h_AberrationCorr, int UseLUTPol, int PolOrder, float *h_LUTPolCoeff, int saveAmplitudes, float alpha, int UseLUT, unsigned char *h_LUT_uc)
{
  UseAberrationCorr_b = (bool) UseAberrationCorr;
  cudaMemcpyToSymbol(c_useAberrationCorr_b, &UseAberrationCorr_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  UsePolLUT_b = (bool) UseLUTPol;
  cudaMemcpyToSymbol(c_usePolLUT_b, &UsePolLUT_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  saveI_b = (bool) saveAmplitudes;
  cudaMemcpyToSymbol(c_saveI_b, &saveI_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  ApplyLUT_b = (bool) UseLUT;
  cudaMemcpyToSymbol(c_applyLUT_b, &ApplyLUT_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  alphaRPC_f = alpha*2.0f*M_PI;
  if (alpha < 1.0f)
    useRPC_b = true;
  else
    useRPC_b = false;
  cudaMemcpyToSymbol(c_alphaRPC_f, &alphaRPC_f, sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_useRPC_b, &useRPC_b, sizeof(bool), 0, cudaMemcpyHostToDevice);

  int Ncoeff[5] = {20, 35, 56, 84, 120};

  if ((3 <= PolOrder) && (PolOrder <= 7)) {
    N_PolLUTCoeff = Ncoeff[PolOrder - 3];
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
    UseAberrationCorr_b = !cudaMemcpy(d_AberrationCorr_f, h_AberrationCorr, memsize_SLM_f, cudaMemcpyHostToDevice);
  }
  else if (d_AberrationCorr_f != NULL)  //If memory is allocated: free memory and reset pointer to NULL
  {
    cudaFree(d_AberrationCorr_f);
    d_AberrationCorr_f = NULL;
  }
  if(UsePolLUT_b)
  {
    if (d_LUTPolCoeff_f == NULL)          //Allocate memory only if not already allocated
      cudaMalloc((void**)&d_LUTPolCoeff_f, 120*sizeof(float));
    UsePolLUT_b = !cudaMemcpy(d_LUTPolCoeff_f, h_LUTPolCoeff, N_PolLUTCoeff*sizeof(float), cudaMemcpyHostToDevice);
  }
  else if (d_LUTPolCoeff_f!=NULL) //If memory is allocated: free memory and reset pointer to NULL
  {
    cudaFree(d_LUTPolCoeff_f);
    d_LUTPolCoeff_f = NULL;
  }

  if(ApplyLUT_b&&(!UsePolLUT_b))
  {
    if (d_LUT_uc == NULL)         //Allocate memory only if not already allocated
      cudaMalloc((void**)&d_LUT_uc, 256*sizeof(unsigned char));
    UseLUT = !cudaMemcpy(d_LUT_uc, h_LUT_uc, 256*sizeof(unsigned char), cudaMemcpyHostToDevice);
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

// Allocate GPU memory and start up SLM
int setup(float *h_init_phases)
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
  int half_w = (int)(data_w/2);
  cudaMemcpyToSymbol(c_half_w, &half_w, sizeof(int), 0, cudaMemcpyHostToDevice);
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
  M_SAFE_CALL(cudaMalloc((void**)&d_pSLM_uc, memsize_SLMuc));
  M_SAFE_CALL(cudaMemset(d_pSLMstart_f, 0, N_pixels*sizeof(float)));

  M_SAFE_CALL(cudaMemcpy(d_pSLM_f, h_init_phases, N_pixels*sizeof(float), cudaMemcpyHostToDevice));

  status = cudaGetLastError();
  return status;
}

// Free GPU memory and shut down SLM
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
  M_SAFE_CALL(cudaFree(d_pSLM_uc));

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

// Device functions

__device__ float uc2phase(float uc)
{
  return (float) (uc * 2.0f * M_PI/256.0f - M_PI);
}

__device__ unsigned char phase2uc(float phase2pi)
{
  return (unsigned char) floor((phase2pi + M_PI) * 256.0f / (2.0f * M_PI));
}

__device__ int phase2int32(float phase2pi)
{
  return (int) floor((phase2pi + M_PI) * 256.0f / (2.0f * M_PI));
}

__device__ float ApplyAberrationCorrection(float pSpot, float correction)
{
  pSpot = pSpot - correction;   //apply correction
  return (pSpot - (2.0f * M_PI) * floor((pSpot + M_PI) / (2.0f * M_PI))); //apply mod([-pi, pi], pSpot)
}

__device__ int getXint(int index)
{
#ifdef SLMPOW2
  int X_int = index & (c_data_w[0] - 1);
#else
  float X_int= index % c_data_w[0];
#endif
  return X_int;
}

__device__ int getYint(int index, int X_int)
{
#ifdef SLMPOW2
  int Y_int = (index - X_int) >> c_log2data_w[0];
#else
  int Y_int = (float) (floor((float) index/c_data_w_f[0]));
#endif
  return Y_int;
}

__device__ unsigned char applyPolLUT(float phase2pi, float X, float Y, float *s_c)
{
  float phase255 = 0.0f;
  switch (c_N_PolLUTCoeff[0]) {
    case 120:
      phase255 += s_c[84]*X*X*X*X*X*X*X;
      phase255 += s_c[85]*X*X*X*X*X*X*Y;
      phase255 += s_c[86]*X*X*X*X*X*X*phase2pi;
      phase255 += s_c[87]*X*X*X*X*X*Y*Y;
      phase255 += s_c[88]*X*X*X*X*X*Y*phase2pi;
      phase255 += s_c[89]*X*X*X*X*X*phase2pi*phase2pi;
      phase255 += s_c[90]*X*X*X*X*Y*Y*Y;
      phase255 += s_c[91]*X*X*X*X*Y*Y*phase2pi;
      phase255 += s_c[92]*X*X*X*X*Y*phase2pi*phase2pi;
      phase255 += s_c[93]*X*X*X*X*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[94]*X*X*X*Y*Y*Y*Y;
      phase255 += s_c[95]*X*X*X*Y*Y*Y*phase2pi;
      phase255 += s_c[96]*X*X*X*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[97]*X*X*X*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[98]*X*X*X*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[99]*X*X*Y*Y*Y*Y*Y;
      phase255 += s_c[100]*X*X*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[101]*X*X*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[102]*X*X*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[103]*X*X*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[104]*X*X*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[105]*X*Y*Y*Y*Y*Y*Y;
      phase255 += s_c[106]*X*Y*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[107]*X*Y*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[108]*X*Y*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[109]*X*Y*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[110]*X*Y*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[111]*X*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[112]*Y*Y*Y*Y*Y*Y*Y;
      phase255 += s_c[113]*Y*Y*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[114]*Y*Y*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[115]*Y*Y*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[116]*Y*Y*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[117]*Y*Y*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[118]*Y*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[119]*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
    case 84:
      phase255 += s_c[56]*X*X*X*X*X*X;
      phase255 += s_c[57]*X*X*X*X*X*Y;
      phase255 += s_c[58]*X*X*X*X*X*phase2pi;
      phase255 += s_c[59]*X*X*X*X*Y*Y;
      phase255 += s_c[60]*X*X*X*X*Y*phase2pi;
      phase255 += s_c[61]*X*X*X*X*phase2pi*phase2pi;
      phase255 += s_c[62]*X*X*X*Y*Y*Y;
      phase255 += s_c[63]*X*X*X*Y*Y*phase2pi;
      phase255 += s_c[64]*X*X*X*Y*phase2pi*phase2pi;
      phase255 += s_c[65]*X*X*X*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[66]*X*X*Y*Y*Y*Y;
      phase255 += s_c[67]*X*X*Y*Y*Y*phase2pi;
      phase255 += s_c[68]*X*X*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[69]*X*X*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[70]*X*X*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[71]*X*Y*Y*Y*Y*Y;
      phase255 += s_c[72]*X*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[73]*X*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[74]*X*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[75]*X*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[76]*X*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[77]*Y*Y*Y*Y*Y*Y;
      phase255 += s_c[78]*Y*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[79]*Y*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[80]*Y*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[81]*Y*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[82]*Y*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[83]*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
    case 56:
      phase255 += s_c[35]*X*X*X*X*X;
      phase255 += s_c[36]*X*X*X*X*Y;
      phase255 += s_c[37]*X*X*X*X*phase2pi;
      phase255 += s_c[38]*X*X*X*Y*Y;
      phase255 += s_c[39]*X*X*X*Y*phase2pi;
      phase255 += s_c[40]*X*X*X*phase2pi*phase2pi;
      phase255 += s_c[41]*X*X*Y*Y*Y;
      phase255 += s_c[42]*X*X*Y*Y*phase2pi;
      phase255 += s_c[43]*X*X*Y*phase2pi*phase2pi;
      phase255 += s_c[44]*X*X*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[45]*X*Y*Y*Y*Y;
      phase255 += s_c[46]*X*Y*Y*Y*phase2pi;
      phase255 += s_c[47]*X*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[48]*X*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[49]*X*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[50]*Y*Y*Y*Y*Y;
      phase255 += s_c[51]*Y*Y*Y*Y*phase2pi;
      phase255 += s_c[52]*Y*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[53]*Y*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[54]*Y*phase2pi*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[55]*phase2pi*phase2pi*phase2pi*phase2pi*phase2pi;
    case 35:
      phase255 += s_c[20]*X*X*X*X;
      phase255 += s_c[21]*X*X*X*Y;
      phase255 += s_c[22]*X*X*X*phase2pi;
      phase255 += s_c[23]*X*X*Y*Y;
      phase255 += s_c[24]*X*X*Y*phase2pi;
      phase255 += s_c[25]*X*X*phase2pi*phase2pi;
      phase255 += s_c[26]*X*Y*Y*Y;
      phase255 += s_c[27]*X*Y*Y*phase2pi;
      phase255 += s_c[28]*X*Y*phase2pi*phase2pi;
      phase255 += s_c[29]*X*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[30]*Y*Y*Y*Y;
      phase255 += s_c[31]*Y*Y*Y*phase2pi;
      phase255 += s_c[32]*Y*Y*phase2pi*phase2pi;
      phase255 += s_c[33]*Y*phase2pi*phase2pi*phase2pi;
      phase255 += s_c[34]*phase2pi*phase2pi*phase2pi*phase2pi;
    case 20:
      phase255 += s_c[0];
      phase255 += s_c[1]*X;
      phase255 += s_c[2]*Y;
      phase255 += s_c[3]*phase2pi;
      phase255 += s_c[4]*X*X;
      phase255 += s_c[5]*X*Y;
      phase255 += s_c[6]*X*phase2pi;
      phase255 += s_c[7]*Y*Y;
      phase255 += s_c[8]*Y*phase2pi;
      phase255 += s_c[9]*phase2pi*phase2pi;
      phase255 += s_c[10]*X*X*X;
      phase255 += s_c[11]*X*X*Y;
      phase255 += s_c[12]*X*X*phase2pi;
      phase255 += s_c[13]*X*Y*Y;
      phase255 += s_c[14]*X*Y*phase2pi;
      phase255 += s_c[15]*X*phase2pi*phase2pi;
      phase255 += s_c[16]*Y*Y*Y;
      phase255 += s_c[17]*Y*Y*phase2pi;
      phase255 += s_c[18]*Y*phase2pi*phase2pi;
      phase255 += s_c[19]*phase2pi*phase2pi*phase2pi;
      break;
    default:
      phase255 = 0.0f;
      break;
  }
  if (phase255 < 0.0f)
    phase255 = 0.0f;
  return (unsigned char)(phase255);
}

// Performs intra-warp reduction
__device__ void warpReduceC(volatile float *s_Vre, volatile float *s_Vim, int tid)
{
  s_Vre[tid] += s_Vre[tid + 32];
  s_Vim[tid] += s_Vim[tid + 32];

  s_Vre[tid] += s_Vre[tid + 16];
  s_Vim[tid] += s_Vim[tid + 16];

  s_Vre[tid] += s_Vre[tid + 8];
  s_Vim[tid] += s_Vim[tid + 8];

  s_Vre[tid] += s_Vre[tid + 4];
  s_Vim[tid] += s_Vim[tid + 4];

  s_Vre[tid] += s_Vre[tid + 2];
  s_Vim[tid] += s_Vim[tid + 2];

  s_Vre[tid] += s_Vre[tid + 1];
  s_Vim[tid] += s_Vim[tid + 1];
}

inline int computeAndCopySpotData(float *h_I, float *x, float *y, float *z, int N_spots, int method)
{
  //float Isum = 0.0f;
  //for (int i = 0; i<N_spots; i++)
  //  Isum += h_I[i];
  for (int j = 0; j < N_spots; j++) {
    float sincx_rec = (x[j] == 0) ? 1.0f : ((M_PI * x[j]/SLMsizef)/sinf(M_PI * x[j]/SLMsizef));
    float sincy_rec = (y[j] == 0) ? 1.0f : ((M_PI * y[j]/SLMsizef)/sinf(M_PI * y[j]/SLMsizef));
    h_desiredAmp[j] = (h_I[j] <= 0.0f) ? 1.0f : (sincx_rec * sincy_rec * sqrtf(h_I[j]/100) * SLMsizef * SLMsizef);
  }
  cudaMemcpyToSymbol(c_x, x, N_spots*sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_y, y, N_spots*sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_z, z, N_spots*sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_desiredAmp, h_desiredAmp, N_spots*sizeof(float), 0, cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(c_N_spots, &N_spots, sizeof(int), 0, cudaMemcpyHostToDevice);

  if (N_spots == 0)
    method = -1;

  return method;
}

// Apply corrections to precalculated hologram
__global__ void ApplyCorrections(unsigned char *g_pSLM_uc, unsigned char *g_LUT, float *g_AberrationCorr_f, float *g_LUTPolCoeff_f)
{
  int tid = threadIdx.x;
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  float pSLM2pi_f = uc2phase(g_pSLM_uc[idx]);
  if (c_useAberrationCorr_b[0])
    pSLM2pi_f = ApplyAberrationCorrection(pSLM2pi_f, g_AberrationCorr_f[idx]);

  if (c_usePolLUT_b[0])
  {
    int X_int = getXint(idx);
    int Y_int = getYint(idx, X_int);
    float X = c_SLMpitch_f[0]*(X_int - c_half_w_f[0]);
    float Y = c_SLMpitch_f[0]*(Y_int - c_half_w_f[0]);
    __shared__ float s_LUTcoeff[120];
    if (tid < c_N_PolLUTCoeff[0])
      s_LUTcoeff[tid] = g_LUTPolCoeff_f[tid];
    __syncthreads();
    g_pSLM_uc[idx] = applyPolLUT(pSLM2pi_f, X, Y, s_LUTcoeff);
  }
  else if (c_applyLUT_b[0])
  {
    __shared__ unsigned char s_LUT[256];
    if (tid < 256)
      s_LUT[tid] = g_LUT[tid];
    __syncthreads();
    g_pSLM_uc[idx] = s_LUT[phase2int32(pSLM2pi_f)];
  }
  else
    g_pSLM_uc[idx] = phase2uc(pSLM2pi_f);
}

// Calculate hologram using "Lenses and Prisms"
__global__ void LensesAndPrisms(unsigned char *g_SLMuc, unsigned char *g_LUT, float *d_AberrationCorr_f, float *d_LUTPolCoeff_f)
{
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  int tid = threadIdx.x;

  if (idx < c_N_pixels[0])
  {
    //get pixel coordinates
    int X_int = getXint(idx);
    int Y_int = getYint(idx, X_int);
    float X = c_SLMpitch_f[0]*(X_int - c_half_w_f[0]);
    float Y = c_SLMpitch_f[0]*(Y_int - c_half_w_f[0]);

    float phase2pi;
    float SLMre = 0.0f;
    float SLMim = 0.0f;

    for (int ii=0; ii<c_N_spots[0]; ++ii)
    {
      //add variable phases to function call
      phase2pi = M_PI * c_z[ii] * (X*X + Y*Y) + 2.0f * M_PI * (X * (c_x[ii]) + Y * (c_y[ii]) );
      SLMre = SLMre + c_desiredAmp[ii] * cosf(phase2pi);
      SLMim = SLMim + c_desiredAmp[ii] * sinf(phase2pi);
    }
    phase2pi = atan2f(SLMim, SLMre);  // [-pi,pi]

    if (c_useAberrationCorr_b[0])
      phase2pi = ApplyAberrationCorrection(phase2pi, d_AberrationCorr_f[idx]);

    if (c_usePolLUT_b[0])
    {
      __shared__ float s_LUTcoeff[120];
      if (tid < c_N_PolLUTCoeff[0])
        s_LUTcoeff[tid] = d_LUTPolCoeff_f[tid];
      __syncthreads();
      g_SLMuc[idx] = applyPolLUT(phase2pi, X, Y, s_LUTcoeff);
    }
    else if (c_applyLUT_b[0])
    {
      __shared__ unsigned char s_LUT[256];
      if (tid < 256)
        s_LUT[tid] = g_LUT[tid];
      __syncthreads();
      g_SLMuc[idx] = s_LUT[phase2int32(phase2pi)];
    }
    else
      g_SLMuc[idx] = phase2uc(phase2pi);
  }
}

__global__ void calculateIobtained(unsigned char *g_pSLM_uc, float *g_Iobtained)
{
  int blockSize = c_data_w[0];
  int spot_number = blockIdx.x;
  int tid = threadIdx.x;
  int i = tid;

  __shared__ float s_Vre[SLM_SIZE];
  __shared__ float s_Vim[SLM_SIZE];

  s_Vre[tid] = 0.0f;
  s_Vim[tid] = 0.0f;

  float X = c_SLMpitch_f[0] * ((float)tid - c_half_w_f[0]);
  float Y = - c_SLMpitch_f[0] * c_half_w_f[0];

  float pSLM_1;
  float p;
  while (i < c_N_pixels[0])
  {
    pSLM_1 = 2.0f*M_PI*(float)g_pSLM_uc[i]/255.0f - M_PI;
    p = pSLM_1 - M_PI * (c_z[spot_number] * (X*X + Y*Y) + 2 * (X * c_x[spot_number] + Y * c_y[spot_number]));

    s_Vre[tid] += cosf(p);
    s_Vim[tid] += sinf(p);

    i += blockSize;
    Y += c_SLMpitch_f[0];
  }
  /*__syncthreads();
  if (tid < 512)
  {
    s_Vre[tid] += s_Vre[tid + 512];
    s_Vim[tid] += s_Vim[tid + 512];
  } */
  __syncthreads();
  if ((tid < 256)&&(SLM_SIZE>256))
  {
    s_Vre[tid] += s_Vre[tid + 256];
    s_Vim[tid] += s_Vim[tid + 256];
  }
  __syncthreads();

  if (tid < 128)
  {
    s_Vre[tid] += s_Vre[tid + 128];
    s_Vim[tid] += s_Vim[tid + 128];
  }
  __syncthreads();

  if (tid < 64)
  {
    s_Vre[tid] += s_Vre[tid + 64];
    s_Vim[tid] += s_Vim[tid + 64];
  }
  __syncthreads();

  if (tid < 32)
    warpReduceC(s_Vre, s_Vim, tid);

  if (tid == 0)
  {
    float spotRe_f = s_Vre[0] / c_N_pixels_f[0];      //512!
    float spotIm_f = s_Vim[0] / c_N_pixels_f[0];
    float amp = hypotf(spotRe_f, spotIm_f);
    g_Iobtained[spot_number] = amp*amp;
  }
}
__global__ void calculateIandPhase(unsigned char *g_pSLM_uc, float *g_Iobtained, float *g_Pobtained)
{
  int blockSize = c_data_w[0];
  int spot_number = blockIdx.x;
  int tid = threadIdx.x;
  int i = tid;

  __shared__ float s_Vre[SLM_SIZE];
  __shared__ float s_Vim[SLM_SIZE];

  s_Vre[tid] = 0.0f;
  s_Vim[tid] = 0.0f;

  float X = c_SLMpitch_f[0] * ((float)tid - c_half_w_f[0]);
  float Y = - c_SLMpitch_f[0] * c_half_w_f[0];

  float pSLM_1;
  float p;
  while (i < c_N_pixels[0])
  {
    pSLM_1 = 2.0f*M_PI*(float)g_pSLM_uc[i]/255.0f - M_PI;
    p = pSLM_1 - M_PI * (c_z[spot_number] * (X*X + Y*Y) + 2 * (X * c_x[spot_number] + Y * c_y[spot_number]));

    s_Vre[tid] += cosf(p+2*M_PI*c_z[spot_number]);
    s_Vim[tid] += sinf(p+2*M_PI*c_z[spot_number]);

    i += blockSize;
    Y += c_SLMpitch_f[0];
  }
  /*__syncthreads();
  if (tid < 512)
  {
    s_Vre[tid] += s_Vre[tid + 512];
    s_Vim[tid] += s_Vim[tid + 512];
  } */
  __syncthreads();
  if ((tid < 256)&&(SLM_SIZE>256))
  {
    s_Vre[tid] += s_Vre[tid + 256];
    s_Vim[tid] += s_Vim[tid + 256];
  }
  __syncthreads();

  if (tid < 128)
  {
    s_Vre[tid] += s_Vre[tid + 128];
    s_Vim[tid] += s_Vim[tid + 128];
  }
  __syncthreads();

  if (tid < 64)
  {
    s_Vre[tid] += s_Vre[tid + 64];
    s_Vim[tid] += s_Vim[tid + 64];
  }
  __syncthreads();

  if (tid < 32)
    warpReduceC(s_Vre, s_Vim, tid);

  if (tid == 0)
  {
    float spotRe_f = s_Vre[0] / c_N_pixels_f[0];      //512!
    float spotIm_f = s_Vim[0] / c_N_pixels_f[0];
    float amp = hypotf(spotRe_f, spotIm_f);
    g_Pobtained[spot_number] = atan2f(spotIm_f , spotRe_f);
    g_Iobtained[spot_number] = amp*amp;
  }
}

// Functions for GS with Fresnel propagation

// Propagate from the SLM to the spot positions using Fresnel summation
// works only for blocksize = SLMsize
__global__ void PropagateToSpotPositions_Fresnel(float *g_pSLM2pi, float *g_spotRe_f, float *g_spotIm_f)
{
  __shared__ float s_Vre[SLM_SIZE];
  __shared__ float s_Vim[SLM_SIZE];

  int spot_number = blockIdx.x;
  int tid = threadIdx.x;
  int i = tid;

  s_Vre[tid] = 0.0f;
  s_Vim[tid] = 0.0f;
  int blockSize = blockDim.x;
  float X = c_SLMpitch_f[0] * ((float)tid - c_half_w_f[0]);
  float Y = - c_SLMpitch_f[0] * c_half_w_f[0];
  float p;

  while (i < c_N_pixels[0]) {
    p = g_pSLM2pi[i] - M_PI * (c_z[spot_number] * (X*X + Y*Y) + 2.0f * (X * c_x[spot_number] + Y * c_y[spot_number]));

    s_Vre[tid] += cosf(p);
    s_Vim[tid] += sinf(p);

    i += blockSize;
    Y += c_SLMpitch_f[0];
  }
  /*__syncthreads();

  if (tid < 512)
  {
    s_Vre[tid] += s_Vre[tid + 512];
    s_Vim[tid] += s_Vim[tid + 512];
  } */
  __syncthreads();

  if ((tid < 256)&&(SLM_SIZE>256)) {
    s_Vre[tid] += s_Vre[tid + 256];
    s_Vim[tid] += s_Vim[tid + 256];
  }
  __syncthreads();

  if (tid < 128) {
    s_Vre[tid] += s_Vre[tid + 128];
    s_Vim[tid] += s_Vim[tid + 128];
  }
  __syncthreads();

  if (tid < 64) {
    s_Vre[tid] += s_Vre[tid + 64];
    s_Vim[tid] += s_Vim[tid + 64];
  }
  __syncthreads();

  if (tid < 32)
    warpReduceC(s_Vre, s_Vim, tid);

  if (tid == 0) {
    g_spotRe_f[spot_number] = s_Vre[0];// / c_N_pixels_f[0];
    g_spotIm_f[spot_number] = s_Vim[0];// / c_N_pixels_f[0];
  }
}

// Obtain phases in SLM plane
__global__ void PropagateToSLM_Fresnel(float *g_spotRe_f, float *g_spotIm_f, float *g_pSLM2pi, float *g_weights, int iteration, float *g_pSLMstart, float *g_Iobtained, bool getpSLM255, unsigned char *g_pSLM255_uc, unsigned char *g_LUT, float *g_AberrationCorr_f, float *g_LUTPolCoeff_f)
{
  __shared__ float s_aSpot[MAX_SPOTS], s_aSpotsMean, s_weight[MAX_SPOTS], s_pSpot[MAX_SPOTS];
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  int tid = threadIdx.x;

  float reSLM = 0.0f, imSLM = 0.0f, pSLM2pi_f = 0.0f;

  if (idx < c_N_pixels[0]) {
    if (tid < c_N_spots[0]) {
      float spotRe_f = g_spotRe_f[tid];
      float spotIm_f = g_spotIm_f[tid];
      s_pSpot[tid] = atan2f(spotIm_f, spotRe_f);
      s_aSpot[tid] = hypotf(spotRe_f, spotIm_f)/c_desiredAmp[tid];
      if (iteration != 0) {
        s_weight[tid] = g_weights[tid + iteration*c_N_spots[0]];
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
      if (!getpSLM255)                      //Copy weights to use as initial value next run
        g_weights[tid + c_N_spots[0]*(iteration+1)] = s_weight[tid];
      //else
      //  g_weights[tid] = s_weight[tid];             //Transferring weights to next run may give diverging weights
      if (c_saveI_b[0])
        g_Iobtained[tid + c_N_spots[0]*iteration] = s_aSpot[tid]*s_aSpot[tid];      //may be excluded, used for monitoring only
    }
    __syncthreads();

    //get pixel coordinates
    int X_int = getXint(idx);
    int Y_int = getYint(idx, X_int);
    float X = c_SLMpitch_f[0]*(X_int - c_half_w_f[0]);
    float Y = c_SLMpitch_f[0]*(Y_int - c_half_w_f[0]);

    //compute SLM pSpot by summing contribution from all spots
    for (int k = 0; k < c_N_spots[0]; k++) {
      float delta = M_PI * c_z[k] * (X*X + Y*Y) + 2.0f * M_PI * (X * c_x[k] + Y * c_y[k]);
      reSLM += s_weight[k] * cosf(s_pSpot[k] + delta);
      imSLM += s_weight[k] * sinf(s_pSpot[k] + delta);
    }
    pSLM2pi_f = atan2f(imSLM, reSLM);

    if (c_useRPC_b[0]) {      //Apply RPC (restricted Phase Change)
      float pSLMstart = g_pSLMstart[idx];
      if (fabs(pSLM2pi_f - pSLMstart) > c_alphaRPC_f[0])
        pSLM2pi_f = pSLMstart;
      if (getpSLM255)
        g_pSLMstart[idx] = pSLM2pi_f;
    }

    if (getpSLM255) {         //Compute final SLM phases and write to global memory...
      if (c_useAberrationCorr_b[0])
        pSLM2pi_f = ApplyAberrationCorrection(pSLM2pi_f, g_AberrationCorr_f[idx]);

      if (c_usePolLUT_b[0]) {
        __shared__ float s_LUTcoeff[120];
        if (tid < c_N_PolLUTCoeff[0])
          s_LUTcoeff[tid] = g_LUTPolCoeff_f[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = applyPolLUT(pSLM2pi_f, X, Y, s_LUTcoeff);
      } else if (c_applyLUT_b[0]) {
        __shared__ unsigned char s_LUT[256];
        if (tid < 256)
          s_LUT[tid] = g_LUT[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = s_LUT[phase2int32(pSLM2pi_f)];
      } else {
        g_pSLM255_uc[idx] = phase2uc(pSLM2pi_f);
      }
    }
    g_pSLM2pi[idx] = pSLM2pi_f; //...or write intermediate pSpot to global memory
  }
}

// Convert from unsigned char [0, 255] to float [-pi, pi]
__global__ void uc2f(float *f, unsigned char *uc, int N)
{
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    f[idx] = uc[idx]*2.0f*M_PI/256.0f - M_PI;
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

// Calculate amplitudes in positions given by x, y, and z from a given hologram
int get_amp_and_phase(float *x_spots, float *y_spots, float *z_spots, float *h_pSLM_uc, int N_spots_all, int data_w, float *h_I_obt, float *h_Phase_obt)
{
  float *d_Iobtained_all;
  float *d_Pobtained_all;
  cudaMalloc((void**)&d_Iobtained_all, N_spots_all*sizeof(float) );
  cudaMalloc((void**)&d_Pobtained_all, N_spots_all*sizeof(float) );
  cudaMemcpy(d_pSLM_uc, h_pSLM_uc, memsize_SLMuc, cudaMemcpyHostToDevice);
  int offset = 0;
  int N_spots_rem = N_spots_all;
  int N_spots_this;
  while (N_spots_rem > 0)
  {
    N_spots_this = (N_spots_rem > MAX_SPOTS) ? MAX_SPOTS : N_spots_rem;
    cudaMemcpyToSymbol(c_x, x_spots+offset, N_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(c_y, y_spots+offset, N_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(c_z, z_spots+offset, N_spots_this*sizeof(float), 0, cudaMemcpyHostToDevice);
    calculateIandPhase<<<N_spots_this, 512>>>(d_pSLM_uc, d_Iobtained_all+offset, d_Pobtained_all+offset);
    //calculateIobtained(unsigned char *g_pSLM_uc, float *g_Iobtained)
    cudaThreadSynchronize();

    N_spots_rem -= MAX_SPOTS;
    offset += MAX_SPOTS;
  }
  cudaMemcpy(h_I_obt, d_Iobtained_all, N_spots_all*sizeof(float), cudaMemcpyDeviceToHost);
  cudaMemcpy(h_Phase_obt, d_Pobtained_all, N_spots_all*sizeof(float), cudaMemcpyDeviceToHost);
  cudaFree(d_Iobtained_all);
  cudaFree(d_Pobtained_all);

  status = cudaGetLastError();

  return status;
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
__global__ void PropagateToSLM_Fresnel(float *g_x,
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
        pSLM2pi_f = ApplyAberrationCorrection(pSLM2pi_f, g_AberrationCorr_f[idx]);

      if (UsePolLUT_b)
      {
        __shared__ float s_LUTcoeff[120];
        if (tid < N_PolCoeff)
          s_LUTcoeff[tid] = g_LUTPolCoeff_f[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = applyPolLUT(pSLM2pi_f, X, Y, s_LUTcoeff);
      }
      else if (ApplyLUT_b)
      {
        __shared__ unsigned char s_LUT[256];
        if (tid < 256)
          s_LUT[tid] = g_LUT[tid];
        __syncthreads();
        g_pSLM255_uc[idx] = s_LUT[phase2int32(pSLM2pi_f)];
      }
      else
        g_pSLM255_uc[idx] = phase2uc(pSLM2pi_f);
    }
    else
      g_pSLM2pi[idx] = pSLM2pi_f; //...or write intermediate pSpot to global memory
  }
}*/

int main()
{
  srand(1);
  const int numPixels = SLM_SIZE * SLM_SIZE; // 512^2
  const int N = 4; // Four spots
  const int method = 1; // 0 => Direct, 1 => Fresnel, 2 => FFT
  const int iterations = 10; // 10 iterations for convergence

  // These form a quadrant across four planes
  float x[] = {-128.0, -128.0, 127.0, 127.0};
  float y[] = {127.0, -128.0, 127.0, -128.0};
  float z[] = {1.0, 2.0, 3.0, 4.0};
  float I[] = {0.12, 0.34, 0.56, 0.78};

  float *polLUT = (float *) malloc(120 * sizeof(float));
  for (int i = 0; i < 120; i++) {
    polLUT[i] = random() / ((float) RAND_MAX);
  }

  unsigned char *hologram = (unsigned char *) malloc(numPixels * sizeof(unsigned char));
  float *init_phases = (float *) malloc(numPixels * sizeof(float)); // [-pi, pi]
  for (int i = 0; i < numPixels; i++) {
    hologram[i] = 0.0f;
    init_phases[i] = (2.0 * M_PI * (random() / ((float) RAND_MAX))) - M_PI;
  }

  float *amps = (float *) malloc(N * iterations * sizeof(float));
  for (int i = 0; i < N * iterations; i++) {
    amps[i] = 0.0f;
  }

  if (setup(init_phases) != 0) {
    printf("Init failed.\n");
    exit(1);
  }

  if (corrections(0, NULL, 1, 7, polLUT, 1, 1, 0, NULL) != 0) {
    printf("Correction setup failed.\n");
    exit(1);
  }

  double t = get_clock();

  if (generate_hologram(hologram, x, y, z, I, N, iterations, amps, method) != 0) {
    printf("Computation failed.\n");
    exit(1);
  }

  t = get_clock() - t;

  if (finish() != 0) {
    printf("Cleanup failed.\n");
    exit(1);
  }

  printf("Total time = %12.8lf seconds\n", t);

  // Save output
  FILE *hfile = fopen("orig_hologram.dat", "w");
  for (int i = 0; i < numPixels; i++) {
    fprintf(hfile, "%hhu\n", hologram[i]);
  }

  FILE *afile = fopen("orig_amps.dat", "w");
  for (int i = 0; i < N * iterations; i++) {
    fprintf(afile, "%f\n", amps[i]);
  }

  fclose(hfile);
  fclose(afile);

  return 0;
}

