////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////////
//The function "GenerateHologram" contains two different algorithms for
//hologram generation. The last parameter in the function call selects which 
//one to use:
//0: Complex addition of "Lenses and Prisms", no optimization (3D)
//1: Weighted Gerchberg-Saxton algorithm using Fresnel propagation (3D)
//
//-(1) Is implemented in two different ways, one that uses precalculated values 
//     for the phase difference between each pixel and each spot (a), and one that
//     calculates the values in each iteration (b). (a) is faster for up 
//     to 4 spots. The selection of the two implementation is automatic and based
//	   based on the number of spots. 
//-(0) produces optimal holograms for 1 or 2 traps and is significantly faster.
//     (0) is automatically selected if the number of spots is < 3. 
////////////////////////////////////////////////////////////////////////////////
//Fresnel propagation based algorithm (1 and 3) described in:
//Roberto Di Leonardo, Francesca Ianni, and Giancarlo Ruocco
//"Computer generation of optimal holograms for optical trap arrays"
//Opt. Express 15, 1913-1922 (2007) 
//
//The original algorithm has been modified to allow variable spot amplitudes
////////////////////////////////////////////////////////////////////////////////
//Possible improvements:
//-Put all arguments for device functions and trap positions in constant memory. 
// (Requires all functions to be moved into the same file or the use of some 
// workaround found on nVidia forum)  	
//-Put pSLM_start and aLaser in texture memory
//-Use "zero-copy" to transfer pSLM to host. (will only work on 1.3 devices and higher)
//-Rename functions and variables for consistency and readability
////////////////////////////////////////////////////////////////////////////////


#include "GenerateHologramCUDA.h"

//////////////////////////////////////////////////
//Global declaration
//////////////////////////////////////////////////
float *d_x, *d_y, *d_z, *d_I;					//trap coordinates and intensity in GPU memory
float *delta, *d_delta;							//distance between pixels on SLM and trap positions in host and GPU memory
float *d_ei_dre, *d_ei_dim;						//exp(i*re(delta)), exp(i*re(delta))
float *d_Vim, *d_Vre;							//energy flux contribution from each SLM pixel to each trap 
float *d_VimR, *d_VreR;							//sum of above for each trap
float *d_pSLM;									//the optimized phase pattern, float
float *d_weights, *d_weights_start, *d_amps;	//used weights and calculated amplitudes for each spot and each iteration
float *d_pSLM_start;							//Initial phase pattern
float *d_spotRe, *d_spotIm;

int MaxSpots, n_blocks_V, n_blocks_Phi, memsize_SLM_f, memsize_SLM_uc, memsize_V_f, memsize_spots_f, data_w, N_pixels, N_iterations_last, N_spots_a;

unsigned char *d_pSLM_uc;						//The optimized phase pattern, unsigned char, the one sent to the SLM
unsigned char *h_LUT, *d_LUT;
int maxThreads_device;
int use_LUTfile;
bool bEnableSLM;

////////////////////////////////////////////////////
//Global declarations for the FFT version
////////////////////////////////////////////////////
float *d_aLaserFFT, *d_LUT_coeff;
cufftHandle plan;
cufftComplex *d_FFTo, *d_FFTd, *d_SLM_cc;
int *d_spot_index, memsize_SLM_cc;

////////////////////////////////////////////////////////////////////////////////
// Functions to talk to SLM Hardware
////////////////////////////////////////////////////////////////////////////////
extern "C" int InitalizeSLM(	//returns 0 if PCIe hardware is used, 1 if PCI hardware is used
	bool bRAMWriteEnable, char* LUTFile, unsigned char* LUT, unsigned short TrueFrames
);

extern "C" void LoadImg(
	unsigned char* Img
);

extern "C" void Wait(
	int DelayMs
);

extern "C" void SetPower(
	bool bPower
);

extern "C" void ShutDownSLM();


////////////////////////////////////////////////////////////////////////////////
//The main function, generates a hologram 
////////////////////////////////////////////////////////////////////////////////

