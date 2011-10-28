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

////////////////////////////////////////////////////////////////////////////////
// Includes

#include <stdlib.h>
//#include <stdio.h>
#include <string.h>
//#include <math.h>
#include "stdafx.h"
// includes, project

#include <cufft.h>

// Complex data type
typedef float2 cufftComplex;

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

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
							float *g_I, 
							float *g_SpotsRe, 
							float *g_SpotsIm, 
							float *g_pSLM2pi, 
							int N_pixels, 
							int N_spots, 
							float *g_weights, 
							int iteration, 
							float *g_pSLM_start, 
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
							int N_PolCoeff);
__global__ void PropagateToSpotPositions_Fresnel(float *g_x, 
									float *g_y, 
									float *g_z, 
									float *g_pSLM2pi, 
									float *g_Vre, 
									float *g_Vim,
									int N_spots, 
									int n, 
									int data_w);

__global__ void getPhases(unsigned char *g_pSLMuc, float *g_pSLM_start, cufftComplex *g_cSLMcc, float *g_LUT_coeff, int LUT_on, int data_w);
__global__ void ReplaceAmpsSLM_FFT(float *g_aLaser, cufftComplex *g_cAmp, float *g_pSLM_start, int N_pixels, float RPC);
__global__ void ReplaceAmpsSpots_FFT(cufftComplex *g_cSpotAmpObtained, cufftComplex *g_cSpotAmpDesired, int *g_spotIndex, int N_spots, int iteration, float *g_amplitude, float *g_weight, float amp_desired);
__global__ void XYtoIndex(float *g_x, float *g_y, int *g_spot_index, int N_spots, int data_w);
#endif