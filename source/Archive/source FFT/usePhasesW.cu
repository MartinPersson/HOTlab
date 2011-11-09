////////////////////////////////////////////////////////////////////////////////
//Copy phases in desired spots
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"
__global__ void usePhasesW(cufftComplex *g_cSpotAmpObtained, cufftComplex *g_cSpotAmpDesired, int *g_spotIndex, int N_spots, int iteration, float *g_amplitude, float *g_weight, float amp_desired)
{
	int tid = threadIdx.x;
	int spotIndex;
	float phase;
	float amp_new;
	float abs;
	float weight_next;
	cufftComplex cSpotAmp;

	__shared__ float weight_sum[256];

	if (tid < N_spots)
	{
		spotIndex = g_spotIndex[tid];
		cSpotAmp = g_cSpotAmpObtained[spotIndex];
		abs = hypotf(cSpotAmp.x, cSpotAmp.y);
		phase = atan2f(cSpotAmp.y, cSpotAmp.x);
		if (abs < 256)
		{
			abs = powf(256,4);
		}
		weight_next = g_weight[N_spots * (iteration) + tid] * sqrtf(amp_desired / abs);
		weight_sum[tid] = weight_next;
	}

	__syncthreads();	
				
	if (N_spots >= 256) { if (tid < 128) { weight_sum[tid] += weight_sum[tid + 128]; } __syncthreads(); }
	if (N_spots >= 128) { if (tid < 64) { weight_sum[tid] += weight_sum[tid + 64]; } __syncthreads(); }
	if (tid < 32) 
	{
		if (N_spots >= 64) weight_sum[tid] += weight_sum[tid + 32];
		if (N_spots >= 32) weight_sum[tid] += weight_sum[tid + 16];
		if (N_spots >= 16) weight_sum[tid] += weight_sum[tid + 8];
		if (N_spots >= 8) weight_sum[tid] += weight_sum[tid + 4];
		if (N_spots >= 4) weight_sum[tid] += weight_sum[tid + 2];
		if (N_spots >= 2) weight_sum[tid] += weight_sum[tid + 1];
	}

	__syncthreads();
	
	if (tid<N_spots)												
	{
		weight_next = weight_next / weight_sum[0];
		amp_new = weight_next * amp_desired;    
		cSpotAmp.x = cosf(phase) * amp_new;
		cSpotAmp.y = sinf(phase) * amp_new;
		g_cSpotAmpDesired[spotIndex] = cSpotAmp;
		g_weight[N_spots * (iteration + 1) + tid] = weight_next;
		g_amplitude[N_spots * (iteration) + tid] = abs;
	}

	__syncthreads();
}