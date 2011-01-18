/*   
   Hologram generating algorithms for CUDA Devices
   Copyright 2009, 2010, 2011 Martin Persson 
   martin.persson@physics.gu.se


   This file is part of GenerateHologramCUDA.

    GenerateHologramCUDA is free software: you can redistribute it and/or 
    modify it under the terms of the GNU General Public License as published 
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GenerateHologramCUDA is distributed in the hope that it will be 
    useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/
////////////////////////////////////////////////////////////////////////////////
//Compute weights for each spot based on desired and obtaied amplitude
////////////////////////////////////////////////////////////////////////////////

#include "GenerateHologramCUDA.h"

__global__ void computeWeights(float *g_Vre, 
							float *g_Vim, 
							int N_spots, 
							float *g_weights, 
							int iteration, 
							float *g_amps_o, 
							float *g_I, 
							int N_pixels)
{

	int tid = threadIdx.x;	
	__shared__ float s_aSpot_o[block_size], s_aSpot_mean;
	float Vre, Vim, wSpot;

	if (tid<N_spots)
	{										//the desited amplitude for each spot
		Vre = g_Vre[tid*N_pixels];
		Vim = g_Vim[tid*N_pixels];
		s_aSpot_o[tid] = hypotf(Vim, Vre)/sqrtf(g_I[tid]);	//the obtained amplitude for each spot divided by the desired amplitude	
		wSpot = g_weights[tid + iteration*N_spots];			//the previous weight for each spot
	}

	__syncthreads();
	if  (tid==0)
	{
		float aSpot_sum = 0;
		for (int kk=0; kk<N_spots; kk++)
		{
			aSpot_sum += s_aSpot_o[kk];
		}
		s_aSpot_mean = aSpot_sum / N_spots; //integer division!!
	}
	__syncthreads();
	
	if (tid<N_spots)
	{
		wSpot = wSpot * s_aSpot_mean / s_aSpot_o[tid];	
		g_weights[tid + N_spots*(iteration+1)] = wSpot;
		g_amps_o[tid + N_spots*iteration] = s_aSpot_o[tid];		
	}
}
