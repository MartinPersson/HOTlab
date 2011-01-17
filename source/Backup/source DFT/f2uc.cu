////////////////////////////////////////////////////////////////////////////////
//Convert float to unsigned char
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA_PCI.h"

__global__ void f2uc(unsigned char *g_uc, float *g_f, int N_pixels, float *g_LUT_coeff, int LUT_on, int data_w)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	
	if (LUT_on == 1)
	{	
		float N = data_w;
		int logN = (int)log2(N);
		
		__shared__ float c[N_LUT_coeff];
		if (threadIdx.x <N_LUT_coeff)
			c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
		__syncthreads();
		
		if (idx<N_pixels)
		{
				int X1 = idx&(int)(N-1);
 				int X2 = (idx&(int)(N_pixels-1)-X1)>>logN;  
 				float X3 = g_f[idx] + M_PI;								//pixel phase
 				float fas = 255.0 - (c[0] + c[1]*X1 + c[2]*X2 + c[3]*X3 + c[4]*powf(X1,2) + c[5]*X1*X2 + c[6]*X1*X3 + c[7]*powf(X2,2) + c[8]*X2*X3 + c[9]*powf(X3,2) + c[10]*powf(X1,3) + c[11]*powf(X1,2)*X2 + c[12]*powf(X1,2)*X3 + c[13]*X1*powf(X2,2) + c[14]*X1*X2*X3 + c[15]*X1*powf(X3,2) + c[16]*powf(X2,3) + c[17]*powf(X2,2)*X3 + c[18]*X2*powf(X3,2) + c[19]*powf(X3,3) + c[20]*powf(X1,4) + c[21]*powf(X1,3)*X2 + c[22]*powf(X1,3)*X3 + c[23]*powf(X1,2)*powf(X2,2) + c[24]*powf(X1,2)*X2*X3 + c[25]*powf(X1,2)*powf(X3,2) + c[26]*X1*powf(X2,3) + c[27]*X1*powf(X2,2)*X3 + c[28]*X1*X2*powf(X3,2) + c[29]*X1*powf(X3,3) + c[30]*powf(X2,4) + c[31]*powf(X2,3)*X3 + c[32]*powf(X2,2)*powf(X3,2) + c[33]*X2*powf(X3,3) + c[34]*powf(X3,4) + c[35]*powf(X1,5) + c[36]*powf(X1,4)*X2 + c[37]*powf(X1,4)*X3 + c[38]*powf(X1,3)*powf(X2,2) + c[39]*powf(X1,3)*X2*X3 + c[40]*powf(X1,3)*powf(X3,2) + c[41]*powf(X1,2)*powf(X2,3) + c[42]*powf(X1,2)*powf(X2,2)*X3 + c[43]*powf(X1,2)*X2*powf(X3,2) + c[44]*powf(X1,2)*powf(X3,3) + c[45]*X1*powf(X2,4) + c[46]*X1*powf(X2,3)*X3 + c[47]*X1*powf(X2,2)*powf(X3,2) + c[48]*X1*X2*powf(X3,3) + c[49]*X1*powf(X3,4) + c[50]*powf(X2,5) + c[51]*powf(X2,4)*X3 + c[52]*powf(X2,3)*powf(X3,2) + c[53]*powf(X2,2)*powf(X3,3) + c[54]*X2*powf(X3,4) + c[55]*powf(X3,5) + c[56]*powf(X1,6) + c[57]*powf(X1,5)*X2 + c[58]*powf(X1,5)*X3 + c[59]*powf(X1,4)*powf(X2,2) + c[60]*powf(X1,4)*X2*X3 + c[61]*powf(X1,4)*powf(X3,2) + c[62]*powf(X1,3)*powf(X2,3) + c[63]*powf(X1,3)*powf(X2,2)*X3 + c[64]*powf(X1,3)*X2*powf(X3,2) + c[65]*powf(X1,3)*powf(X3,3) + c[66]*powf(X1,2)*powf(X2,4) + c[67]*powf(X1,2)*powf(X2,3)*X3 + c[68]*powf(X1,2)*powf(X2,2)*powf(X3,2) + c[69]*powf(X1,2)*X2*powf(X3,3) + c[70]*powf(X1,2)*powf(X3,4) + c[71]*X1*powf(X2,5) + c[72]*X1*powf(X2,4)*X3 + c[73]*X1*powf(X2,3)*powf(X3,2) + c[74]*X1*powf(X2,2)*powf(X3,3) + c[75]*X1*X2*powf(X3,4) + c[76]*X1*powf(X3,5) + c[77]*powf(X2,6) + c[78]*powf(X2,5)*X3 + c[79]*powf(X2,4)*powf(X3,2) + c[80]*powf(X2,3)*powf(X3,3) + c[81]*powf(X2,2)*powf(X3,4) + c[82]*X2*powf(X3,5) + c[83]*powf(X3,6) + c[84]*powf(X1,7) + c[85]*powf(X1,6)*X2 + c[86]*powf(X1,6)*X3 + c[87]*powf(X1,5)*powf(X2,2) + c[88]*powf(X1,5)*X2*X3 + c[89]*powf(X1,5)*powf(X3,2) + c[90]*powf(X1,4)*powf(X2,3) + c[91]*powf(X1,4)*powf(X2,2)*X3 + c[92]*powf(X1,4)*X2*powf(X3,2) + c[93]*powf(X1,4)*powf(X3,3) + c[94]*powf(X1,3)*powf(X2,4) + c[95]*powf(X1,3)*powf(X2,3)*X3 + c[96]*powf(X1,3)*powf(X2,2)*powf(X3,2) + c[97]*powf(X1,3)*X2*powf(X3,3) + c[98]*powf(X1,3)*powf(X3,4) + c[99]*powf(X1,2)*powf(X2,5) + c[100]*powf(X1,2)*powf(X2,4)*X3 + c[101]*powf(X1,2)*powf(X2,3)*powf(X3,2) + c[102]*powf(X1,2)*powf(X2,2)*powf(X3,3) + c[103]*powf(X1,2)*X2*powf(X3,4) + c[104]*powf(X1,2)*powf(X3,5) + c[105]*X1*powf(X2,6) + c[106]*X1*powf(X2,5)*X3 + c[107]*X1*powf(X2,4)*powf(X3,2) + c[108]*X1*powf(X2,3)*powf(X3,3) + c[109]*X1*powf(X2,2)*powf(X3,4) + c[110]*X1*X2*powf(X3,5) + c[111]*X1*powf(X3,6) + c[112]*powf(X2,7) + c[113]*powf(X2,6)*X3 + c[114]*powf(X2,5)*powf(X3,2) + c[115]*powf(X2,4)*powf(X3,3) + c[116]*powf(X2,3)*powf(X3,4) + c[117]*powf(X2,2)*powf(X3,5) + c[118]*X2*powf(X3,6) + c[119]*powf(X3,7));
				if (fas >= 0)
					g_uc[idx] = (unsigned char)fas;
				else
					g_uc[idx] = 0;	
				//g_uc[idx] = (unsigned char)(c[0] + c[1]*X1 + c[2]*X2 + c[3]*X3 + c[4]*powf(X1,2) + c[5]*X1*X2 + c[6]*X1*X3 + c[7]*powf(X2,2) + c[8]*X2*X3 + c[9]*powf(X3,2) + c[10]*powf(X1,3) + c[11]*powf(X1,2)*X2 + c[12]*powf(X1,2)*X3 + c[13]*X1*powf(X2,2) + c[14]*X1*X2*X3 + c[15]*X1*powf(X3,2) + c[16]*powf(X2,3) + c[17]*powf(X2,2)*X3 + c[18]*X2*powf(X3,2) + c[19]*powf(X3,3) + c[20]*powf(X1,4) + c[21]*powf(X1,3)*X2 + c[22]*powf(X1,3)*X3 + c[23]*powf(X1,2)*powf(X2,2) + c[24]*powf(X1,2)*X2*X3 + c[25]*powf(X1,2)*powf(X3,2) + c[26]*X1*powf(X2,3) + c[27]*X1*powf(X2,2)*X3 + c[28]*X1*X2*powf(X3,2) + c[29]*X1*powf(X3,3) + c[30]*powf(X2,4) + c[31]*powf(X2,3)*X3 + c[32]*powf(X2,2)*powf(X3,2) + c[33]*X2*powf(X3,3) + c[34]*powf(X3,4) + c[35]*powf(X1,5) + c[36]*powf(X1,4)*X2 + c[37]*powf(X1,4)*X3 + c[38]*powf(X1,3)*powf(X2,2) + c[39]*powf(X1,3)*X2*X3 + c[40]*powf(X1,3)*powf(X3,2) + c[41]*powf(X1,2)*powf(X2,3) + c[42]*powf(X1,2)*powf(X2,2)*X3 + c[43]*powf(X1,2)*X2*powf(X3,2) + c[44]*powf(X1,2)*powf(X3,3) + c[45]*X1*powf(X2,4) + c[46]*X1*powf(X2,3)*X3 + c[47]*X1*powf(X2,2)*powf(X3,2) + c[48]*X1*X2*powf(X3,3) + c[49]*X1*powf(X3,4) + c[50]*powf(X2,5) + c[51]*powf(X2,4)*X3 + c[52]*powf(X2,3)*powf(X3,2) + c[53]*powf(X2,2)*powf(X3,3) + c[54]*X2*powf(X3,4) + c[55]*powf(X3,5) + c[56]*powf(X1,6) + c[57]*powf(X1,5)*X2 + c[58]*powf(X1,5)*X3 + c[59]*powf(X1,4)*powf(X2,2) + c[60]*powf(X1,4)*X2*X3 + c[61]*powf(X1,4)*powf(X3,2) + c[62]*powf(X1,3)*powf(X2,3) + c[63]*powf(X1,3)*powf(X2,2)*X3 + c[64]*powf(X1,3)*X2*powf(X3,2) + c[65]*powf(X1,3)*powf(X3,3) + c[66]*powf(X1,2)*powf(X2,4) + c[67]*powf(X1,2)*powf(X2,3)*X3 + c[68]*powf(X1,2)*powf(X2,2)*powf(X3,2) + c[69]*powf(X1,2)*X2*powf(X3,3) + c[70]*powf(X1,2)*powf(X3,4) + c[71]*X1*powf(X2,5) + c[72]*X1*powf(X2,4)*X3 + c[73]*X1*powf(X2,3)*powf(X3,2) + c[74]*X1*powf(X2,2)*powf(X3,3) + c[75]*X1*X2*powf(X3,4) + c[76]*X1*powf(X3,5) + c[77]*powf(X2,6) + c[78]*powf(X2,5)*X3 + c[79]*powf(X2,4)*powf(X3,2) + c[80]*powf(X2,3)*powf(X3,3) + c[81]*powf(X2,2)*powf(X3,4) + c[82]*X2*powf(X3,5) + c[83]*powf(X3,6) + c[84]*powf(X1,7) + c[85]*powf(X1,6)*X2 + c[86]*powf(X1,6)*X3 + c[87]*powf(X1,5)*powf(X2,2) + c[88]*powf(X1,5)*X2*X3 + c[89]*powf(X1,5)*powf(X3,2) + c[90]*powf(X1,4)*powf(X2,3) + c[91]*powf(X1,4)*powf(X2,2)*X3 + c[92]*powf(X1,4)*X2*powf(X3,2) + c[93]*powf(X1,4)*powf(X3,3) + c[94]*powf(X1,3)*powf(X2,4) + c[95]*powf(X1,3)*powf(X2,3)*X3 + c[96]*powf(X1,3)*powf(X2,2)*powf(X3,2) + c[97]*powf(X1,3)*X2*powf(X3,3) + c[98]*powf(X1,3)*powf(X3,4) + c[99]*powf(X1,2)*powf(X2,5) + c[100]*powf(X1,2)*powf(X2,4)*X3 + c[101]*powf(X1,2)*powf(X2,3)*powf(X3,2) + c[102]*powf(X1,2)*powf(X2,2)*powf(X3,3) + c[103]*powf(X1,2)*X2*powf(X3,4) + c[104]*powf(X1,2)*powf(X3,5) + c[105]*X1*powf(X2,6) + c[106]*X1*powf(X2,5)*X3 + c[107]*X1*powf(X2,4)*powf(X3,2) + c[108]*X1*powf(X2,3)*powf(X3,3) + c[109]*X1*powf(X2,2)*powf(X3,4) + c[110]*X1*X2*powf(X3,5) + c[111]*X1*powf(X3,6) + c[112]*powf(X2,7) + c[113]*powf(X2,6)*X3 + c[114]*powf(X2,5)*powf(X3,2) + c[115]*powf(X2,4)*powf(X3,3) + c[116]*powf(X2,3)*powf(X3,4) + c[117]*powf(X2,2)*powf(X3,5) + c[118]*X2*powf(X3,6) + c[119]*powf(X3,7));	
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

