////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

//works only for blocksize 512 and max 256 spots

__global__ void computePhiNew(float *g_x, float *g_y, float *g_z, float *g_SpotsRe, float *g_SpotsIm, float *g_Phi, int N_pixels, int N_spots, float *g_weights, int iteration, float *g_pSLM_start, float RPC, float *g_amps)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_aSpot[256], s_aSpot_sum[256], s_a_mean, s_weight[256], s_pSpot[256];
	__shared__ float s_xm[256];
	__shared__ float s_ym[256];
	__shared__ float s_zm[256];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s;

	if (idx<N_pixels)
	{
		//float N = 512;
		//int logN = (int)log2(N);
		float d = 0.001953125;		//(1/512)
		
		if (RPC < (2.0f*M_PI))
			p_SLM_s = g_pSLM_start[idx];

		if (N_spots <= 64)
		{
			if (tid < N_spots)
			{
				float Vre = g_SpotsRe[tid];
				float Vim = g_SpotsIm[tid];
				s_aSpot[tid] = hypotf(Vim, Vre);
				s_aSpot_sum[tid] = s_aSpot[tid];
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
				s_aSpot[tid] = hypotf(Vim, Vre);
				s_aSpot_sum[tid] = s_aSpot[tid];
				s_weight[tid] = g_weights[tid + iteration*N_spots];
				s_xm[tid] = g_x[tid];
				s_ym[tid] = g_y[tid];
				s_zm[tid] = g_z[tid];
			}
		}	
		__syncthreads();
				
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
		
		if  (tid==0)
		{
			s_a_mean = s_aSpot_sum[0] / N_spots; //integer division!!
		}
		__syncthreads();
	
		if (tid<N_spots)
		{
			s_weight[tid] = s_weight[tid] * s_a_mean / s_aSpot[tid];	
			g_weights[tid + N_spots*(iteration+1)] = s_weight[tid];
			g_amps[tid + N_spots*iteration] = s_aSpot[tid];		//may be excluded, used for monitoring only
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
