////////////////////////////////////////////////////////////////////////////////
//Calculate Phases and return as float
//
//Possible improvements
//-compute powers of X, Y and phase2pi only once and put in registers
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void getPhases(unsigned char *g_pSLMuc, float *g_pSLM_start, cufftComplex *g_cSLMcc, unsigned char *g_LUT, int use_LUTfile, int data_w)
{	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int s_idx;
	int X_shifted, Y_shifted;
	int N_pixels = data_w * data_w;
	__shared__ unsigned char s_LUT[256];
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
	}	
	if (idx<N_pixels)
	{
		float phase255;
		float N = data_w;
		int half_w = data_w/2;
		int logN = (int)log2(N);

		int X = idx&(int)(N-1);
 		int Y = (idx-X)>>logN;
 		
 		if (X < half_w)
		{	
			X_shifted = X + half_w;
			if (Y < half_w)
			{
				Y_shifted = Y + half_w;
				s_idx = idx + (data_w * half_w) + half_w;
			}
			else
			{
				Y_shifted = Y - half_w;
				s_idx = idx - (data_w * half_w) + half_w;
			}
		}
		else
		{
			X_shifted = X - half_w;
			if (Y < half_w)
			{
				Y_shifted = Y + half_w;			
				s_idx = idx + (data_w * half_w) - half_w;
			}
			else
			{
				Y_shifted = Y - half_w;			
				s_idx = idx - (data_w * half_w) - half_w;
			}
		}
 		float phase = atan2f(g_cSLMcc[idx].y, g_cSLMcc[idx].x);
		float phase2pi = M_PI + phase;	
		
		if (use_LUTfile == 1) 
		{
			__syncthreads();
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_pSLM_start[idx] = phase;
			g_pSLMuc[s_idx] = s_LUT[(unsigned char)phase255];
		}
		else
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_pSLM_start[idx] = phase;
			g_pSLMuc[s_idx] = (unsigned char)phase255;
		}	
	}
}
