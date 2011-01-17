////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

__global__ void computeWeights(float *g_Vre, float *g_Vim, int N_spots, float *g_weights, int iteration, float *g_amps, int N_pixels)
{

	int tid = threadIdx.x;	
	__shared__ float s_aSpot[block_size], s_aSpot_mean, s_wSpot[block_size], s_Vre[block_size], s_Vim[block_size];


	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_aSpot[tid] = hypotf(s_Vim[tid], s_Vre[tid]);
		s_wSpot[tid] = g_weights[tid + iteration*N_spots];
	}

	__syncthreads();
	if  (tid==0)
	{
		float aSpot_sum = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			aSpot_sum += s_aSpot[kk];
		}
		s_aSpot_mean = aSpot_sum / N_spots; //integer division!!
	}
	__syncthreads();
	
	if (tid<N_spots)
	{
		s_wSpot[tid] = s_wSpot[tid] * s_aSpot_mean / s_aSpot[tid];	
		g_weights[tid + N_spots*(iteration+1)] = s_wSpot[tid];
		g_amps[tid + N_spots*iteration] = s_aSpot[tid];		
	}
}
