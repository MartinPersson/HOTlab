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
    along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
*/
///////////////////////////////////////////////////////////////////////////////////////
//Calculate one matrix for each spot containing its distance to each pixel on the SLM
///////////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void computeDelta(float *g_x, float *g_y, float *g_z, float *g_delta, float *g_ei_delta_re, float *g_ei_delta_im, int N_spots, int N_pixels, int data_w)
{
	float N = data_w;
	int logN = (int)log2(N);
	float d = 1.0/N;
	
	__shared__ float s_x[block_size];
	__shared__ float s_y[block_size];
	__shared__ float s_z[block_size];
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;

	if (threadIdx.x < N_spots)
	{
		s_x[threadIdx.x] = g_x[threadIdx.x];
		s_y[threadIdx.x] = g_y[threadIdx.x];
		s_z[threadIdx.x] = g_z[threadIdx.x];
	}
	__syncthreads();
	int X_int = idx&(int)(N-1);
 	int Y_int = (idx&(int)(N_pixels-1)-X_int)>>logN;		//(idx-X)>>logN gives error for z!=0
 	float X = d * (float)(X_int - 256);
 	float Y = d * (float)(Y_int - 256);
 	
 	for (int m=0; m<N_spots; m++)
	{	
		if (idx<((m+1)*N_pixels) && idx >= m*N_pixels )
		{
			float delta = M_PI * s_z[m] * (X*X + Y*Y) + 2.0 * M_PI * (X * s_x[m] + Y * s_y[m]);
			g_delta[idx] = delta;
			g_ei_delta_re[idx] = cosf(delta);  
			g_ei_delta_im[idx] = sinf(delta); 
		}
	}
	__syncthreads();
}
