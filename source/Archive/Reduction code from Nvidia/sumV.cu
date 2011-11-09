__global__ void sum1(float *g_in, float *g_out, int offset)
{	
	extern __shared__ float s_data[];
	unsigned int tid = threadIdx.x;
	unsigned int i = blockIdx.x*512 + tid;

	s_data[tid] = 0;
	s_data[tid] += g_in[i + offset] + g_in[i+128 + offset] + g_in[i+256 + offset] + g_in[i+256 + 128 + offset]; 
	//s_data[tid] += g_in[i + offset] + g_in[i+256 + offset]; 
	__syncthreads();
	
	//if (tid < 128) 
	//{
	//	s_data[tid] += s_data[tid + 128];
	//	__syncthreads();
	//}
	if (tid < 64) 
	{
		s_data[tid] += s_data[tid + 64];
		__syncthreads();
	}
	if (tid < 32) 
	{
		s_data[tid] += s_data[tid + 32];
		s_data[tid] += s_data[tid + 16];
		s_data[tid] += s_data[tid + 8];
		s_data[tid] += s_data[tid + 4];
		s_data[tid] += s_data[tid + 2];
		s_data[tid] += s_data[tid + 1];
	}
	if (tid == 0) g_out[blockIdx.x + offset] = s_data[0];
}
__global__ void sum2(float *g_in, float *g_out, int offset)
{
	extern __shared__ float s_data[];
	unsigned int tid = threadIdx.x;

	s_data[tid] = 0;

	s_data[tid] += g_in[tid + offset] + g_in[tid + 256 + offset]; 
	__syncthreads();
	if (tid < 128) 
	{
		s_data[tid] += s_data[tid + 128];
	__syncthreads();
	}
	if (tid < 64) 
	{
		s_data[tid] += s_data[tid + 64];
		__syncthreads();
	}
			if (tid < 32) 
	{
		s_data[tid] += s_data[tid + 32];
		s_data[tid] += s_data[tid + 16];
		s_data[tid] += s_data[tid + 8];
		s_data[tid] += s_data[tid + 4];
		s_data[tid] += s_data[tid + 2];
		s_data[tid] += s_data[tid + 1];
	}
	if (tid == 0) g_out[offset] = s_data[0];
}
void sumV(float* d_in, float* d_out, int offset)
{
	sum1<<<512, 128, 128*sizeof(float)>>>(d_in, d_out, offset);
	cudaThreadSynchronize();
	sum2<<<1, 256, 256*sizeof(float)>>>(d_out, d_out, offset);
	cudaThreadSynchronize();
	return;
}