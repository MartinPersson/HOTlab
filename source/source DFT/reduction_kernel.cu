/*   
   Hologram generating algorithms for CUDA Devices
   Copyright 2009, 2010, 2011 Martin Persson 
   martin.persson@physics.gu.se
   
   This file is part of GenerateHologramCUDA.

    GenerateHologramCUDA is free software: you can redistribute it and/or 
    modify it under the terms of the GNU General Public License as published 
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GenerateHologramCUDA is distributed in the hope that it will be 
    useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "GenerateHologramCUDA.h"
//This software contains source code provided by NVIDIA Corporation.

void getNumBlocksAndThreads(int n, int maxBlocks, int maxThreads, int &blocks, int &threads)
{
        if (n == 1) 
            threads = 1;
        else
            threads = (n < maxThreads*2) ? n / 2 : maxThreads;
        blocks = n / (threads * 2);
        blocks = min(maxBlocks, blocks);
}



void Reduce(int  n, int maxThreads, int maxBlocks, float* d_idata, float* d_odata, int offset)
{
    cudaThreadSynchronize();
    
    int numBlocks = 0;
    int numThreads = 0;
    getNumBlocksAndThreads(n, maxBlocks, maxThreads, numBlocks, numThreads);

    // execute the kernel
    reduce(n, numThreads, numBlocks, d_idata, d_odata, offset);

    // sum partial block sums on GPU
    int s=numBlocks;
    while(s > 1) 
    {
        int threads = 0, blocks = 0;
        getNumBlocksAndThreads(s, maxBlocks, maxThreads, blocks, threads);

        reduce(s, threads, blocks, d_odata, d_odata, offset);
        s = s / (threads*2);    
    }
    cudaThreadSynchronize();
  
    return;
}

template <unsigned int blockSize>
__global__ void reduce6(float *g_idata, float *g_odata, unsigned int n, int offset)
{
	extern __shared__ float sdata[];
	unsigned int tid = threadIdx.x;
	unsigned int i = blockIdx.x*(blockSize*2) + tid;
	unsigned int gridSize = blockSize*2*gridDim.x;
	sdata[tid] = 0;
	
	while (i < n) { sdata[tid] += g_idata[i + offset] + g_idata[i+blockSize + offset]; i += gridSize; }
	__syncthreads();
	
	if (blockSize >= 512) { if (tid < 256) { sdata[tid] += sdata[tid + 256]; } __syncthreads(); }
	if (blockSize >= 256) { if (tid < 128) { sdata[tid] += sdata[tid + 128]; } __syncthreads(); }
	if (blockSize >= 128) { if (tid < 64) { sdata[tid] += sdata[tid + 64]; } __syncthreads(); }
	
	if (tid < 32) {
		if (blockSize >= 64) sdata[tid] += sdata[tid + 32];
		if (blockSize >= 32) sdata[tid] += sdata[tid + 16];
		if (blockSize >= 16) sdata[tid] += sdata[tid + 8];
		if (blockSize >= 8) sdata[tid] += sdata[tid + 4];
		if (blockSize >= 4) sdata[tid] += sdata[tid + 2];
		if (blockSize >= 2) sdata[tid] += sdata[tid + 1];
	}
	if (tid == 0) g_odata[blockIdx.x + offset] = sdata[0];
}


////////////////////////////////////////////////////////////////////////////////
// Wrapper function for kernel launch
////////////////////////////////////////////////////////////////////////////////

void reduce(int size, int threads, int blocks, float *d_idata, float *d_odata, int offset)
{
    dim3 dimBlock(threads, 1, 1);
    dim3 dimGrid(blocks, 1, 1);
    int smemSize = threads * sizeof(float);

        switch (threads)
        {
        case 512:
            reduce6<512><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case 256:
            reduce6<256><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case 128:
            reduce6<128><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case 64:
            reduce6<64><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case 32:
            reduce6<32><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case 16:
            reduce6<16><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case  8:
            reduce6<8><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case  4:
            reduce6<4><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case  2:
            reduce6<2><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        case  1:
            reduce6<1><<< dimGrid, dimBlock, smemSize >>>(d_idata, d_odata, size, offset); break;
        }

}
