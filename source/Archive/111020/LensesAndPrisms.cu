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
__device__ unsigned char applyPolLUT(float phase2pi, int X, int Y, float *s_c, int N_PolCoeff)		
{

	__syncthreads();
	float phase255;
	switch (N_PolCoeff)	{
		case 120:
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6) + s_c[84]*powf(X,7) + s_c[85]*powf(X,6)*Y + s_c[86]*powf(X,6)*phase2pi + s_c[87]*powf(X,5)*powf(Y,2) + s_c[88]*powf(X,5)*Y*phase2pi + s_c[89]*powf(X,5)*powf(phase2pi,2) + s_c[90]*powf(X,4)*powf(Y,3) + s_c[91]*powf(X,4)*powf(Y,2)*phase2pi + s_c[92]*powf(X,4)*Y*powf(phase2pi,2) + s_c[93]*powf(X,4)*powf(phase2pi,3) + s_c[94]*powf(X,3)*powf(Y,4) + s_c[95]*powf(X,3)*powf(Y,3)*phase2pi + s_c[96]*powf(X,3)*powf(Y,2)*powf(phase2pi,2) + s_c[97]*powf(X,3)*Y*powf(phase2pi,3) + s_c[98]*powf(X,3)*powf(phase2pi,4) + s_c[99]*powf(X,2)*powf(Y,5) + s_c[100]*powf(X,2)*powf(Y,4)*phase2pi + s_c[101]*powf(X,2)*powf(Y,3)*powf(phase2pi,2) + s_c[102]*powf(X,2)*powf(Y,2)*powf(phase2pi,3) + s_c[103]*powf(X,2)*Y*powf(phase2pi,4) + s_c[104]*powf(X,2)*powf(phase2pi,5) + s_c[105]*X*powf(Y,6) + s_c[106]*X*powf(Y,5)*phase2pi + s_c[107]*X*powf(Y,4)*powf(phase2pi,2) + s_c[108]*X*powf(Y,3)*powf(phase2pi,3) + s_c[109]*X*powf(Y,2)*powf(phase2pi,4) + s_c[110]*X*Y*powf(phase2pi,5) + s_c[111]*X*powf(phase2pi,6) + s_c[112]*powf(Y,7) + s_c[113]*powf(Y,6)*phase2pi + s_c[114]*powf(Y,5)*powf(phase2pi,2) + s_c[115]*powf(Y,4)*powf(phase2pi,3) + s_c[116]*powf(Y,3)*powf(phase2pi,4) + s_c[117]*powf(Y,2)*powf(phase2pi,5) + s_c[118]*Y*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
			break;
		case 84:
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6));
			break;
		case 56:
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5));
			break;
		case 36:
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4));
			break;
		case 20:
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3));
			break;
		default:
			phase255 = 0;
			break;
	}
	if (phase255 < 0)
		phase255 = 0;	
	return (unsigned char)phase255;
}
__global__ void LensesAndPrisms(float *g_x, float *g_y, float *g_z, float *g_I, unsigned char *g_SLMuc, int N_spots, unsigned char *g_LUT, bool ApplyLUT_b, int data_w, bool UseAberrationCorr_b, float *d_AberrationCorr_f, bool UseLUTPol_b, float *d_LUTPolCoeff_f, int N_PolCoeff)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;
	
	__shared__ float s_x[BLOCK_SIZE];
	__shared__ float s_y[BLOCK_SIZE];
	__shared__ float s_z[BLOCK_SIZE];
	__shared__ float s_a[BLOCK_SIZE];
	__shared__ unsigned char s_LUT[256];
	__shared__ float s_LUTcoeff[120];
	if (tid < N_spots)
	{
		s_x[tid] = g_x[tid];
		s_y[tid] = g_y[tid];
		s_z[tid] = g_z[tid];
		s_a[tid] = sqrtf(g_I[tid]);
	}

	if (ApplyLUT_b)
	{
		if (!UseLUTPol_b)
		{
			if (tid < 256)
				s_LUT[tid] = g_LUT[tid];
		}
		else
		{
			if (tid < N_PolCoeff)
				s_LUTcoeff[tid] = d_LUTPolCoeff_f[tid];
		}

	}		
	__syncthreads();	
	if (idx < data_w*data_w)
	{
		float N = data_w;
		int logN = (int)log2(N);
		int X_int = idx&(int)(N-1);
	 	//int Y_int = (idx&(int)(N*N-1)-X_int)>>logN;
	 	int Y_int = (idx-X_int)>>logN;
	 	float X = (float)(X_int - (data_w>>1)) / data_w;
 		float Y = (float)(Y_int - (data_w>>1)) / data_w;
		
		float phase2pi;
		float phase255;
		float SLMre = 0;
		float SLMim = 0;
				
		for (int ii=0; ii<N_spots; ++ii)
		{
			phase2pi = M_PI * s_z[ii] * (X*X + Y*Y) + 2.0 * M_PI * (X * (s_x[ii]) + Y * (s_y[ii]) );
			SLMre = SLMre + s_a[ii] * cosf(phase2pi);
			SLMim = SLMim + s_a[ii] * sinf(phase2pi); 
		}
		
		phase2pi = atan2f(SLMim, SLMre) + M_PI;	
		if (UseAberrationCorr_b)
		{
			float AberrationCorr_f = d_AberrationCorr_f[idx];
			phase2pi = phase2pi + AberrationCorr_f;
			phase2pi = phase2pi - (2.0*M_PI) * floor(phase2pi / (2.0*M_PI));
		}

		if (ApplyLUT_b) 
		{
			if (!UseLUTPol_b)
			{
				phase255 = 255.0 * phase2pi / (2.0 * M_PI);
				g_SLMuc[idx] = s_LUT[(unsigned char)phase255];
			}
			else
				g_SLMuc[idx] = applyPolLUT(phase2pi, X, Y, s_LUTcoeff, N_PolCoeff);
		}
		else
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_SLMuc[idx] = (unsigned char)phase255;
		}
	}	
	__syncthreads();

}

__global__ void checkAmplitudes(float *g_x, float *g_y, float *g_z, unsigned char *g_pSLM_uc, float *g_amps, int N_spots, unsigned int N_pixels, int data_w)
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
		
	while (i < N_pixels) 
	{ 
		float pSLM_1 = 2*M_PI*(float)g_pSLM_uc[i] - M_PI;
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
		float Vre = s_Vre[0] / 262144.0;
		float Vim = s_Vim[0] / 262144.0;
		g_amps[spot_number] = hypotf(Vim, Vre);
	}
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