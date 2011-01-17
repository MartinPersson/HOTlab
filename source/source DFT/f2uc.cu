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

