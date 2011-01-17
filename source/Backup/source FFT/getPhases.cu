////////////////////////////////////////////////////////////////////////////////
//Calculate Phases and return as float
//
//Possible improvements
//-compute powers of X, Y and phase2pi only once and put in registers
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

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

		int X = idx&(int)(N-1);
 		int Y = (idx-X)>>logN;
 		
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
		
		if (LUT_on == 1)
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
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
		}
		__syncthreads();
		
		g_pSLM_start[idx] = phase;
		g_pSLMuc[s_idx] = (unsigned char)phase255;
		
		
		
	}
	__syncthreads();
}

/* works but needs to apply LUT after fftshift

////////////////////////////////////////////////////////////////////////////////
//Calculate Phases and return as float
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

__global__ void getPhases(unsigned char *g_pSLMuc, float *g_pSLMf, cufftComplex *g_cSLMcc, float *g_LUT_coeff, int LUT_on, int data_w)
{	
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int N_pixels = data_w * data_w;
	if (idx<N_pixels)
	{
		float phase255;
		float N = data_w;
		int half_w = data_w/2;
		int logN = (int)log2(N);

		int X = idx&(int)(N-1);
 		int Y = (idx-X)>>logN;
 		//int Y = (idx&(int)(N_pixels-1)-X)>>logN;

		float phase2pi = M_PI + atan2f(g_cSLMcc[idx].y, g_cSLMcc[idx].x);	
		
		if (LUT_on == 1)
		{
			__shared__ float s_c[N_LUT_coeff];
			if (threadIdx.x <N_LUT_coeff)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			
			phase255 = 255.0 - (s_c[0] + s_c[1]*X + s_c[2]*Y + s_c[3]*phase2pi + s_c[4]*powf(X,2) + s_c[5]*X*Y + s_c[6]*X*phase2pi + s_c[7]*powf(Y,2) + s_c[8]*Y*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X,3) + s_c[11]*powf(X,2)*Y + s_c[12]*powf(X,2)*phase2pi + s_c[13]*X*powf(Y,2) + s_c[14]*X*Y*phase2pi + s_c[15]*X*powf(phase2pi,2) + s_c[16]*powf(Y,3) + s_c[17]*powf(Y,2)*phase2pi + s_c[18]*Y*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6) + s_c[84]*powf(X,7) + s_c[85]*powf(X,6)*Y + s_c[86]*powf(X,6)*phase2pi + s_c[87]*powf(X,5)*powf(Y,2) + s_c[88]*powf(X,5)*Y*phase2pi + s_c[89]*powf(X,5)*powf(phase2pi,2) + s_c[90]*powf(X,4)*powf(Y,3) + s_c[91]*powf(X,4)*powf(Y,2)*phase2pi + s_c[92]*powf(X,4)*Y*powf(phase2pi,2) + s_c[93]*powf(X,4)*powf(phase2pi,3) + s_c[94]*powf(X,3)*powf(Y,4) + s_c[95]*powf(X,3)*powf(Y,3)*phase2pi + s_c[96]*powf(X,3)*powf(Y,2)*powf(phase2pi,2) + s_c[97]*powf(X,3)*Y*powf(phase2pi,3) + s_c[98]*powf(X,3)*powf(phase2pi,4) + s_c[99]*powf(X,2)*powf(Y,5) + s_c[100]*powf(X,2)*powf(Y,4)*phase2pi + s_c[101]*powf(X,2)*powf(Y,3)*powf(phase2pi,2) + s_c[102]*powf(X,2)*powf(Y,2)*powf(phase2pi,3) + s_c[103]*powf(X,2)*Y*powf(phase2pi,4) + s_c[104]*powf(X,2)*powf(phase2pi,5) + s_c[105]*X*powf(Y,6) + s_c[106]*X*powf(Y,5)*phase2pi + s_c[107]*X*powf(Y,4)*powf(phase2pi,2) + s_c[108]*X*powf(Y,3)*powf(phase2pi,3) + s_c[109]*X*powf(Y,2)*powf(phase2pi,4) + s_c[110]*X*Y*powf(phase2pi,5) + s_c[111]*X*powf(phase2pi,6) + s_c[112]*powf(Y,7) + s_c[113]*powf(Y,6)*phase2pi + s_c[114]*powf(Y,5)*powf(phase2pi,2) + s_c[115]*powf(Y,4)*powf(phase2pi,3) + s_c[116]*powf(Y,3)*powf(phase2pi,4) + s_c[117]*powf(Y,2)*powf(phase2pi,5) + s_c[118]*Y*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
			if (phase255 < 0)
				phase255 = 0;	
		}
		else 
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
		}
		__syncthreads();
		
		if (X < half_w)
		{	
			if (Y < half_w)
			{
				g_pSLMuc[idx + (data_w * half_w) + half_w] = (unsigned char)phase255;
			}
			else
			{
				g_pSLMuc[idx - (data_w * half_w) + half_w] = (unsigned char)phase255;
			}
		}
		else
		{
			if (Y < half_w)
			{
				g_pSLMuc[idx + (data_w * half_w) - half_w] = (unsigned char)phase255;
			}
			else
			{
				g_pSLMuc[idx - (data_w * half_w) - half_w] = (unsigned char)phase255;
			}
		}
		
	}
	__syncthreads();
}*/