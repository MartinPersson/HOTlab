/*
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

//////////////////////////////////////////////////////////////////////////
//Compute the phase difference between each pixel in the SLM and each spot
//////////////////////////////////////////////////////////////////////////
__global__ void computeDelta(float *g_x, 
								float *g_y, 
								float *g_z, 
								float *g_delta, 
								float *g_ei_delta_re, 
								float *g_ei_delta_im, 
								int N_spots, 
								int N_pixels, 
								int data_w)
{
	float N = data_w;
	int logN = (int)log2(N);
	float d = 1.0/N;
	
	__shared__ float s_x[block_size];
	__shared__ float s_y[block_size];
	__shared__ float s_z[block_size];
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;

	if (threadIdx.x < N_spots)
	{
		s_x[threadIdx.x] = g_x[threadIdx.x];
		s_y[threadIdx.x] = g_y[threadIdx.x];
		s_z[threadIdx.x] = g_z[threadIdx.x];
	}
	__syncthreads();
	int X_int = idx&(int)(N-1);
 	int Y_int = (idx&(int)(N_pixels-1)-X_int)>>logN;		//(idx-X)>>logN gives error for z!=0
 	float X = d * (float)(X_int - 256);
 	float Y = d * (float)(Y_int - 256);
 	
 	for (int m=0; m<N_spots; m++)
	{	
		if (idx<((m+1)*N_pixels) && idx >= m*N_pixels )
		{
			float delta = M_PI * s_z[m] * (X*X + Y*Y) + 2.0 * M_PI * (X * s_x[m] + Y * s_y[m]);
			g_delta[idx] = delta;
			g_ei_delta_re[idx] = cosf(delta);  
			g_ei_delta_im[idx] = sinf(delta); 
		}
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Obtain complex field in image plane using Fresnel propagation
////////////////////////////////////////////////////////////////////////////////
__global__ void computeV(float *g_Vre, 
							float *g_Vim, 
							float *g_pSLM, 
							float *g_delta, 
							int N, 
							int N_spots)
{
	float p, pSLM;
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

////////////////////////////////////////////////////////////////////////////////
//Compute weights for each spot based on desired and obtaied amplitude
////////////////////////////////////////////////////////////////////////////////
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


////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////
__global__ void computePhi(float *g_Vre, 
							float *g_Vim, 
							float *g_Phi, 
							float *g_ei_dre, 
							float *g_ei_dim, 
							int N_pixels, 
							int N_spots, 
							float *g_weights, 
							int iteration, 
							float *g_pSLM_start, 
							float RPC, 
							float *g_amps_o)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_a[block_size], s_w[block_size], s_Vre[block_size], s_Vim[block_size];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s = g_pSLM_start[idx], ei_dre, ei_dim;

	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_a[tid] = g_amps_o[tid + (iteration-1)*N_spots];

		s_w[tid] = g_weights[tid + iteration*N_spots];
	}
	__syncthreads();
	for (int k=0; k<N_spots; k++)
	{
		ei_dre = g_ei_dre[idx + k*N_pixels];
		ei_dim = g_ei_dim[idx + k*N_pixels];
		re_SLM += s_w[k] * (ei_dre * s_Vre[k] - ei_dim * s_Vim[k]) / s_a[k];
		im_SLM += s_w[k] * (ei_dre * s_Vim[k] + s_Vre[k] * ei_dim) / s_a[k];
	}

	Phi = atan2f(im_SLM, re_SLM);
	
	
	if (RPC < (2.0f*M_PI))
	{	
		if ((fabs(Phi - p_SLM_s)) < RPC)
		{
			g_Phi[idx] = Phi;
		}
		else
		{
			g_Phi[idx] = p_SLM_s;
		}	
	}
	else	
	{
		g_Phi[idx] = Phi;
	}
}