extern "C" __declspec(dllexport) int GenerateHologram(float *h_test, unsigned char *h_pSLM, float *x_spots, float *y_spots, float *z_spots, float *I_spots, int N_spots, int N_iterations, float *weights, float alpha, int method)
{
	int retur = 0;
	float alpha_RPC = alpha*2.0f*M_PI;
	if (N_spots > MaxSpots)
	{
		N_spots = MaxSpots;
		retur = 1;
	}
	
	memsize_spots_f = N_spots*sizeof(float);
	cudaMemcpy(d_x, x_spots, memsize_spots_f, cudaMemcpyHostToDevice);	
	cudaMemcpy(d_y, y_spots, memsize_spots_f, cudaMemcpyHostToDevice);	
	cudaMemcpy(d_z, z_spots, memsize_spots_f, cudaMemcpyHostToDevice);
	cudaMemcpy(d_I, I_spots, memsize_spots_f, cudaMemcpyHostToDevice);
	
	if ((method == 0)||((method == 1)&&(N_spots < 3)))
	{
		//////////////////////////////////////////////////
		//Generate the hologram using "Lenses and Prisms"
		//////////////////////////////////////////////////
		LensesAndPrisms<<< n_blocks_Phi, block_size >>>(d_x, d_y, d_z, d_I, d_pSLM_uc, N_spots, d_LUT, use_LUTfile, data_w);
		cudaDeviceSynchronize();
		checkAmplitudes<<< N_spots, 512>>>(d_x, d_y, d_z, d_pSLM_uc, d_amps, N_spots, N_pixels, data_w);
		cudaDeviceSynchronize();
		cudaMemcpy(h_pSLM, d_pSLM_uc, memsize_SLM_uc, cudaMemcpyDeviceToHost);	
		cudaMemcpy(weights, d_amps, N_spots*sizeof(float), cudaMemcpyDeviceToHost);
		retur = 5;	
	}
	else if (method == 1)		
	{
		////////////////////////////////////////////////////
		//Genreate holgram using fresnel propagation
		////////////////////////////////////////////////////
		
		cudaMemcpy(d_weights, d_weights_start, memsize_spots_f, cudaMemcpyDeviceToDevice);
		cudaMemcpy(d_pSLM_start, d_pSLM, memsize_SLM_f, cudaMemcpyDeviceToDevice);
		
		////////////////////////////////////////////////////
		//Select implementation based on the number of spots.	
		////////////////////////////////////////////////////
		if (N_spots <= N_spots_a)    
		{
			n_blocks_V = N_spots*N_pixels/block_size;	

			//////////////////////////////////////////////////////////////////////////
			//Compute the phase difference between each pixel in the SLM and each spot
			//////////////////////////////////////////////////////////////////////////
			computeDelta <<< n_blocks_V, block_size >>> (d_x, d_y, d_z, d_delta, d_ei_dre, d_ei_dim, N_spots, N_pixels, data_w);
			cudaDeviceSynchronize();
			
			/////////////////////////////////////////
			//Start the Gerchberg-Saxton iterations
			/////////////////////////////////////////
			for (int l=0; l<N_iterations; l++)
			{	
				//////////////////////////////////////////////////////////////////////////////////////////////////////////////
				// Compute complex amplitudes in spots (results will be located at spot number * N_pixels in d_Vre and d_Vim)
				//////////////////////////////////////////////////////////////////////////////////////////////////////////////
				computeV<<< n_blocks_Phi, block_size >>>(d_Vre, d_Vim, d_pSLM, d_delta, N_pixels, N_spots);
				cudaDeviceSynchronize();
				
				//////////////////////////////////////////////////////////////////////////////////
				//Sum the (complex amplitude) contribution from all pixels on the SLM to each spot
				//////////////////////////////////////////////////////////////////////////////////
				for (int ll=0; ll<N_spots; ll++)
				{
					int offset = ll * N_pixels;
					//Reduce(N_pixels, maxThreads, maxBlocks, d_Vre, d_VreR, offset); //slightly faster but uses Nvidia code that does not permit LGPL licensing
					//Reduce(N_pixels, maxThreads, maxBlocks, d_Vim, d_VimR, offset);
					sumV(d_Vre, d_VreR, offset);
					sumV(d_Vim, d_VimR, offset);
					cudaDeviceSynchronize();
				}
			
				computeWeights<<<1, N_spots>>>(d_VreR, d_VimR, N_spots, d_weights, l, d_amps, d_I, N_pixels);
				cudaDeviceSynchronize();
				////////////////////////////////////////////////////
				//Transform to the SLM plane
				////////////////////////////////////////////////////
				computePhi<<< n_blocks_Phi, block_size >>>(d_VreR, d_VimR, d_pSLM, d_ei_dre, d_ei_dim, N_pixels, 
														N_spots, d_weights, (l+1), d_pSLM_start, alpha_RPC, d_amps);	
				cudaDeviceSynchronize();
			}	
		}	
		else 
		{
			cudaDeviceSynchronize();
			for (int l=0; l<N_iterations; l++)
			{	
				////////////////////////////////////////////////////
				//Propagate to the farfield 
				////////////////////////////////////////////////////				
				transformToFarfield<<< N_spots, 512>>>(d_x, d_y, d_z, d_pSLM, d_spotRe, d_spotIm, N_spots, N_pixels, data_w);
				cudaDeviceSynchronize();		
				////////////////////////////////////////////////////
				//Propagate to the SLM plane
				////////////////////////////////////////////////////
				computePhiNew<<< 512, 512 >>>(d_x, d_y, d_z, d_I, d_spotRe, d_spotIm, d_pSLM, N_pixels, N_spots, d_weights, l, d_pSLM_start, alpha_RPC, d_amps);
				cudaDeviceSynchronize();
				retur = N_spots;
			}	
		}
		f2uc<<< n_blocks_Phi, block_size >>>(d_pSLM_uc, d_pSLM, N_pixels, d_LUT, use_LUTfile, data_w);
		cudaDeviceSynchronize();
		cudaMemcpy(h_pSLM, d_pSLM_uc, memsize_SLM_uc, cudaMemcpyDeviceToHost);			
		cudaMemcpy(weights, d_amps, N_spots*(N_iterations)*sizeof(float), cudaMemcpyDeviceToHost);
		//cudaMemcpy(weights, d_weights, N_spots*sizeof(float), cudaMemcpyDeviceToHost);
	}
	//generate hologram using fast fourier transforms 
	else if (method ==2)			
	{
		//cudaMemcpy(d_pSLM_uc, h_pSLM, memsize_SLM_uc, cudaMemcpyHostToDevice);
		//cudaDeviceSynchronize();
		//p_uc2c_cc_shift<<< n_blocks_Phi, block_size >>>(d_SLM_cc, d_pSLM_uc, N_pixels, data_w);

		float amp_desired = N_pixels * sqrt(1.0f/(float)N_spots);
		float weight = 1.0f/(float)N_spots;
		for (int i=0; i < N_spots; ++i)
		{
			weights[i] = weight;
		} 
		cudaDeviceSynchronize();		
		cudaMemcpy(d_weights, weights, N_spots * sizeof(float), cudaMemcpyHostToDevice);
		cudaDeviceSynchronize();
		cudaMemset(d_FFTd, 0, memsize_SLM_cc);
		cudaDeviceSynchronize();		
		XYtoIndex <<< 1, N_spots >>>(d_x,  d_y, d_spot_index, N_spots, data_w);
		cudaDeviceSynchronize();		
		for (int l=0; l<N_iterations; l++)
		{
			// Transform to trapping plane
			cufftExecC2C(plan, d_SLM_cc, d_FFTo, CUFFT_FORWARD);
			cudaDeviceSynchronize();

			// Copy phases for spot indices in d_FFTo to d_FFTd
			ReplaceAmpsFFT <<< 1, N_spots >>> (d_FFTo, d_FFTd, d_spot_index, N_spots, l, d_amps, d_weights, amp_desired);
			cudaDeviceSynchronize();
				//Transform back to SLM plane
			cufftExecC2C(plan, d_FFTd, d_SLM_cc, CUFFT_INVERSE);
			cudaDeviceSynchronize();

			// Set amplitudes in d_SLM to the laser amplitude profile
			ReplaceAmpsSLM <<< n_blocks_Phi, block_size >>> (d_aLaserFFT, d_SLM_cc, d_pSLM_start, N_pixels, alpha_RPC);
			cudaDeviceSynchronize();
		}	
	
		// Calculate phases in the SLM plane   
		getPhases<<< n_blocks_Phi, block_size >>> (d_pSLM_uc, d_pSLM_start, d_SLM_cc, d_LUT_coeff, 0, data_w);	
		cudaMemcpy(weights, d_amps, N_spots*(N_iterations)*sizeof(float), cudaMemcpyDeviceToHost);
		cudaDeviceSynchronize();	
		cudaMemcpy(h_pSLM, d_pSLM_uc, memsize_SLM_uc, cudaMemcpyDeviceToHost);			
	}
	//load image to the PCIe hardware  SLMstuff
	if(bEnableSLM)
		LoadImg(h_pSLM);
	
	retur = cudaGetLastError();
	//cudaMemcpy(h_test, d_aLaserDFT, memsize_SLM_f, cudaMemcpyDeviceToHost);
	return retur;	
}

