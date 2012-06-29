/*   
   Header file for GenerateHologramCUDA
   Hologram generating algorithms for CUDA Devices
   
   Copyright 2009, 2010, 2011 Martin Persson 
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
#ifndef GENERATEHOLOGRAMCUDA_H
#define GENERATEHOLOGRAMCUDA_H

//#define M_CUDA_DEBUG
////////////////////////////////////////////////////////////////////////////////
// Includes

#include <stdlib.h>
//#include <stdio.h>
#include <string.h>
#include <math.h>

#include "stdafx.h"
// includes, project

#include <cufft.h>

// Complex data type
typedef float2 cufftComplex;

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif


#define MAX_SPOTS 256
#define BLOCK_SIZE 512
#define SLM_SIZE 512

////////////////////////////////////////////////////////////////////////////////
//Global variables
////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////
// forward declarations
////////////////////////////////////////////////////////////////////////////////
__global__ void f2uc(unsigned char *uc, 
					 float *f, 
					 int N_pixels, 
					 unsigned char *g_LUT, 
					 int use_linLUT, 
					 int data_w);
__global__ void uc2f(float *f, 
					 unsigned char *uc, 
					 int N);

__global__ void p2c(cufftComplex *g_c, float *g_p, int M);

__global__ void LensesAndPrisms(float *g_x, 
								float *g_y, 
								float *g_z, 
								float *g_a, 
								unsigned char *g_SLMuc, 
								int N_spots, 
								unsigned char *g_LUT, 
								bool ApplyLUT_b, 
								int data_w,
								bool UseAberrationCorr_b, 
								float *d_AberrationCorr_f, 
								bool UseLUTPol_b, 
								float *d_LUTPolCoeff_f, 
								int N_PolCoeff);
__global__ void checkAmplitudes(float *g_x, float *g_y, float *g_z, unsigned char *g_pSLM_uc, float *g_amps, int N_spots, int N_pixels, int data_w);

__global__ void PropagateToSLM_Fresnel(float *g_x, 
							float *g_y, 
							float *g_z, 
							float *g_desiredAmp, 
							float *g_cSpotAmpRe, 
							float *g_cSpotAmpIm, 
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
							bool UseLUTPol_b, 
							float *g_LUTPolCoeff_f, 
							int N_PolCoeff, 
							bool saveAmps);

__global__ void PropagateToSLMDC_Fresnel(float *g_x, float *g_y, float *g_z, float *g_pSpot, float *g_wSpot, cufftComplex *g_cSLM_cc, int N_pixels, 
								int N_spots, int iteration, float *g_pSLMstart, float RPC, bool getpSLM255, unsigned char *g_pSLM255_uc,
								unsigned char *g_LUT, bool ApplyLUT_b, bool UseAberrationCorr_b, float *g_AberrationCorr_f, bool UseLUTPol_b, float *g_LUTPolCoeff_f, 
								int N_PolCoeff, bool saveAmps);
__global__ void setActiveRegionToZero(cufftComplex *g_Farfield, int borderWidth);

__global__ void PropagateToSpotPositions_Fresnel(float *g_x, 
									float *g_y, 
									float *g_z, 
									float *g_pSLM2pi, 
									float *g_Vre, 
									float *g_Vim,
									int N_spots, 
									int n, 
									int data_w);

__global__ void PropagateToSpotPositionsDC_Fresnel(float *g_x, 
												   float *g_y, 
												   float *g_z, 
												   cufftComplex *g_cSLM_cc, 
												   float *g_desiredAmp, 
												   float *g_obtainedPhase, 
												   float *g_weights,
												   float *obtainedI,
												   int iteration, 
												   int N_spots, 
												   int n, 
												   int data_w);

__global__ void getPhases(unsigned char *g_pSLMuc, float *g_pSLMstart, cufftComplex *g_cSLMcc, float *g_LUT_coeff, int LUT_on, int data_w);
__global__ void ReplaceAmpsSLM_FFT(float *g_aLaser, cufftComplex *g_cAmp, float *g_pSLMstart, int N_pixels, float RPC, 								
									bool getpSLM255,
									unsigned char *g_pSLM255_uc,
									unsigned char *g_LUT, 
									bool ApplyLUT_b, 
									bool UseAberrationCorr_b, 
									float *g_AberrationCorr_f, 
									bool UseLUTPol_b, 
									float *g_LUTPolCoeff_f, 
									int N_PolCoeff);
__global__ void ReplaceAmpsSpots_FFT(cufftComplex *g_cSpotAmp_cc, cufftComplex *g_cSpotAmpNew_cc, int *g_spotIndex, int N_spots, int iteration, float *g_amplitude, float *g_weight, float *d_I, bool last_iteration, bool save_amps);
__global__ void XYtoIndex(float *g_x, float *g_y, int *g_spot_index, int N_spots, int data_w);
__global__ void ReplaceAmpsSpots_FFT_DC(cufftComplex *g_cSpotAmp_cc, cufftComplex *g_cSpotAmpNew_cc, int *g_spotIndex, int N_spots, int iteration, float *g_amplitude, float *g_weight, float *g_desiredAmp, bool last_iteration, bool save_amps, int data_w);


#define M_CHECK_ERROR() mCheckError(__LINE__, __FILE__) 
#define M_SAFE_CALL(errcode) mSafeCall(errcode, __LINE__, __FILE__)
#define M_CUFFT_SAFE_CALL(cuffterror) mCufftSafeCall(cuffterror, __LINE__, __FILE__)
#define M_DISPLAY_DATA_F(data, length) mDisplayDataF(data, length, __LINE__)
#define M_DISPLAY_DATA_UC(data, length) mDisplayDataUC(data, length, __LINE__)
#define M_DISPLAY_DATA_CC(data, length) mDisplayDataCC(data, length, __LINE__)
#define M_DISPLAY_DATA_I(data, length) mDisplayDataI(data, length, __LINE__)

inline void mSafeCall(cudaError_t status, int line, char *file)
{
#ifdef M_CUDA_DEBUG
	do
	{
		if(status != cudaSuccess)
		{
			char CUDAmessage[200] = "CUDA says: ";
			strcat(CUDAmessage,	cudaGetErrorString(status));
			sprintf(CUDAmessage,	"%s\non line: %d\n", CUDAmessage, line);
			AfxMessageBox(CUDAmessage);
			if (status != CUFFT_SUCCESS)
			exit(-1);
		}
		cudaDeviceSynchronize();
		status = cudaGetLastError();
		if(status!=cudaSuccess)
		{
			char CUDAmessage[200] = "CUDA failed after sychronization:\n";
			strcat(CUDAmessage,	cudaGetErrorString(status));
			sprintf(CUDAmessage,	"%s\non line: %d\n", CUDAmessage, line);
			AfxMessageBox(CUDAmessage);
			exit(-1);
		}
	}while(0);
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
            case CUFFT_UNALIGNED_DATA: strcat(CUDAmessage,"CUFFT_UNALIGNED_DATA\n");break;
            default: strcat(CUDAmessage,"CUFFT Unknown error code\n");

		}
		sprintf(CUDAmessage,	"%son line: %d\nin file: %s", CUDAmessage, line, file);
		AfxMessageBox(CUDAmessage);
		exit(-1);
	}
	cudaDeviceSynchronize();
	cudaError_t status2 = cudaGetLastError();
	if(status2!=cudaSuccess)
	{
			char CUDAmessage[200] = "CUDA failed after sychronization:\n";
			strcat(CUDAmessage,	cudaGetErrorString(status2));
			sprintf(CUDAmessage,	"%s\non line: %d\n", CUDAmessage, line);
			AfxMessageBox(CUDAmessage);
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
			strcat(CUDAmessage,	cudaGetErrorString(status));
			sprintf(CUDAmessage,	"%s\non line: %d\n", CUDAmessage, line);
			AfxMessageBox(CUDAmessage);
			exit(-1);
		}
		cudaDeviceSynchronize();
		status = cudaGetLastError();
		if(status!=cudaSuccess)
		{
			char CUDAmessage[200] = "CUDA failed after sychronization:\n";
			strcat(CUDAmessage,	cudaGetErrorString(status));
			sprintf(CUDAmessage,	"%s\non line: %d\n", CUDAmessage, line);
			AfxMessageBox(CUDAmessage);
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
		sprintf(MessageString,	"Line: %d\nData: ", line);
		for (int ii = 0;ii<length;++ii)
		{
			sprintf(MessageString,	"%s %f", MessageString, h_data[ii]);
		}
		AfxMessageBox(MessageString, MB_ICONINFORMATION);
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
		sprintf(MessageString,	"Line: %d\nData: ", line);
		for (int ii = 0;ii<length;++ii)
		{
			sprintf(MessageString,	"%s re: %f im: %f", MessageString, h_data[ii].x, h_data[ii].y);
		}
		AfxMessageBox(MessageString, MB_ICONINFORMATION);
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
		sprintf(MessageString,	"Line: %d\nData: ", line);
		for (int ii = 0;ii<length;++ii)
		{
			sprintf(MessageString,	"%s %hhu", MessageString, h_data[ii]);
		}
		AfxMessageBox(MessageString, MB_ICONINFORMATION);
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
		sprintf(MessageString,	"Line: %d\nData: ", line);
		for (int ii = 0;ii<length;++ii)
		{
			sprintf(MessageString,	"%s %d", MessageString, h_data[ii]);
		}
		AfxMessageBox(MessageString, MB_ICONINFORMATION);
		free(h_data);
	}while(0);
#endif
	return;
}


#endif