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
////////////////////////////////////////////////////////////////////////////////////
//Common functions
///////////////////////////////////////////////////////////////////////////////////
__device__ unsigned char phase2uc(float phase2pi)
{
	return (unsigned char)floor((phase2pi + M_PI)*256.0f / (2.0f * M_PI));
}
__device__ int phase2int32(float phase2pi)
{
	return (int)floor((phase2pi + M_PI)*256.0f / (2.0f * M_PI));
}
__device__ float ApplyAberrationCorrection(float phase, float correction)
{
		phase = phase + correction;		//apply correction
		return (phase - (2.0*M_PI) * floor((phase+M_PI) / (2.0*M_PI))); //apply mod([-pi, pi], phase) 
}
/*__device__ unsigned char applyPolLUT(float phase2pi, int X, int Y, float *s_c, int N_PolCoeff)		
{
	float phase255 = 0;
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
		case 35:
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
}*/
__device__ unsigned char applyPolLUT(float phase2pi, int X, int Y, float *s_c, int N_PolCoeff)		
{
	float phase255 = 255.0f;
	switch (N_PolCoeff)	{
		case 120:
			phase255 = phase255 -(s_c[84]*powf(X,7) + s_c[85]*powf(X,6)*Y + s_c[86]*powf(X,6)*phase2pi + s_c[87]*powf(X,5)*powf(Y,2) + s_c[88]*powf(X,5)*Y*phase2pi + s_c[89]*powf(X,5)*powf(phase2pi,2) + s_c[90]*powf(X,4)*powf(Y,3) + s_c[91]*powf(X,4)*powf(Y,2)*phase2pi + s_c[92]*powf(X,4)*Y*powf(phase2pi,2) + s_c[93]*powf(X,4)*powf(phase2pi,3) + s_c[94]*powf(X,3)*powf(Y,4) + s_c[95]*powf(X,3)*powf(Y,3)*phase2pi + s_c[96]*powf(X,3)*powf(Y,2)*powf(phase2pi,2) + s_c[97]*powf(X,3)*Y*powf(phase2pi,3) + s_c[98]*powf(X,3)*powf(phase2pi,4) + s_c[99]*powf(X,2)*powf(Y,5) + s_c[100]*powf(X,2)*powf(Y,4)*phase2pi + s_c[101]*powf(X,2)*powf(Y,3)*powf(phase2pi,2) + s_c[102]*powf(X,2)*powf(Y,2)*powf(phase2pi,3) + s_c[103]*powf(X,2)*Y*powf(phase2pi,4) + s_c[104]*powf(X,2)*powf(phase2pi,5) + s_c[105]*X*powf(Y,6) + s_c[106]*X*powf(Y,5)*phase2pi + s_c[107]*X*powf(Y,4)*powf(phase2pi,2) + s_c[108]*X*powf(Y,3)*powf(phase2pi,3) + s_c[109]*X*powf(Y,2)*powf(phase2pi,4) + s_c[110]*X*Y*powf(phase2pi,5) + s_c[111]*X*powf(phase2pi,6) + s_c[112]*powf(Y,7) + s_c[113]*powf(Y,6)*phase2pi + s_c[114]*powf(Y,5)*powf(phase2pi,2) + s_c[115]*powf(Y,4)*powf(phase2pi,3) + s_c[116]*powf(Y,3)*powf(phase2pi,4) + s_c[117]*powf(Y,2)*powf(phase2pi,5) + s_c[118]*Y*powf(phase2pi,6) + s_c[119]*powf(phase2pi,7));
		case 84:
			phase255 = phase255 -(s_c[56]*powf(X,6) + s_c[57]*powf(X,5)*Y + s_c[58]*powf(X,5)*phase2pi + s_c[59]*powf(X,4)*powf(Y,2) + s_c[60]*powf(X,4)*Y*phase2pi + s_c[61]*powf(X,4)*powf(phase2pi,2) + s_c[62]*powf(X,3)*powf(Y,3) + s_c[63]*powf(X,3)*powf(Y,2)*phase2pi + s_c[64]*powf(X,3)*Y*powf(phase2pi,2) + s_c[65]*powf(X,3)*powf(phase2pi,3) + s_c[66]*powf(X,2)*powf(Y,4) + s_c[67]*powf(X,2)*powf(Y,3)*phase2pi + s_c[68]*powf(X,2)*powf(Y,2)*powf(phase2pi,2) + s_c[69]*powf(X,2)*Y*powf(phase2pi,3) + s_c[70]*powf(X,2)*powf(phase2pi,4) + s_c[71]*X*powf(Y,5) + s_c[72]*X*powf(Y,4)*phase2pi + s_c[73]*X*powf(Y,3)*powf(phase2pi,2) + s_c[74]*X*powf(Y,2)*powf(phase2pi,3) + s_c[75]*X*Y*powf(phase2pi,4) + s_c[76]*X*powf(phase2pi,5) + s_c[77]*powf(Y,6) + s_c[78]*powf(Y,5)*phase2pi + s_c[79]*powf(Y,4)*powf(phase2pi,2) + s_c[80]*powf(Y,3)*powf(phase2pi,3) + s_c[81]*powf(Y,2)*powf(phase2pi,4) + s_c[82]*Y*powf(phase2pi,5) + s_c[83]*powf(phase2pi,6));
		case 56:
			phase255 = phase255 -(s_c[35]*powf(X,5) + s_c[36]*powf(X,4)*Y + s_c[37]*powf(X,4)*phase2pi + s_c[38]*powf(X,3)*powf(Y,2) + s_c[39]*powf(X,3)*Y*phase2pi + s_c[40]*powf(X,3)*powf(phase2pi,2) + s_c[41]*powf(X,2)*powf(Y,3) + s_c[42]*powf(X,2)*powf(Y,2)*phase2pi + s_c[43]*powf(X,2)*Y*powf(phase2pi,2) + s_c[44]*powf(X,2)*powf(phase2pi,3) + s_c[45]*X*powf(Y,4) + s_c[46]*X*powf(Y,3)*phase2pi + s_c[47]*X*powf(Y,2)*powf(phase2pi,2) + s_c[48]*X*Y*powf(phase2pi,3) + s_c[49]*X*powf(phase2pi,4) + s_c[50]*powf(Y,5) + s_c[51]*powf(Y,4)*phase2pi + s_c[52]*powf(Y,3)*powf(phase2pi,2) + s_c[53]*powf(Y,2)*powf(phase2pi,3) + s_c[54]*Y*powf(phase2pi,4) + s_c[55]*powf(phase2pi,5));
		case 35:
			phase255 = phase255 -(s_c[20]*powf(X,4) + s_c[21]*powf(X,3)*Y + s_c[22]*powf(X,3)*phase2pi + s_c[23]*powf(X,2)*powf(Y,2) + s_c[24]*powf(X,2)*Y*phase2pi + s_c[25]*powf(X,2)*powf(phase2pi,2) + s_c[26]*X*powf(Y,3) + s_c[27]*X*powf(Y,2)*phase2pi + s_c[28]*X*Y*powf(phase2pi,2) + s_c[29]*X*powf(phase2pi,3) + s_c[30]*powf(Y,4) + s_c[31]*powf(Y,3)*phase2pi + s_c[32]*powf(Y,2)*powf(phase2pi,2) + s_c[33]*Y*powf(phase2pi,3) + s_c[34]*powf(phase2pi,4));
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
__device__ void warpReduceC(volatile float *s_Vre, volatile float *s_Vim, int tid)
{
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
/////////////////////////////////////////////////////////////////////////////////////////////////
//Calculate hologram using "Lenses and Prisms"
/////////////////////////////////////////////////////////////////////////////////////////////////
__global__ void LensesAndPrisms(float *g_x, float *g_y, float *g_z, float *g_I, unsigned char *g_SLMuc, int N_spots, unsigned char *g_LUT, bool ApplyLUT_b, int data_w, bool UseAberrationCorr_b, float *d_AberrationCorr_f, bool UseLUTPol_b, float *d_LUTPolCoeff_f, int N_PolCoeff)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;
	
	__shared__ float s_x[BLOCK_SIZE];
	__shared__ float s_y[BLOCK_SIZE];
	__shared__ float s_z[BLOCK_SIZE];
	__shared__ float s_a[BLOCK_SIZE];
	
	if (tid < N_spots)
	{
		s_x[tid] = g_x[tid];
		s_y[tid] = g_y[tid];
		s_z[tid] = g_z[tid];
		s_a[tid] = sqrtf(g_I[tid]);
	}
	__syncthreads();	
	
	if (idx < data_w*data_w)
	{
		//get pixel coordinates 
		float N = data_w;
		int logN = (int)log2(N);
		int X_int = idx&(int)(N-1);
	 	//int Y_int = (idx&(int)(N*N-1)-X_int)>>logN;
	 	int Y_int = (idx-X_int)>>logN;
	 	float X = (float)(X_int - (data_w>>1)) / N; //does not work for 768 pixels
 		float Y = (float)(Y_int - (data_w>>1)) / N;
		
		float phase2pi;  // [-pi,pi]
		float SLMre = 0;
		float SLMim = 0;
				
		for (int ii=0; ii<N_spots; ++ii)
		{
			phase2pi = M_PI * s_z[ii] * (X*X + Y*Y) + 2.0 * M_PI * (X * (s_x[ii]) + Y * (s_y[ii]) );
			SLMre = SLMre + s_a[ii] * cosf(phase2pi);
			SLMim = SLMim + s_a[ii] * sinf(phase2pi); 
		}
		phase2pi = atan2f(SLMim, SLMre);	
		
		if (UseAberrationCorr_b)
			phase2pi = ApplyAberrationCorrection(phase2pi, d_AberrationCorr_f[idx]);

		if (ApplyLUT_b) 
		{
			if (!UseLUTPol_b)
			{
				__shared__ unsigned char s_LUT[256];
				if (tid < 256)
					s_LUT[tid] = g_LUT[tid];
				__syncthreads();
				g_SLMuc[idx] = s_LUT[phase2int32(phase2pi)];
			}
			else
			{
				__shared__ float s_LUTcoeff[120];
				if (tid < N_PolCoeff)
					s_LUTcoeff[tid] = d_LUTPolCoeff_f[tid];
				__syncthreads();
				g_SLMuc[idx] = applyPolLUT(phase2pi, X, Y, s_LUTcoeff, N_PolCoeff);
			}
		}
		else
			g_SLMuc[idx] = phase2uc(phase2pi);
	}	
	__syncthreads();

}

__global__ void checkAmplitudes(float *g_x, float *g_y, float *g_z, unsigned char *g_pSLM_uc, float *g_amps, int N_spots, int N_pixels, int data_w)
{
	int blockSize = 512;
	int spot_number = blockIdx.x;
	int tid = threadIdx.x;
	int i = tid;
	
	__shared__ float s_Vre[BLOCK_SIZE];
	__shared__ float s_Vim[BLOCK_SIZE];
	__shared__ float s_xm, s_ym, s_zm;

	s_Vre[tid] = 0;
	s_Vim[tid] = 0;
		
	float N = data_w;
	int logN = (int)log2(N);
	float d = 0.001953125;	//SLM pixel size (1/512)	512!
	
	if (tid == 0)
		s_xm = g_x[spot_number];
	if (tid == 64)
		s_ym = g_y[spot_number];	
	if (tid == 128)
		s_zm = g_z[spot_number];
	
	float X1 = d * ((float)tid - 256.0);				//512!
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
		float Vre = s_Vre[0] / 262144.0;			//512!
		float Vim = s_Vim[0] / 262144.0;
		g_amps[spot_number] = hypotf(Vim, Vre);
	}
}
////////////////////////////////////////////////////////////////////////////////
//Functions for GS with Fresnel propagation
////////////////////////////////////////////////////////////////////////////////
//Propagate from the SLM to the spot positions using Fresnel summation
//(Works for 512x512 pixels only!)
////////////////////////////////////////////////////////////////////////////////
__global__ void PropagateToSpotPositions_Fresnel(float *g_x, float *g_y, float *g_z, float *g_pSLM2pi, float *g_Vre, float *g_Vim, int N_spots, int n, int data_w)
{
	int blockSize = 512;
	int spot_number = blockIdx.x;
	int tid = threadIdx.x;
	int i = tid;
	
	__shared__ float s_Vre[BLOCK_SIZE];
	__shared__ float s_Vim[BLOCK_SIZE];
	__shared__ float s_xm, s_ym, s_zm;

	s_Vre[tid] = 0;
	s_Vim[tid] = 0;
		
	float N = data_w;
	int logN = (int)log2(N);
	float d = 0.001953125;	//Normalized pixel pitch (1/512)
	
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
		float pSLM_1 = g_pSLM2pi[i];
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

	
	if (tid < 32)
		warpReduceC(s_Vre, s_Vim, tid);

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
////////////////////////////////////////////////////////////////////////////////
__global__ void PropagateToSLM_Fresnel(float *g_x, 
								float *g_y, 
								float *g_z, 
								float *g_I, 
								float *g_SpotsRe, 
								float *g_SpotsIm, 
								float *g_pSLM2pi, 
								int N_pixels, 
								int N_spots, 
								float *g_weights, 
								int iteration, 
								float *g_pSLMstart, 
								float RPC, 
								float *g_amps,
								bool getpSLM255,
								unsigned char *g_pSLM255_uc,
								unsigned char *g_LUT, 
								bool ApplyLUT_b, 
								bool UseAberrationCorr_b, 
								float *g_AberrationCorr_f, 
								bool UseLUTPol_b, 
								float *g_LUTPolCoeff_f, 
								int N_PolCoeff)
{
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	int tid = threadIdx.x;	
	__shared__ float s_aSpot[BLOCK_SIZE], s_a_mean, s_weight[BLOCK_SIZE], s_pSpot[BLOCK_SIZE];
	__shared__ float s_xm[BLOCK_SIZE];
	__shared__ float s_ym[BLOCK_SIZE];
	__shared__ float s_zm[BLOCK_SIZE];
	float reSLM = 0, imSLM = 0, pSLM2pi_f = 0;

	if (idx<N_pixels)
	{
		//float N = 512;
		//int logN = (int)log2(N);
		float d = 0.001953125;		//Normalized pixel pitch (1/512)
		
		//load data to shared memory
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

		//compute weights 
		if  (tid==0)
		{
			float s_aSpot_sum = 0;
			for (int jj=0; jj<N_spots;jj++)
			{	
				s_aSpot_sum += s_aSpot[jj];		
			}
			s_a_mean = s_aSpot_sum / (float)N_spots; //integer division!!
		}
		__syncthreads();
	
		if (tid<N_spots)
		{
			s_weight[tid] = s_weight[tid] * s_a_mean / s_aSpot[tid];	
			g_weights[tid + N_spots*(iteration+1)] = s_weight[tid];
			g_amps[tid + N_spots*iteration] = s_aSpot[tid];		//may be excluded, used for monitoring only
		}
		__syncthreads();				
		//get pixel coordinates (change this to allow data_w!=512) 
 		float X = d * (((float)(threadIdx.x) - 256.0f));
 		float Y = d * (((float)(blockIdx.x) - 256.0f));

		//compute SLM phase by summing contribution from all spots
		for (int k=0; k<N_spots; k++)
		{
			float delta = M_PI * s_zm[k] * (X*X + Y*Y) + 2.0 * M_PI * (X * s_xm[k] + Y * s_ym[k]);
			reSLM += s_weight[k] * cosf(s_pSpot[k] + delta);
			imSLM += s_weight[k] * sinf(s_pSpot[k] + delta);
		}
		pSLM2pi_f = atan2f(imSLM, reSLM);		
		
	
		if (RPC < (2.0f*M_PI))			//Apply RPC (restricted Phase Change)
		{	
			float pSLMstart = g_pSLMstart[idx];
			if (fabs(pSLM2pi_f - pSLMstart) > RPC)
				pSLM2pi_f = pSLMstart;
			if (getpSLM255)
				g_pSLMstart[idx] = pSLM2pi_f;
		}		

		if (getpSLM255)					//Compute final SLM phases and write to global memory... 
		{								
			if (UseAberrationCorr_b)
				pSLM2pi_f = ApplyAberrationCorrection(pSLM2pi_f, g_AberrationCorr_f[idx]);
			if (ApplyLUT_b)
			{
				if (!UseLUTPol_b)
				{
					__shared__ unsigned char s_LUT[256];
					if (tid < 256)
						s_LUT[tid] = g_LUT[tid];
					__syncthreads();
					g_pSLM255_uc[idx] = s_LUT[phase2int32(pSLM2pi_f)];
				}
				else
				{
					__shared__ float s_LUTcoeff[120];
					if (tid < N_PolCoeff)
						s_LUTcoeff[tid] = g_LUTPolCoeff_f[tid];
					__syncthreads();
					g_pSLM255_uc[idx] = applyPolLUT(pSLM2pi_f, X, Y, s_LUTcoeff, N_PolCoeff);
				}
			}
			else
				g_pSLM255_uc[idx] = phase2uc(pSLM2pi_f);
		}
		else
		{
			g_pSLM2pi[idx] = pSLM2pi_f;	//...or write intermediate phase to global memory
		}
	}
}
