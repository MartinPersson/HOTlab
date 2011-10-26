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
////////////////////////////////////////////////////////////////////////////////
//Convert float to unsigned char
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void f2uc(unsigned char *g_uc, float *g_f, int N_pixels, unsigned char *g_LUT, int ApplyLUT_b, int data_w)
{
	__shared__ unsigned char s_LUT[256];
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (ApplyLUT_b)
	{
		int tid = threadIdx.x;
		if (tid < 256)
		{
			int j = 0;
			while (j < 256)
			{
				s_LUT[tid + j] = g_LUT[tid + j];
				j += BLOCK_SIZE;
			}
		}
		__syncthreads();
		if (idx<N_pixels)
		{
			g_uc[idx] = s_LUT[(unsigned char)(((g_f[idx] + M_PI)*255.0/(2.0*M_PI)))];
		}	
	}	
	else
	{
		if (idx<N_pixels)
		{
			g_uc[idx] = (unsigned char)(((g_f[idx] + M_PI)*255.0/(2.0*M_PI)));
		}	
	}
	__syncthreads();
}
/*
__global__ void f2uc(unsigned char *g_uc, float *g_f, int N_pixels, unsigned char *g_LUT, int use_LUT, float *g_LUT_coeff, int LUT_order, int data_w, float *wfcorrection, int use_correction)
{
	__shared__ unsigned char s_LUT[256];
	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	float phase2pi = g_f[idx] + M_PI;
	if (use_correction == 1)
		phase2pi = phase2pi + wfcorrection[idx];
		
	if (use_LUT == 0)	
	{
		if (idx<N_pixels)
		{
			g_uc[idx] = (unsigned char)(((phase2pi)*255.0/(2.0*M_PI)));
		}	
	}
	else if (use_LUT == 1)
	{
		int tid = threadIdx.x;
		if (tid < 256)
		{
			int j = 0;
			while (j < 256)
			{
				s_LUT[tid + j] = g_LUT[tid + j];
				j += block_size;
			}
		}
		__syncthreads();
		if (idx<N_pixels)
		{
			g_uc[idx] = s_LUT[(unsigned char)(((phase2pi)*255.0/(2.0*M_PI)))];
		}	
	}
	else if (use_LUT == 2)
	{
		float N = (float)data_w;
		float X = idx%data_w;
 		float Y = floor(idx/N);

		__syncthreads();
		float phase255;
		if (LUT_order==7)
		{
			__shared__ float s_c[120];
			if (threadIdx.x < 120)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6) + s_c[84]*powf(X,7) + s_c[85]*powf(X,6)*Y + s_c[86]*powf(X,6)*phase2pi + s_c[87]*powf(X,5)*powf(Y,2) + s_c[88]*powf(X,5)*Y*phase2pi + s_c[89]*powf(X,5)*powf(phase2pi,2) + s_c[90]*powf(X,4)*powf(Y,3) + s_c[91]*powf(X,4)*powf(Y,2)*phase2pi + s_c[92]*powf(X,4)*Y*powf(phase2pi,2) + s_c[93]*powf(X,4)*powf(phase2pi,3) + s_c[94]*powf(X,3)*powf(Y,4) + s_c[95]*powf(X,3)*powf(Y,3)*phase2pi + s_c[96]*powf(X,3)*powf(Y,2)*powf(phase2pi,2) + s_c[97]*powf(X,3)*Y*powf(phase2pi,3) + s_c[98]*powf(X,3)*powf(phase2pi,4) + s_c[99]*powf(X,2)*powf(Y,5) + s_c[100]*powf(X,2)*powf(Y,4)*phase2pi + s_c[101]*powf(X,2)*powf(Y,3)*powf(phase2pi,2) + s_c[102]*powf(X,2)*powf(Y,2)*powf(phase2pi,3) + s_c[103]*powf(X,2)*Y*powf(phase2pi,4) + s_c[104]*powf(X,2)*powf(phase2pi,5) + s_c[105]*X*powf(Y,6) + s_c[106]*X*powf(Y,5)*phase2pi + s_c[107]*X*powf(Y,4)*powf(phase2pi,2) + s_c[108]*X*powf(Y,3)*powf(phase2pi,3) + s_c[109]*X*powf(Y,2)*powf(phase2pi,4) + s_c[110]*X*Y*powf(phase2pi,5) + s_c[111]*X*powf(phase2pi,6) + s_c[112]*powf(Y,7) + s_c[113]*powf(Y,6)*phase2pi + s_c[114]*powf(Y,5)*powf(phase2pi,2) + s_c[115]*powf(Y,4)*powf(phase2pi,3) + s_c[116]*powf(Y,3)*powf(phase2pi,4) + s_c[117]*powf(Y,2)*powf(phase2pi,5) + s_c[118]*Y*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
		}
		else if (LUT_order==6)
		{
			__shared__ float s_c[84];
			if (threadIdx.x < 84)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6));
		}
		else if (LUT_order==5)
		{
			__shared__ float s_c[56];
			if (threadIdx.x < 56)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5));
		}
		else if (LUT_order==4)
		{
			__shared__ float s_c[36];
			if (threadIdx.x < 36)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4));
		}
		else if (LUT_order==3)
		{
			__shared__ float s_c[20];
			if (threadIdx.x < 20)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3));
		}
		if (phase255 < 0)
			phase255 = 0;	
		g_uc[idx] = (unsigned char)phase255;
	}
	__syncthreads();
}*/