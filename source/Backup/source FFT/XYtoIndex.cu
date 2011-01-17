////////////////////////////////////////////////////////////////////////////////
//Convert from coordinates to spot indices
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

__global__ void XYtoIndex(float *g_x, float *g_y, int *g_spot_index, int N_spots, int data_w)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (i < N_spots)
		g_spot_index[i] = ((int)(g_x[i])&(data_w-1))  + ((int)(g_y[i])&(data_w-1))* data_w;
	
	__syncthreads();
}