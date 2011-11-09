#include "GenerateHologramCUDA_PCI.h"

__global__ void LensesAndPrisms(float *g_x, float *g_y, float *g_z, unsigned char *g_SLMuc, int N_spots, float *g_LUT_coeff, int LUT_on, int data_w)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;
	
	__shared__ float s_x[block_size];
	__shared__ float s_y[block_size];
	__shared__ float s_z[block_size];
	
	if (tid < N_spots)
	{
		s_x[tid] = g_x[tid];
		s_y[tid] = g_y[tid];
		s_z[tid] = g_z[tid];
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
			SLMre = SLMre + cosf(phase2pi);
			SLMim = SLMim + sinf(phase2pi); 
		}
		
		phase2pi = atan2f(SLMim, SLMre) + M_PI;	
		
		if (LUT_on == 1)
		{
			__shared__ float s_c[N_LUT_coeff];
			if (threadIdx.x <N_LUT_coeff)
				s_c[threadIdx.x] = g_LUT_coeff[threadIdx.x];
			__syncthreads();
			
			phase255 = 255.0 - (s_c[0] + s_c[1]*X_int + s_c[2]*Y_int + s_c[3]*phase2pi + s_c[4]*powf(X_int,2) + s_c[5]*X_int*Y_int + s_c[6]*X_int*phase2pi + s_c[7]*powf(Y_int,2) + s_c[8]*Y_int*phase2pi + s_c[9]*powf(phase2pi,2) + s_c[10]*powf(X_int,3) + s_c[11]*powf(X_int,2)*Y_int + s_c[12]*powf(X_int,2)*phase2pi + s_c[13]*X_int*powf(Y_int,2) + s_c[14]*X_int*Y_int*phase2pi + s_c[15]*X_int*powf(phase2pi,2) + s_c[16]*powf(Y_int,3) + s_c[17]*powf(Y_int,2)*phase2pi + s_c[18]*Y_int*powf(phase2pi,2) + s_c[19]*powf(phase2pi,3) + s_c[20]*powf(X_int,4) + s_c[21]*powf(X_int,3)*Y_int + s_c[22]*powf(X_int,3)*phase2pi + s_c[23]*powf(X_int,2)*powf(Y_int,2) + s_c[24]*powf(X_int,2)*Y_int*phase2pi + s_c[25]*powf(X_int,2)*powf(phase2pi,2) + s_c[26]*X_int*powf(Y_int,3) + s_c[27]*X_int*powf(Y_int,2)*phase2pi + s_c[28]*X_int*Y_int*powf(phase2pi,2) + s_c[29]*X_int*powf(phase2pi,3) + s_c[30]*powf(Y_int,4) + s_c[31]*powf(Y_int,3)*phase2pi + s_c[32]*powf(Y_int,2)*powf(phase2pi,2) + s_c[33]*Y_int*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4) + s_c[35]*powf(X_int,5) + s_c[36]*powf(X_int,4)*Y_int + s_c[37]*powf(X_int,4)*phase2pi + s_c[38]*powf(X_int,3)*powf(Y_int,2) + s_c[39]*powf(X_int,3)*Y_int*phase2pi + s_c[40]*powf(X_int,3)*powf(phase2pi,2) + s_c[41]*powf(X_int,2)*powf(Y_int,3) + s_c[42]*powf(X_int,2)*powf(Y_int,2)*phase2pi + s_c[43]*powf(X_int,2)*Y_int*powf(phase2pi,2) + s_c[44]*powf(X_int,2)*powf(phase2pi,3) + s_c[45]*X_int*powf(Y_int,4) + s_c[46]*X_int*powf(Y_int,3)*phase2pi + s_c[47]*X_int*powf(Y_int,2)*powf(phase2pi,2) + s_c[48]*X_int*Y_int*powf(phase2pi,3) + s_c[49]*X_int*powf(phase2pi,4) + s_c[50]*powf(Y_int,5) + s_c[51]*powf(Y_int,4)*phase2pi + s_c[52]*powf(Y_int,3)*powf(phase2pi,2) + s_c[53]*powf(Y_int,2)*powf(phase2pi,3) + s_c[54]*Y_int*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5) + s_c[56]*powf(X_int,6) + s_c[57]*powf(X_int,5)*Y_int + s_c[58]*powf(X_int,5)*phase2pi + s_c[59]*powf(X_int,4)*powf(Y_int,2) + s_c[60]*powf(X_int,4)*Y_int*phase2pi + s_c[61]*powf(X_int,4)*powf(phase2pi,2) + s_c[62]*powf(X_int,3)*powf(Y_int,3) + s_c[63]*powf(X_int,3)*powf(Y_int,2)*phase2pi + s_c[64]*powf(X_int,3)*Y_int*powf(phase2pi,2) + s_c[65]*powf(X_int,3)*powf(phase2pi,3) + s_c[66]*powf(X_int,2)*powf(Y_int,4) + s_c[67]*powf(X_int,2)*powf(Y_int,3)*phase2pi + s_c[68]*powf(X_int,2)*powf(Y_int,2)*powf(phase2pi,2) + s_c[69]*powf(X_int,2)*Y_int*powf(phase2pi,3) + s_c[70]*powf(X_int,2)*powf(phase2pi,4) + s_c[71]*X_int*powf(Y_int,5) + s_c[72]*X_int*powf(Y_int,4)*phase2pi + s_c[73]*X_int*powf(Y_int,3)*powf(phase2pi,2) + s_c[74]*X_int*powf(Y_int,2)*powf(phase2pi,3) + s_c[75]*X_int*Y_int*powf(phase2pi,4) + s_c[76]*X_int*powf(phase2pi,5) + s_c[77]*powf(Y_int,6) + s_c[78]*powf(Y_int,5)*phase2pi + s_c[79]*powf(Y_int,4)*powf(phase2pi,2) + s_c[80]*powf(Y_int,3)*powf(phase2pi,3) + s_c[81]*powf(Y_int,2)*powf(phase2pi,4) + s_c[82]*Y_int*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6) + s_c[84]*powf(X_int,7) + s_c[85]*powf(X_int,6)*Y_int + s_c[86]*powf(X_int,6)*phase2pi + s_c[87]*powf(X_int,5)*powf(Y_int,2) + s_c[88]*powf(X_int,5)*Y_int*phase2pi + s_c[89]*powf(X_int,5)*powf(phase2pi,2) + s_c[90]*powf(X_int,4)*powf(Y_int,3) + s_c[91]*powf(X_int,4)*powf(Y_int,2)*phase2pi + s_c[92]*powf(X_int,4)*Y_int*powf(phase2pi,2) + s_c[93]*powf(X_int,4)*powf(phase2pi,3) + s_c[94]*powf(X_int,3)*powf(Y_int,4) + s_c[95]*powf(X_int,3)*powf(Y_int,3)*phase2pi + s_c[96]*powf(X_int,3)*powf(Y_int,2)*powf(phase2pi,2) + s_c[97]*powf(X_int,3)*Y_int*powf(phase2pi,3) + s_c[98]*powf(X_int,3)*powf(phase2pi,4) + s_c[99]*powf(X_int,2)*powf(Y_int,5) + s_c[100]*powf(X_int,2)*powf(Y_int,4)*phase2pi + s_c[101]*powf(X_int,2)*powf(Y_int,3)*powf(phase2pi,2) + s_c[102]*powf(X_int,2)*powf(Y_int,2)*powf(phase2pi,3) + s_c[103]*powf(X_int,2)*Y_int*powf(phase2pi,4) + s_c[104]*powf(X_int,2)*powf(phase2pi,5) + s_c[105]*X_int*powf(Y_int,6) + s_c[106]*X_int*powf(Y_int,5)*phase2pi + s_c[107]*X_int*powf(Y_int,4)*powf(phase2pi,2) + s_c[108]*X_int*powf(Y_int,3)*powf(phase2pi,3) + s_c[109]*X_int*powf(Y_int,2)*powf(phase2pi,4) + s_c[110]*X_int*Y_int*powf(phase2pi,5) + s_c[111]*X_int*powf(phase2pi,6) + s_c[112]*powf(Y_int,7) + s_c[113]*powf(Y_int,6)*phase2pi + s_c[114]*powf(Y_int,5)*powf(phase2pi,2) + s_c[115]*powf(Y_int,4)*powf(phase2pi,3) + s_c[116]*powf(Y_int,3)*powf(phase2pi,4) + s_c[117]*powf(Y_int,2)*powf(phase2pi,5) + s_c[118]*Y_int*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
			if (phase255 >= 0)
				g_SLMuc[idx] = (unsigned char)phase255;
			else
				g_SLMuc[idx] = 0;	
		}
		else 
		{
			phase255 = 255.0 * phase2pi / (2.0 * M_PI);
			g_SLMuc[idx] = (unsigned char)phase255;
		}
	}	
	__syncthreads();

}

			
				