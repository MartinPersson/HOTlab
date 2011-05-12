/*   
   Hologram generating algorithms for CUDA Devices
   Copyright 2009, 2010, 2011 Martin Persson 
   martin.persson@physics.gu.se


   This file is part of GenerateHologramCUDA.

    GenerateHologramCUDA is free software: you can redistribute it and/or 
    modify it under the terms of the GNU Lesser General Public License as published 
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GenerateHologramCUDA is distributed in the hope that it will be 
    useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "GenerateHologramCUDA.h"

//Works for 512x512 pixels only!
__global__ void transformToFarfield(float *g_x, float *g_y, float *g_z, float *g_pSLM, float *g_Vre, float *g_Vim, int N_spots, unsigned int n, int data_w)
{
	int blockSize = 512;
	int spot_number = blockIdx.x;
	unsigned int tid = threadIdx.x;
	unsigned int i = tid;
	
	__shared__ float s_Vre[512];
	__shared__ float s_Vim[512];
	__shared__ float s_xm, s_ym, s_zm;

	s_Vre[tid] = 0;
	s_Vim[tid] = 0;
		
	float N = data_w;
	int logN = (int)log2(N);
	float d = 0.001953125;	//SLM pixel size (1/512)
	
	if (tid == 0)
		s_xm = g_x[spot_number];
	if (tid == 64)
		s_ym = g_y[spot_number];	
	if (tid == 128)
		s_zm = g_z[spot_number];
	
	float X1 = d * ((float)tid - 256.0);
	float Y1 = - d * 256.0;	
	__syncthreads();
		
	while (i < n) 
	{ 
		float pSLM_1 = g_pSLM[i];
		float p = pSLM_1 - M_PI * (s_zm * (X1*X1 + Y1*Y1) + 2 * (X1 * s_xm + Y1 * s_ym));
		
		s_Vre[tid] += cosf(p);
		s_Vim[tid] += sinf(p);

		i += blockSize;
		Y1 += d; 	
	}
	__syncthreads();
 
	if (tid < 256) 
	{ 
		s_Vre[tid] += s_Vre[tid + 256]; 
		s_Vim[tid] += s_Vim[tid + 256];
	} 
	__syncthreads(); 

	if (tid < 128)
	{ 
		s_Vre[tid] += s_Vre[tid + 128];
		s_Vim[tid] += s_Vim[tid + 128];  
	} 
	__syncthreads(); 

	if (tid < 64) 
	{ 
		s_Vre[tid] += s_Vre[tid + 64];
		s_Vim[tid] += s_Vim[tid + 64]; 
	} 
	__syncthreads(); 

	
	if (tid < 32) {

		s_Vre[tid] += s_Vre[tid + 32];
		s_Vim[tid] += s_Vim[tid + 32];

		s_Vre[tid] += s_Vre[tid + 16];
		s_Vim[tid] += s_Vim[tid + 16];

		s_Vre[tid] += s_Vre[tid + 8];
		s_Vim[tid] += s_Vim[tid + 8];

		s_Vre[tid] += s_Vre[tid + 4];
		s_Vim[tid] += s_Vim[tid + 4];

		s_Vre[tid] += s_Vre[tid + 2];
		s_Vim[tid] += s_Vim[tid + 2];

		s_Vre[tid] += s_Vre[tid + 1];
		s_Vim[tid] += s_Vim[tid + 1];
		
	}
	if (tid == 0) 
	{
		g_Vre[spot_number] = s_Vre[0] / 262144.0;
		g_Vim[spot_number] = s_Vim[0] / 262144.0;
	}
}

////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////
//works only for blocksize 512 and max 256 spots

__global__ void computePhiNew(float *g_x, 
							float *g_y, 
							float *g_z, 
							float *g_I, 
							float *g_SpotsRe, 
							float *g_SpotsIm, 
							float *g_Phi, 
							int N_pixels, 
							int N_spots, 
							float *g_weights, 
							int iteration, 
							float *g_pSLM_start, 
							float RPC, 
							float *g_amps)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_aSpot[256], s_a_mean, s_weight[256], s_pSpot[256];
	__shared__ float s_xm[256];
	__shared__ float s_ym[256];
	__shared__ float s_zm[256];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s;

	if (idx<N_pixels)
	{
		//float N = 512;
		//int logN = (int)log2(N);
		float d = 0.001953125;		//Normalized pixel pitch (1/512)
		
		if (RPC < (2.0f*M_PI))
			p_SLM_s = g_pSLM_start[idx];

		if (N_spots <= 64)
		{
			if (tid < N_spots)
			{
				
				float Vre = g_SpotsRe[tid];
				float Vim = g_SpotsIm[tid];
				if (iteration == 0)
					s_aSpot[tid] = 1/sqrtf(g_I[tid]);
				else
					s_aSpot[tid] = hypotf(Vim, Vre)/sqrtf(g_I[tid]);		//divide by the desired amplitude for spot m
				//s_aSpot_sum[tid] = s_aSpot[tid];
				s_pSpot[tid] = atan2f(Vim, Vre);
			}	
			else if ((tid - 64) < N_spots)
				s_weight[tid - 64] = g_weights[tid - 64 + iteration*N_spots];
			else if ((tid - 128) < N_spots)
				s_xm[tid - 128] = g_x[tid - 128];
			else if ((tid - 192) < N_spots)
				s_ym[tid - 192] = g_y[tid - 192];
			else if ((tid - 256) < N_spots)
				s_zm[tid - 256] = g_z[tid - 256];																	
		}
		else
		{		
			if (tid<N_spots)
			{
				float Vre = g_SpotsRe[tid];
				float Vim = g_SpotsIm[tid];
				s_pSpot[tid] = atan2f(Vim, Vre);
				if (iteration == 0)
					s_aSpot[tid] = 1/sqrtf(g_I[tid]);
				else
					s_aSpot[tid] = hypotf(Vim, Vre)/sqrtf(g_I[tid]);		//divide by the desired amplitude for spot m
				//s_aSpot_sum[tid] = s_aSpot[tid];
				s_weight[tid] = g_weights[tid + iteration*N_spots];
				s_xm[tid] = g_x[tid];
				s_ym[tid] = g_y[tid];
				s_zm[tid] = g_z[tid];
				
			}
		}	
		__syncthreads();
		/*	//works only for power of 2 number of spots	
		if (N_spots >= 256) { if (tid < 128) { s_aSpot_sum[tid] += s_aSpot_sum[tid + 128]; } __syncthreads(); }
		if (N_spots >= 128) { if (tid < 64) { s_aSpot_sum[tid] += s_aSpot_sum[tid + 64]; } __syncthreads(); }
		if (tid < 32) 
		{
			if (N_spots >= 64) s_aSpot_sum[tid] += s_aSpot_sum[tid + 32];
			if (N_spots >= 32) s_aSpot_sum[tid] += s_aSpot_sum[tid + 16];
			if (N_spots >= 16) s_aSpot_sum[tid] += s_aSpot_sum[tid + 8];
			if (N_spots >= 8) s_aSpot_sum[tid] += s_aSpot_sum[tid + 4];
			if (N_spots >= 4) s_aSpot_sum[tid] += s_aSpot_sum[tid + 2];
			if (N_spots >= 2) s_aSpot_sum[tid] += s_aSpot_sum[tid + 1];
		}
		*/
		if  (tid==0)
		{
			float s_aSpot_sum = 0;
			for (int jj=0; jj<N_spots;jj++)
			{	
				s_aSpot_sum += s_aSpot[jj];		
			}
			s_a_mean = s_aSpot_sum / N_spots; //integer division!!
		}
		__syncthreads();
	
		if (tid<N_spots)
		{
			s_weight[tid] = s_weight[tid] * s_a_mean / s_aSpot[tid];	
			g_weights[tid + N_spots*(iteration+1)] = s_weight[tid];
			//g_amps[tid + N_spots*iteration] = s_aSpot[tid];		//may be excluded, used for monitoring only
		}
		__syncthreads();		

 		float X = d * ((float)(threadIdx.x) - 256.0);
 		float Y = d * ((float)(blockIdx.x) - 256.0);
	
		for (int k=0; k<N_spots; k++)
		{
			float delta = M_PI * s_zm[k] * (X*X + Y*Y) + 2.0 * M_PI * (X * s_xm[k] + Y * s_ym[k]);

			re_SLM += s_weight[k] * cosf(s_pSpot[k] + delta);
			im_SLM += s_weight[k] * sinf(s_pSpot[k] + delta);
			
			
			//ei_dre = cosf(delta);  
			//ei_dim = sinf(delta);
			
			//re_SLM += s_weight[k] * (ei_dre * s_Vre[k] - ei_dim * s_Vim[k]) / s_aSpot[k];
			//im_SLM += s_weight[k] * (ei_dre * s_Vim[k] + s_Vre[k] * ei_dim) / s_aSpot[k];
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
}
