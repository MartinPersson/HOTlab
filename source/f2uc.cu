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
////////////////////////////////////////////////////////////////////////////////
//Convert float to unsigned char
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void f2uc(unsigned char *g_uc, float *g_f, int N_pixels, unsigned char *g_LUT, int use_LUTfile, int data_w)
{
	__shared__ unsigned char s_LUT[256];
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (use_LUTfile == 1)
	{
		int tid = threadIdx.x;
		if (tid < 256)
		{
			int j = 0;
			while (j < 256)
			{
				s_LUT[tid + j] = g_LUT[tid + j];
				j += block_size;
			}
		}
		__syncthreads();
		if (idx<N_pixels)
		{
			g_uc[idx] = s_LUT[(unsigned char)(((g_f[idx] + M_PI)*255.0/(2.0*M_PI)))];

		}	
	}	
	else
	{
		if (idx<N_pixels)
		{
			g_uc[idx] = (unsigned char)(((g_f[idx] + M_PI)*255.0/(2.0*M_PI)));
		}	
	}
	__syncthreads();
}

