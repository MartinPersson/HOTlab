////////////////////////////////////////////////////////////////////////////////
//reset amplitudes to ones PCR
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

__global__ void resetAmplitudesRPC(float *g_aLaser, cufftComplex *g_cAmp, float *g_pSLM_start, int N_pixels, float RPC)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	

	if (idx<N_pixels)
	{
		float aLaser = g_aLaser[idx];
		float pSLM_start = g_pSLM_start[idx];
		cufftComplex cAmp = g_cAmp[idx];
 		float phase = atan2f(cAmp.y, cAmp.x);
 		
 		if (RPC < (2.0f*M_PI))
		{	
			if (fabs(phase - pSLM_start) < RPC)
			{
				cAmp.x = aLaser*cosf(phase);
				cAmp.y = aLaser*sinf(phase);
			}
			else
			{
				cAmp.x = aLaser*cosf(pSLM_start);
				cAmp.y = aLaser*sinf(pSLM_start);
			}
		}
		else
		{
			cAmp.x = aLaser*cosf(phase);
			cAmp.y = aLaser*sinf(phase);
		}	
		
		g_cAmp[idx].x = cAmp.x;
		g_cAmp[idx].y = cAmp.y;
	}
	__syncthreads();
}