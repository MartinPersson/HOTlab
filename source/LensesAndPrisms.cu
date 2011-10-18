/*   
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
#include "GenerateHologramCUDA.h"

__global__ void LensesAndPrisms(float *g_x, float *g_y, float *g_z, float *g_I, unsigned char *g_SLMuc, int N_spots, unsigned char *g_LUT, bool ApplyLUTFile_b, int data_w, bool UseAberrationCorr_b, float *d_AberrationCorr_f, bool UseLUTPol_b, float *d_LUTPolCoeff_f, int N_PolCoeff)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;
	
	__shared__ float s_x[BLOCK_SIZE];
	__shared__ float s_y[BLOCK_SIZE];
	__shared__ float s_z[BLOCK_SIZE];
	__shared__ float s_a[BLOCK_SIZE];
	__shared__ unsigned char s_LUT[256];	
	if (tid < N_spots)
	{
		s_x[tid] = g_x[tid];
		s_y[tid] = g_y[tid];
		s_z[tid] = g_z[tid];
		s_a[tid] = sqrtf(g_I[tid]);
	}
	__syncthreads();
	if (ApplyLUTFile_b)
	{
		if (tid < 256)
		{
			int j = 0;
			while (j < 256)
			{
				s_LUT[tid + j] = g_LUT[tid + j];
				j += BLOCK_SIZE;
			}
		}
	}		
	
	if (idx < data_w*data_w)
	{
		float N = data_w;
		int logN = (int)log2(N);
		int X_int = idx&(int)(N-1);
	 	//int Y_int = (idx&(int)(N*N-1)-X_int)>>logN;
	 	int Y_int = (idx-X_int)>>logN;
	 	float X = (float)(X_int - (data_w>>1)) / data_w;
 		float Y = (float)(Y_int - (data_w>>1)) / data_w;
		
		float phase2pi;
		float phase255;
		float SLMre = 0;
		float SLMim = 0;
				
		for (int ii=0; ii<N_spots; ++ii)
		{
			phase2pi = M_PI * s_z[ii] * (X*X + Y*Y) + 2.0 * M_PI * (X * (s_x[ii]) + Y * (s_y[ii]) );
			SLMre = SLMre + s_a[ii] * cosf(phase2pi);
			SLMim = SLMim + s_a[ii] * sinf(phase2pi); 
		}
		
		phase2pi = atan2f(SLMim, SLMre) + M_PI;	
		if (UseAberrationCorr_b)
		{
			float AberrationCorr_f = d_AberrationCorr_f[idx];
			phase2pi = phase2pi + AberrationCorr_f;
			//modulus!!!
		}

		if (ApplyLUTFile_b) 
		{			
			__syncthreads();
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_SLMuc[idx] = s_LUT[(unsigned char)phase255];
		}
		else
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_SLMuc[idx] = (unsigned char)phase255;
		}
	}	
	__syncthreads();

}

__global__ void checkAmplitudes(float *g_x, float *g_y, float *g_z, unsigned char *g_pSLM_uc, float *g_amps, int N_spots, unsigned int N_pixels, int data_w)
{
	int blockSize = 512;
	int spot_number = blockIdx.x;
	unsigned int tid = threadIdx.x;
	unsigned int i = tid;
	
	__shared__ float s_Vre[512];
	__shared__ float s_Vim[512];
	__shared__ float s_xm, s_ym, s_zm;

	s_Vre[tid] = 0;
	s_Vim[tid] = 0;
		
	float N = data_w;
	int logN = (int)log2(N);
	float d = 0.001953125;	//SLM pixel size (1/512)
	
	if (tid == 0)
		s_xm = g_x[spot_number];
	if (tid == 64)
		s_ym = g_y[spot_number];	
	if (tid == 128)
		s_zm = g_z[spot_number];
	
	float X1 = d * ((float)tid - 256.0);
	float Y1 = - d * 256.0;	
	__syncthreads();
		
	while (i < N_pixels) 
	{ 
		float pSLM_1 = 2*M_PI*(float)g_pSLM_uc[i] - M_PI;
		float p = pSLM_1 - M_PI * (s_zm * (X1*X1 + Y1*Y1) + 2 * (X1 * s_xm + Y1 * s_ym));
		
		s_Vre[tid] += cosf(p);
		s_Vim[tid] += sinf(p);

		i += blockSize;
		Y1 += d; 	
	}
	__syncthreads();
 
	if (tid < 256) 
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

	
	if (tid < 32) {

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
	if (tid == 0) 
	{
		float Vre = s_Vre[0] / 262144.0;
		float Vim = s_Vim[0] / 262144.0;
		g_amps[spot_number] = hypotf(Vim, Vre);
	}
}
