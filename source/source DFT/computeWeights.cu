////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void computeWeights(float *g_Vre, 
							float *g_Vim, 
							int N_spots, 
							float *g_weights, 
							int iteration, 
							float *g_amps_o, 
							float *g_I, 
							int N_pixels)
{

	int tid = threadIdx.x;	
	__shared__ float s_aSpot_o[block_size], s_aSpot_mean;
	float Vre, Vim, wSpot;

	if (tid<N_spots)
	{										//the desited amplitude for each spot
		Vre = g_Vre[tid*N_pixels];
		Vim = g_Vim[tid*N_pixels];
		s_aSpot_o[tid] = hypotf(Vim, Vre)/sqrtf(g_I[tid]);	//the obtained amplitude for each spot divided by the desired amplitude	
		wSpot = g_weights[tid + iteration*N_spots];			//the previous weight for each spot
	}

	__syncthreads();
	if  (tid==0)
	{
		float aSpot_sum = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			aSpot_sum += s_aSpot_o[kk];
		}
		s_aSpot_mean = aSpot_sum / N_spots; //integer division!!
	}
	__syncthreads();
	
	if (tid<N_spots)
	{
		wSpot = wSpot * s_aSpot_mean / s_aSpot_o[tid];	
		g_weights[tid + N_spots*(iteration+1)] = wSpot;
		g_amps_o[tid + N_spots*iteration] = s_aSpot_o[tid];		
	}
}
