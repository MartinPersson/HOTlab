////////////////////////////////////////////////////////////////////////////////
//Obtain phases in SLM plane
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

// Requires computeWeights
__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, int iteration, float *g_pSLM_start, float RPC, float *g_amps)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_a[block_size], s_w[block_size], s_Vre[block_size], s_Vim[block_size];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s = g_pSLM_start[idx], ei_dre, ei_dim;

	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_a[tid] = g_amps[tid + (iteration-1)*N_spots];
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

/* Nice version 090909 19:12
__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, int iteration, float *g_pSLM_start, float alpha, float *g_amps)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_a[block_size], s_w[block_size], s_Vre[block_size], s_Vim[block_size];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s = g_pSLM_start[idx], ei_dre, ei_dim;

	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_a[tid] = g_amps[tid + (iteration-1)*N_spots];
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
	
	
	if (alpha < (2.0f*M_PI))
	{	
		if ((fabs(Phi - p_SLM_s)) < alpha)
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
*/
/*
__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, int iteration, float *g_pSLM_start, float alpha, float *g_amps)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	float s_Vre, s_Vim, s_w, s_a;
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s = g_pSLM_start[idx];

	for (int k=0; k<N_spots; k++)
	{
		s_Vre = g_Vre[k*N_pixels];
		s_Vim = g_Vim[k*N_pixels];
		s_w = g_weights[tid + iteration*N_spots];
		s_a = g_amps[tid + (iteration-1)*N_spots];
		re_SLM += s_w * (g_ei_dre[idx + k*N_pixels] * s_Vre - g_ei_dim[idx + k*N_pixels] * s_Vim) / s_a;
		im_SLM += s_w * (g_ei_dre[idx + k*N_pixels] * s_Vim + s_Vre * g_ei_dim[idx + k*N_pixels]) / s_a;
	}

	Phi = atan2f(im_SLM, re_SLM);
	
	
	if (alpha < (2.0f*M_PI))
	{	
		if ((fabs(Phi - p_SLM_s)) < alpha)
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

*/



/* This version works 090909

__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, int iteration, float *g_pSLM_start, float alpha)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_a[block_size], a_mean, s_w[block_size], s_Vre[block_size], s_Vim[block_size];
	float re_SLM = 0, im_SLM = 0, Phi = 0, p_SLM_s = g_pSLM_start[idx];

	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_a[tid] = hypotf(s_Vim[tid], s_Vre[tid]);
		s_w[tid] = g_weights[tid + iteration*N_spots];
	}
	__syncthreads();
	if  (tid==0)//(idx<N_pixels)
	{
		float a_sum = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			a_sum += s_a[kk];
		}
		a_mean = a_sum / N_spots; //integer division!!
	}
	__syncthreads();
	
	if (tid<N_spots)
	{
		s_w[tid] = s_w[tid] * a_mean / s_a[tid];	
		g_weights[tid + N_spots*(iteration+1)] = s_w[tid];		
	}
	__syncthreads();
	

	for (int k=0; k<N_spots; k++)
	{
		re_SLM += s_w[k] * (g_ei_dre[idx + k*N_pixels] * s_Vre[k] - g_ei_dim[idx + k*N_pixels] * s_Vim[k]) / s_a[k];
		im_SLM += s_w[k] * (g_ei_dre[idx + k*N_pixels] * s_Vim[k] + s_Vre[k] * g_ei_dim[idx + k*N_pixels]) / s_a[k];	
	}

	Phi = atan2f(im_SLM, re_SLM);
	
	
	if (alpha < (2.0f*M_PI))
	{	
		if ((fabs(Phi - p_SLM_s)) < alpha)
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
*/
/*

Davids viktning


__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, float *amp_d, int iteration)
{
	__syncthreads();
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_a[block_size], a_d[block_size], w_sum, s_w[block_size], s_Vre[block_size], s_Vim[block_size];
	float re_SLM = 0, im_SLM = 0, float gamma = 0.7;

	if (tid<N_spots)
	{
		s_Vre[tid] = g_Vre[tid*N_pixels];
		s_Vim[tid] = g_Vim[tid*N_pixels];
		s_a[tid] = hypotf(s_Vim[tid], s_Vre[tid]);
		s_w[tid] = g_weights[tid + iteration*N_spots];
		a_d[tid] = amp_d[tid];
		s_w[tid] = s_w[tid] * powf((a_d[tid]/s_a[tid]), gamma);
	}
	__syncthreads();
	if (tid==0)
	{
		w_sum = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			w_sum += s_w[kk];
		}
	}
	__syncthreads();
	
	if (tid<N_spots)
	{
		s_w[tid] = s_w[tid]/w_sum;	
	}
	__syncthreads();
	

	for (int k=0; k<N_spots; k++)
	{
		re_SLM += s_w[k] *  (g_ei_dre[idx + k*N_pixels] * s_Vre[k] - g_ei_dim[idx + k*N_pixels] * s_Vim[k]) / s_a[k];// a_d[k] *
		im_SLM += s_w[k] * (g_ei_dre[idx + k*N_pixels] * s_Vim[k] - s_Vre[k] * g_ei_dim[idx + k*N_pixels]) / s_a[k];	
	}
	__syncthreads();	
	
	g_Phi[idx] = atan2f(im_SLM, re_SLM);
	
	if (tid<N_spots)
	{
		g_weights[tid + N_spots*(iteration+1)] = s_w[tid];
	}

}
*/

/*
 old version (twice as long iteration time)

__global__ void computePhi(float *g_Vre, float *g_Vim, float *g_Phi, float *g_ei_dre, float *g_ei_dim, int N_pixels, int N_spots, float *g_weights, int iteration)
{
	__syncthreads();	
	__shared__ float s_Vre[100], s_Vim[100], s_a[100], s_w[100];
	for (int k=0; k<N_spots; k++)
	{
		s_Vre[k] = g_Vre[k*N_pixels];
		s_Vim[k] = g_Vim[k*N_pixels];
	}
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (idx<N_pixels)
	{
		float re_SLM = 0;
		float im_SLM = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			re_SLM += (g_ei_dre[idx + kk*N_pixels] * s_Vre[kk] - g_ei_dim[idx + kk*N_pixels] * s_Vim[kk]) / hypotf(s_Vim[kk], s_Vre[kk]);
			im_SLM += (g_ei_dre[idx + kk*N_pixels] * s_Vim[kk] - s_Vre[kk] * g_ei_dim[idx + kk*N_pixels]) / hypotf(s_Vim[kk], s_Vre[kk]);		
		}
 		g_Phi[idx] = atan2f(im_SLM, re_SLM);

	}
	__syncthreads();
}
*/