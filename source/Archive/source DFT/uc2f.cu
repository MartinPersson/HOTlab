////////////////////////////////////////////////////////////////////////////////
//Convert unsigned char to float
////////////////////////////////////////////////////////////////////////////////

#include "cuDFTdll.h"

__global__ void uc2f(float *f, unsigned char *uc, int N)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<N)
	{
 		float in = uc[idx];
 		f[idx] = (float)in*(2.0f*M_PI)/255.0f - M_PI;
	}
	__syncthreads();
}