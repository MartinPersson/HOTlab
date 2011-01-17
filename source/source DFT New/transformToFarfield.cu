/*   
   Hologram generating algorithms for CUDA Devices
   Copyright 2009, 2010, 2011 Martin Persson 
   martin.persson@physics.gu.se


   This file is part of GenerateHologramCUDA.

    GenerateHologramCUDA is free software: you can redistribute it and/or 
    modify it under the terms of the GNU General Public License as published 
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GenerateHologramCUDA is distributed in the hope that it will be 
    useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "GenerateHologramCUDA.h"

//Works for 512x512 pixels only!
__global__ void transformToFarfield(float *g_x, float *g_y, float *g_z, float *g_pSLM, float *g_Vre, float *g_Vim, int N_spots, unsigned int n, int data_w)
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
		
	while (i < n) 
	{ 
		float pSLM_1 = g_pSLM[i];
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
		g_Vre[spot_number] = s_Vre[0] / 262144.0;
		g_Vim[spot_number] = s_Vim[0] / 262144.0;
	}
}