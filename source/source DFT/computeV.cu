////////////////////////////////////////////////////////////////////////////////
//Obtain complex field in image plane using Fresnel propagation
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void computeV(float *g_Vre, float *g_Vim, float *g_pSLM, float *g_delta, int N, int N_spots)
{
	float p;	
	float pSLM, aL;
	int idx = blockIdx.x * blockDim.x + threadIdx.x;

	if (idx<N)
	{
		pSLM = g_pSLM[idx];
		for (int ii=0; ii<N_spots; ++ii)
		{
			int id = idx + ii * N;
			p = pSLM - g_delta[id];
 			g_Vre[id] = cosf(p);
			g_Vim[id] = sinf(p);
		}
	}
}


/* Old version (50% slower)
__global__ void computeV(float *g_Vre, float *g_Vim, float *g_pSLM, float *g_delta, int N, int N_spots, float *g_aLaser)
{
	
	int N_tot = N*N_spots;
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int id = idx&(int)(N-1);
	if (idx<N_tot)
	{
		float p;		
		p = g_pSLM[id] - g_delta[idx];
 		g_Vre[idx] = cosf(p) * g_aLaser[id];
		g_Vim[idx] = sinf(p) * g_aLaser[id];
	}
}
*/