////////////////////////////////////////////////////////////////////////////////
//Enable SLM
////////////////////////////////////////////////////////////////////////////////
extern "C" __declspec(dllexport) int startCUDAandSLM(int SLM_enabled, float *test, char* LUTFile, unsigned short TrueFrames, int deviceId, float *h_AberrationCorr)
{
	cudaSetDevice(deviceId); 
	cudaDeviceProp deviceProp;
    cudaGetDeviceProperties(&deviceProp, 0);
    maxThreads_device = deviceProp.maxThreadsPerBlock;
    
	MaxSpots = block_size;
	int MaxIterations = 1000;
	data_w = 512;
	N_pixels = data_w * data_w;
	N_spots_a = 3;
	N_iterations_last = 10;
	memsize_V_f = N_pixels * N_spots_a*sizeof(float);
	memsize_spots_f = MaxSpots * sizeof(float);
	memsize_SLM_f = N_pixels * sizeof(float);  
    memsize_SLM_uc = N_pixels * sizeof(unsigned char);
	memsize_SLM_cc = N_pixels * sizeof(cufftComplex);
    n_blocks_Phi = (N_pixels/block_size + (N_pixels%block_size == 0 ? 0:1));
    n_blocks_V = (N_spots_a*N_pixels/block_size + ((N_spots_a*N_pixels)%block_size == 0 ? 0:1));

	float weights[10000];
	for (int i=0; i < MaxSpots; ++i)
	{
		weights[i] = 1;;
	} 

	cudaMalloc((void**)&d_x, memsize_spots_f );
	cudaMalloc((void**)&d_y, memsize_spots_f );
	cudaMalloc((void**)&d_z, memsize_spots_f );
	cudaMalloc((void**)&d_I, memsize_spots_f );
	cudaMalloc((void**)&d_spotRe, memsize_spots_f );
	cudaMalloc((void**)&d_spotIm, memsize_spots_f );

	cudaMalloc((void**)&d_delta, memsize_V_f);
	cudaMalloc((void**)&d_ei_dre, memsize_V_f);
	cudaMalloc((void**)&d_ei_dim, memsize_V_f);
	cudaMalloc((void**)&d_Vre, memsize_V_f);
	cudaMalloc((void**)&d_Vim, memsize_V_f);
	cudaMalloc((void**)&d_VreR, memsize_V_f);
	cudaMalloc((void**)&d_VimR, memsize_V_f);
	cudaMalloc((void**)&d_weights, MaxSpots*(MaxIterations+1)*sizeof(float));
	cudaMalloc((void**)&d_weights_start, MaxSpots*(MaxIterations+1)*sizeof(float));
	cudaMalloc((void**)&d_amps, MaxSpots*MaxIterations*sizeof(float));
	cudaMalloc((void**)&d_pSLM, memsize_SLM_f);
	cudaMalloc((void**)&d_pSLM_start, memsize_SLM_f);
	cudaMalloc((void**)&d_pSLM_uc, memsize_SLM_uc);
	cudaMemset(d_pSLM, 0, N_pixels*sizeof(float)); 
	cudaMemcpy(d_weights_start, weights, MaxSpots*(N_iterations_last+1)*sizeof(float), cudaMemcpyHostToDevice);
	
	cudaMalloc((void**)&d_spot_index, MaxSpots * sizeof(int));
	cudaMalloc((void**)&d_FFTd, memsize_SLM_cc);	
	cudaMalloc((void**)&d_FFTo, memsize_SLM_cc);
	cudaMalloc((void**)&d_SLM_cc, memsize_SLM_cc);
	cufftPlan2d(&plan, data_w, data_w, CUFFT_C2C);
	float *h_aLaserFFT = (float *)malloc(memsize_SLM_f);

	//Open up communication to the PCIe hardware
	bEnableSLM = SLM_enabled; //SLMstuff
	if(bEnableSLM)
	{
		bool bRAMWriteEnable = false;
		h_LUT = new unsigned char[256];
		use_LUTfile = InitalizeSLM(bRAMWriteEnable, LUTFile, h_LUT, TrueFrames);  //InitalizeSLM returns 1 if PCI version is installed, PCIe version returns 0 since it applies LUT in hardware 
		cudaMalloc((void**)&d_LUT, 256);
		cudaMemcpy(d_LUT, h_LUT, 256, cudaMemcpyHostToDevice);
		delete []h_LUT;
		SetPower(true);
	}	
	else
	{
		use_LUTfile = 0;
	}
	return memsize_V_f;
}

