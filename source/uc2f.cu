////////////////////////////////////////////////////////////////////////////////
//Convert unsigned char to float
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void uc2f(float *g_f, unsigned char *g_uc, int N)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<N)
	{
 		float in = g_uc[idx];
 		g_f[idx] = (float)in*(2.0f*M_PI)/255.0f - M_PI;
	}
	__syncthreads();
}