#include "GenerateHologramCUDA.h"

__global__ void LensesAndPrisms(float *g_x, float *g_y, float *g_z, float *g_I, unsigned char *g_SLMuc, int N_spots, unsigned char *g_LUT, int use_LUTfile, int data_w)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;
	
	__shared__ float s_x[block_size];
	__shared__ float s_y[block_size];
	__shared__ float s_z[block_size];
	__shared__ float s_a[block_size];
	__shared__ unsigned char s_LUT[256];	
	if (tid < N_spots)
	{
		s_x[tid] = g_x[tid];
		s_y[tid] = g_y[tid];
		s_z[tid] = g_z[tid];
		s_a[tid] = sqrtf(g_I[tid]);
	}
	__syncthreads();
	if (use_LUTfile == 1)
	{
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
		

		if (use_LUTfile == 1) 
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

			
				