extern "C" __declspec(dllexport) int stopCUDAandSLM()
{
	cudaFree(d_x);
	cudaFree(d_y);
	cudaFree(d_z);
	cudaFree(d_I);
	cudaFree(d_delta);
	cudaFree(d_ei_dre);
	cudaFree(d_ei_dim);
	cudaFree(d_Vre);
	cudaFree(d_Vim);
	cudaFree(d_VreR);
	cudaFree(d_VimR);
	cudaFree(d_weights);
	cudaFree(d_amps);
	cudaFree(d_pSLM);
	cudaFree(d_pSLM_start);
	cudaFree(d_pSLM_uc);
	
	cudaFree(d_FFTd);
	cudaFree(d_FFTo);
	cudaFree(d_SLM_cc);
	cufftDestroy(plan);
		
	if (use_LUTfile)
		cudaFree(d_LUT);
	
	cudaDeviceReset();
	
	//close out communication with the PCIe hardware SLMstuff
	if(bEnableSLM)
		ShutDownSLM();
	return 100;
}

/* FFT version, currently not working

//////////////////////////////////////////
//Add this to the header file
//////////////////////////////////////////
__global__ void XYtoIndex(float *d_x, float *d_y, int *spot_index, int N_spots, int data_w);
__global__ void ReplaceAmpsFFT(cufftComplex *a, cufftComplex *b, int *index, int N, int iteration, float *Intensity, float *weight, float amp_desired);
__global__ void getPhases(unsigned char *pSLMuc, float *d_pSLM_start, cufftComplex *cSLMcc, unsigned char *g_LUT, int use_linLUT, int data_w);
__global__ void ReplaceAmpsSLM(float *a, cufftComplex *b, float *p, int M, float RPC);



////////////////////////////////////////////////////
//Global declarations for the FFT version
////////////////////////////////////////////////////
float *d_aLaserFFT
cufftHandle plan;
cufftComplex *d_FFTo, *d_FFTd, *d_SLM_cc;
int *d_spot_index, memsize_SLM_cc;

///////////////////////////////////////////////////
//Add this to the StartCUDAandSLM function:
//////////////////////////////////////////////////
memsize_SLM_cc = N_pixels * sizeof(cufftComplex);
float *h_aLaserFFT = (float *)malloc(memsize_SLM_f);
cudaMalloc((void**)&d_aLaserFFT, memsize_SLM_f);
cudaMalloc((void**)&d_spot_index, MaxSpots * sizeof(int));
cudaMalloc((void**)&d_FFTd, memsize_SLM_cc);	
cudaMalloc((void**)&d_FFTo, memsize_SLM_cc);
cudaMalloc((void**)&d_SLM_cc, memsize_SLM_cc);
CUFFT_SAFE_CALL(cufftPlan2d(&plan, data_w, data_w, CUFFT_C2C));
float *h_aLaserFFT = (float *)malloc(memsize_SLM_f);
int IndexFFT, IndexDFT, row, col;
for(row = 0; row < data_w; row++)
{
	for(col = 0; col < data_w; col++)
	{
		//gaussian incident beam
		term1 = pow((float)row-beam_center_y,2.0f);
		term2 = pow((float)col-beam_center_x,2.0f);
		term3 = pow(beam_radius,2.0f);
		float Gauss = -(term1 + term2)/term3;
		Amplitude = exp(Gauss);
		//shift around my gaussian because we don't have an FFTShift equiv with CUDA
		if(row < (data_w/2) && col < (data_w/2))
			IndexFFT = ((row+(data_w/2))*data_w) + (col + (data_w/2));
		else if(row <(data_w/2) && col >= (data_w/2))
			IndexFFT = ((row+(data_w/2))*data_w) + (col - (data_w/2));
		else if(row >= (data_w/2) && col < (data_w/2))
			IndexFFT = ((row-(data_w/2))*data_w) + (col + (data_w/2));
			else
			IndexFFT = ((row-(data_w/2))*data_w) + (col - (data_w/2));
				
		//For the DFT version shifting is not needed
		IndexDFT = row*data_w + col;
			
		if (term1 + term2 < pow(aperture_radius, 2.0f)) 
		{
			h_aLaserFFT[IndexFFT] = Amplitude;
			h_aLaserDFT[IndexDFT] = Amplitude;
		}
		else
		{
			h_aLaserFFT[IndexFFT] = 0;
			h_aLaserDFT[IndexDFT] = 0;
		}
	}
cudaMemcpy(d_aLaserFFT, h_aLaserFFT, memsize_SLM_f, cudaMemcpyHostToDevice);
free(h_aLaserFFT);


////////////////////////////////////////////////////////////////
//Add this to the StopCUDAandSLM function:
///////////////////////////////////////////////////////////////
cudaFree(d_FFTd);
cudaFree(d_FFTo);
cudaFree(d_SLM_cc);
cudaFree(d_aLaserFFT);
cufftDestroy(plan);

////////////////////////////////////////////////////////////////
//Add this to GenerateHologram
/////////////////////////////////////////////////////////////////
else if (method ==2)			//generate hologram using fast fourier transforms 
{
	float amp_desired = N_pixels * sqrt(1.0f/(float)N_spots);
	float weight = 1.0f/(float)N_spots;
	for (int i=0; i < N_spots; ++i)
	{
		weights[i] = weight;
	} 
		cudaDeviceSynchronize();		
	cudaMemcpy(d_weights, weights, N_spots * sizeof(float), cudaMemcpyHostToDevice);
		cudaDeviceSynchronize();
	cudaMemset(d_FFTd, 0, memsize_SLM_cc);
		cudaDeviceSynchronize();		XYtoIndex <<< 1, N_spots >>> (d_x,  d_y, d_spot_index, N_spots, data_w);
		cudaDeviceSynchronize();		for (int l=0; l<N_iterations; l++)
	{
		// Transform to FFT plane
		cufftExecC2C(plan, d_SLM_cc, d_FFTo, CUFFT_FORWARD);
		cudaDeviceSynchronize();
	
		// Copy phases for spot indices in d_FFTo to d_FFTd
		ReplaceAmpsFFT <<< 1, N_spots >>> (d_FFTo, d_FFTd, d_spot_index, N_spots, l, d_amps, d_weights, amp_desired);
		cudaDeviceSynchronize();
			//Transform back to SLM plane
		cufftExecC2C(plan, d_FFTd, d_SLM_cc, CUFFT_INVERSE);
		cudaDeviceSynchronize();
		
		// Set amplitudes in d_SLM to the laser amplitudes
		ReplaceAmpsSLM <<< n_blocks_Phi, block_size >>> (d_aLaserFFT, d_SLM_cc, d_pSLM_start, N_pixels, alpha_RPC);
		cudaDeviceSynchronize();
		
		retur = l;
	}	
	// Calculate phases in the FFT plane   
	getPhases<<< n_blocks_Phi, block_size >>> (d_pSLM_uc, d_pSLM_start, d_SLM_cc, d_LUT, use_LUTfile, data_w);		
	//getPhases<<< n_blocks_Phi, block_size >>> (d_pSLM_uc, d_pSLM_start, d_FFTd, d_LUT, use_LUTfile, data_w);		
	cudaDeviceSynchronize();
	cudaMemcpy(h_pSLM, d_pSLM_uc, memsize_SLM_uc, cudaMemcpyDeviceToHost);			
}
*/