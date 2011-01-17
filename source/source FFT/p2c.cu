////////////////////////////////////////////////////////////////////////////////
//Convert polar to complex
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void p2c(cufftComplex *s_c, float *s_p, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
 		s_c[idx].x = cosf(s_p[idx]);
		s_c[idx].y = sinf(s_p[idx]);
	}
	__syncthreads();
}