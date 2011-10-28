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

////////////////////////////////////////////////////////////////////////////////
//Calculate Phases and return as float
//
//Possible improvements
//-compute powers of X, Y and phase2pi only once and put in registers
////////////////////////////////////////////////////////////////////////////////

__global__ void getPhases(unsigned char *g_pSLMuc, float *g_pSLM_start, cufftComplex *g_cSLMcc, float *g_LUT_coeff, int LUT_on, int data_w)
{	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int s_idx;
	int X_shifted, Y_shifted;
	int N_pixels = data_w * data_w;
	if (idx<N_pixels)
	{
		float phase255;
		float N = data_w;
		int half_w = data_w/2;
		int logN = (int)log2(N);

		//int X = idx&(int)(N-1); works only for data_w = power of 2
 		//int Y = (idx-X)>>logN;
		float X = idx%data_w;
 		float Y = floor(idx/N); 		
 		if (X < half_w)
		{	
			X_shifted = X + half_w;
			if (Y < half_w)
			{
				Y_shifted = Y + half_w;
				s_idx = idx + (data_w * half_w) + half_w;
			}
			else
			{
				Y_shifted = Y - half_w;
				s_idx = idx - (data_w * half_w) + half_w;
			}
		}
		else
		{
			X_shifted = X - half_w;
			if (Y < half_w)
			{
				Y_shifted = Y + half_w;			
				s_idx = idx + (data_w * half_w) - half_w;
			}
			else
			{
				Y_shifted = Y - half_w;			
				s_idx = idx - (data_w * half_w) - half_w;
			}
		}
 		float phase = atan2f(g_cSLMcc[idx].y, g_cSLMcc[idx].x);
		float phase2pi = M_PI + phase;	
		
/*		if (LUT_on == 1)
		{
			__shared__ float s_c[N_LUT_coeff];
			if (threadIdx.x <N_LUT_coeff)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			
			phase255 = 255.0 - (s_c[0] + s_c[1]*X_shifted + s_c[2]*Y_shifted + s_c[3]*phase2pi + s_c[4]*powf(X_shifted,2) + s_c[5]*X*Y_shifted + s_c[6]*X_shifted*phase2pi + s_c[7]*powf(Y_shifted,2) + s_c[8]*Y_shifted*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X_shifted,3) + s_c[11]*powf(X_shifted,2)*Y_shifted + s_c[12]*powf(X_shifted,2)*phase2pi + s_c[13]*X_shifted*powf(Y_shifted,2) + s_c[14]*X_shifted*Y_shifted*phase2pi + s_c[15]*X_shifted*powf(phase2pi,2) + s_c[16]*powf(Y_shifted,3) + s_c[17]*powf(Y_shifted,2)*phase2pi + s_c[18]*Y_shifted*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X_shifted,4) + s_c[21]*powf(X_shifted,3)*Y_shifted + s_c[22]*powf(X_shifted,3)*phase2pi + s_c[23]*powf(X_shifted,2)*powf(Y_shifted,2) + s_c[24]*powf(X_shifted,2)*Y_shifted*phase2pi + s_c[25]*powf(X_shifted,2)*powf(phase2pi,2) + s_c[26]*X_shifted*powf(Y_shifted,3) + s_c[27]*X_shifted*powf(Y_shifted,2)*phase2pi + s_c[28]*X_shifted*Y_shifted*powf(phase2pi,2) + s_c[29]*X_shifted*powf(phase2pi,3) + s_c[30]*powf(Y_shifted,4) + s_c[31]*powf(Y_shifted,3)*phase2pi + s_c[32]*powf(Y_shifted,2)*powf(phase2pi,2) + s_c[33]*Y_shifted*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X_shifted,5) + s_c[36]*powf(X_shifted,4)*Y_shifted + s_c[37]*powf(X_shifted,4)*phase2pi + s_c[38]*powf(X_shifted,3)*powf(Y_shifted,2) + s_c[39]*powf(X_shifted,3)*Y_shifted*phase2pi + s_c[40]*powf(X_shifted,3)*powf(phase2pi,2) + s_c[41]*powf(X_shifted,2)*powf(Y_shifted,3) + s_c[42]*powf(X_shifted,2)*powf(Y_shifted,2)*phase2pi + s_c[43]*powf(X_shifted,2)*Y_shifted*powf(phase2pi,2) + s_c[44]*powf(X_shifted,2)*powf(phase2pi,3) + s_c[45]*X_shifted*powf(Y_shifted,4) + s_c[46]*X_shifted*powf(Y_shifted,3)*phase2pi + s_c[47]*X_shifted*powf(Y_shifted,2)*powf(phase2pi,2) + s_c[48]*X_shifted*Y_shifted*powf(phase2pi,3) + s_c[49]*X_shifted*powf(phase2pi,4) + s_c[50]*powf(Y_shifted,5) + s_c[51]*powf(Y_shifted,4)*phase2pi + s_c[52]*powf(Y_shifted,3)*powf(phase2pi,2) + s_c[53]*powf(Y_shifted,2)*powf(phase2pi,3) + s_c[54]*Y_shifted*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X_shifted,6) + s_c[57]*powf(X_shifted,5)*Y_shifted + s_c[58]*powf(X_shifted,5)*phase2pi + s_c[59]*powf(X_shifted,4)*powf(Y_shifted,2) + s_c[60]*powf(X_shifted,4)*Y_shifted*phase2pi + s_c[61]*powf(X_shifted,4)*powf(phase2pi,2) + s_c[62]*powf(X_shifted,3)*powf(Y_shifted,3) + s_c[63]*powf(X_shifted,3)*powf(Y_shifted,2)*phase2pi + s_c[64]*powf(X_shifted,3)*Y_shifted*powf(phase2pi,2) + s_c[65]*powf(X_shifted,3)*powf(phase2pi,3) + s_c[66]*powf(X_shifted,2)*powf(Y_shifted,4) + s_c[67]*powf(X_shifted,2)*powf(Y_shifted,3)*phase2pi + s_c[68]*powf(X_shifted,2)*powf(Y_shifted,2)*powf(phase2pi,2) + s_c[69]*powf(X_shifted,2)*Y_shifted*powf(phase2pi,3) + s_c[70]*powf(X_shifted,2)*powf(phase2pi,4) + s_c[71]*X_shifted*powf(Y_shifted,5) + s_c[72]*X_shifted*powf(Y_shifted,4)*phase2pi + s_c[73]*X_shifted*powf(Y_shifted,3)*powf(phase2pi,2) + s_c[74]*X_shifted*powf(Y_shifted,2)*powf(phase2pi,3) + s_c[75]*X_shifted*Y_shifted*powf(phase2pi,4) + s_c[76]*X_shifted*powf(phase2pi,5) + s_c[77]*powf(Y_shifted,6) + s_c[78]*powf(Y_shifted,5)*phase2pi + s_c[79]*powf(Y_shifted,4)*powf(phase2pi,2) + s_c[80]*powf(Y_shifted,3)*powf(phase2pi,3) + s_c[81]*powf(Y_shifted,2)*powf(phase2pi,4) + s_c[82]*Y_shifted*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6) + s_c[84]*powf(X_shifted,7) + s_c[85]*powf(X_shifted,6)*Y_shifted + s_c[86]*powf(X_shifted,6)*phase2pi + s_c[87]*powf(X_shifted,5)*powf(Y_shifted,2) + s_c[88]*powf(X_shifted,5)*Y_shifted*phase2pi + s_c[89]*powf(X_shifted,5)*powf(phase2pi,2) + s_c[90]*powf(X_shifted,4)*powf(Y_shifted,3) + s_c[91]*powf(X_shifted,4)*powf(Y_shifted,2)*phase2pi + s_c[92]*powf(X_shifted,4)*Y_shifted*powf(phase2pi,2) + s_c[93]*powf(X_shifted,4)*powf(phase2pi,3) + s_c[94]*powf(X_shifted,3)*powf(Y_shifted,4) + s_c[95]*powf(X_shifted,3)*powf(Y_shifted,3)*phase2pi + s_c[96]*powf(X_shifted,3)*powf(Y_shifted,2)*powf(phase2pi,2) + s_c[97]*powf(X_shifted,3)*Y_shifted*powf(phase2pi,3) + s_c[98]*powf(X_shifted,3)*powf(phase2pi,4) + s_c[99]*powf(X_shifted,2)*powf(Y_shifted,5) + s_c[100]*powf(X_shifted,2)*powf(Y_shifted,4)*phase2pi + s_c[101]*powf(X_shifted,2)*powf(Y_shifted,3)*powf(phase2pi,2) + s_c[102]*powf(X_shifted,2)*powf(Y_shifted,2)*powf(phase2pi,3) + s_c[103]*powf(X_shifted,2)*Y_shifted*powf(phase2pi,4) + s_c[104]*powf(X_shifted,2)*powf(phase2pi,5) + s_c[105]*X_shifted*powf(Y_shifted,6) + s_c[106]*X_shifted*powf(Y_shifted,5)*phase2pi + s_c[107]*X_shifted*powf(Y_shifted,4)*powf(phase2pi,2) + s_c[108]*X_shifted*powf(Y_shifted,3)*powf(phase2pi,3) + s_c[109]*X_shifted*powf(Y_shifted,2)*powf(phase2pi,4) + s_c[110]*X_shifted*Y_shifted*powf(phase2pi,5) + s_c[111]*X_shifted*powf(phase2pi,6) + s_c[112]*powf(Y_shifted,7) + s_c[113]*powf(Y_shifted,6)*phase2pi + s_c[114]*powf(Y_shifted,5)*powf(phase2pi,2) + s_c[115]*powf(Y_shifted,4)*powf(phase2pi,3) + s_c[116]*powf(Y_shifted,3)*powf(phase2pi,4) + s_c[117]*powf(Y_shifted,2)*powf(phase2pi,5) + s_c[118]*Y_shifted*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
			if (phase255 < 0)
				phase255 = 0;	
		}
		else 
		{*/
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
		//}
		__syncthreads();
		
		g_pSLM_start[idx] = phase;
		g_pSLMuc[s_idx] = (unsigned char)phase255;		
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Calculate complex from phases
////////////////////////////////////////////////////////////////////////////////
__global__ void p2c(cufftComplex *g_c, float *g_p, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		float phase = g_p[idx];
 		g_c[idx].x = cosf(phase);
		g_c[idx].y = sinf(phase);
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Calculate amplitudes from complex
////////////////////////////////////////////////////////////////////////////////
__global__ void c_cc2a_f(float *g_a, cufftComplex *g_c, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		g_a[idx] = hypotf(g_c[idx].x, g_c[idx].y);
	}
	__syncthreads();
}
////////////////////////////////////////////////////////////////////////////////
//Calculate phases from complex
////////////////////////////////////////////////////////////////////////////////
__global__ void c_cc2p_cc(cufftComplex *g_p, cufftComplex *g_c, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		g_p[idx].x = atan2f(g_c[idx].y, g_c[idx].x);
		g_p[idx].y = 0;
	}
	__syncthreads();
}
////////////////////////////////////////////////////////////////////////////////
//Calculate phases from complex
////////////////////////////////////////////////////////////////////////////////
__global__ void c_cc2p_f(float *g_p, cufftComplex *g_c, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		g_p[idx] = atan2f(g_c[idx].y, g_c[idx].x);
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Copy real part from complex
////////////////////////////////////////////////////////////////////////////////
__global__ void c_cc2re_f(float *g_p, cufftComplex *g_c, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		g_p[idx] = g_c[idx].x;
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Copy imaginary part from complex
////////////////////////////////////////////////////////////////////////////////
__global__ void c_cc2im_f(float *g_p, cufftComplex *g_c, int M)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	if (idx<M)
	{
		g_p[idx] = g_c[idx].y;
	}
	__syncthreads();
}
////////////////////////////////////////////////////////////////////////////////
//reset amplitudes to ones PCR
////////////////////////////////////////////////////////////////////////////////

__global__ void ReplaceAmpsSLM_FFT(float *g_aLaser, cufftComplex *g_cAmp, float *g_pSLM_start, int N_pixels, float RPC)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	

	if (idx<N_pixels)
	{
		float aLaser = 1.0f/(float)N_pixels;//g_aLaser[idx];
		float pSLMstart = g_pSLM_start[idx];
		cufftComplex cAmp = g_cAmp[idx];
 		float phase = atan2f(cAmp.y, cAmp.x);
 		
 		if (RPC < (2.0f*M_PI))
		{	
			if (fabs(phase - pSLMstart) < RPC)
			{
				cAmp.x = aLaser*cosf(phase);
				cAmp.y = aLaser*sinf(phase);
			}
			else
			{
				cAmp.x = aLaser*cosf(pSLMstart);
				cAmp.y = aLaser*sinf(pSLMstart);
			}
		}
		else
		{
			cAmp.x = aLaser*cosf(phase);
			cAmp.y = aLaser*sinf(phase);
		}	
		
		g_cAmp[idx].x = cAmp.x;
		g_cAmp[idx].y = cAmp.y;
	}
	__syncthreads();
}

////////////////////////////////////////////////////////////////////////////////
//Copy phases in desired spots
////////////////////////////////////////////////////////////////////////////////

__global__ void ReplaceAmpsSpots_FFT(cufftComplex *g_cSpotAmpObtained, cufftComplex *g_cSpotAmpDesired, int *g_spotIndex, int N_spots, int iteration, float *g_amplitude, float *g_weight, float amp_desired)
{
	int tid = threadIdx.x;
	int spotIndex;
	float phase;
	float amp_new;
	float amp_obtained;
	float weight_next;
	cufftComplex cSpotAmp;

	__shared__ float weight_sum[256];

	if (tid < N_spots)
	{
		spotIndex = g_spotIndex[tid];
		cSpotAmp = g_cSpotAmpObtained[spotIndex];
		amp_obtained = hypotf(cSpotAmp.x, cSpotAmp.y);
		phase = atan2f(cSpotAmp.y, cSpotAmp.x);
		if (amp_obtained < 0.0000001)
		{
			amp_obtained = 1.0f/(float)N_spots;//powf(256,4);
		}
		weight_next = g_weight[N_spots * (iteration) + tid] * sqrtf(amp_desired / amp_obtained);
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
		g_amplitude[N_spots * (iteration) + tid] = amp_obtained;
	}

	__syncthreads();
}
////////////////////////////////////////////////////////////////////////////////
//Convert from coordinates to spot indices
////////////////////////////////////////////////////////////////////////////////

__global__ void XYtoIndex(float *g_x, float *g_y, int *g_spot_index, int N_spots, int data_w)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (i < N_spots)
		g_spot_index[i] = ((int)(g_x[i])&(data_w-1))  + ((int)(g_y[i])&(data_w-1))* data_w;
	
	__syncthreads();
}


