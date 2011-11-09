////////////////////////////////////////////////////////////////////////////////
// Hologram generating algorithms for CUDA Devices
// Written by Martin Persson 2009
// martin.persson@physics.gu.se
////////////////////////////////////////////////////////////////////////////////
//The function "GenerateHologram" contains three different algorithms for
//hologram generation. The last parameter in the function call selects which 
//one to use:
//0: Complex addition of "Lenses and Prisms", no optimization (3D)
//1: Weighted Gerchberg-Saxton algorithm using Fresnel propagation (3D)
//2: Weighted Gerchberg-Saxton algorithm using fast fourier transforms (2D)
//3: Different implementation of (1)
//4: Selects among (0), (1) and (3) to optimize speed according to the desired 
//   number of traps
//
//-(3) is written to minimize the use of global memory. The computational time of 
// (3) is only weakly dependent on the number of traps, it should be choosen if 
// more than 4 traps is desired. 
//-(0) produces optimal holograms for 1 or 2 traps and is significantly faster 
// than the others.
////////////////////////////////////////////////////////////////////////////////
//Fresnel propagation based algorithm (1 and 3) described in:
//Roberto Di Leonardo, Francesca Ianni, and Giancarlo Ruocco
//"Computer generation of optimal holograms for optical trap arrays"
//Opt. Express 15, 1913-1922 (2007) 
////////////////////////////////////////////////////////////////////////////////
//Possible improvements:
//-Put all arguments for device functions and trap positions in constant memory. 
// (Requires all functions to be moved into the same file or the use of some 
// workaround found on nVidia forum)  	
//-Put pSLM_start and aLaser in texture memory
//-Use "zero-copy" to trasfer pSLM to host. (will only work on 1.3 devices and higher)
//-Rename functions and variables for consistency and readability
////////////////////////////////////////////////////////////////////////////////


#include "GenerateHologramCUDA_PCI.h"

//////////////////////////////////////////////////
//delarations for the DFT version
//////////////////////////////////////////////////
float *d_x, *d_y, *d_z;							//trap coordinates in GPU memory
float *delta, *d_delta;							//distance between pixels on SLM and trap positions in host and GPU memory
float *d_ei_dre, *d_ei_dim;						//exp(i*re(delta)), exp(i*re(delta))
float *d_Vim, *d_Vre;							//energy flux contribution from each SLM pixel to each trap 
float *d_VimR, *d_VreR;							//sum of above for each trap
float *d_aLaserFFT, *d_aLaserDFT;				//laser amplitude distribution on SLM
float *d_pSLM;									//the optimized phase pattern, float
float *d_weights, *d_amps;						//used weights and calculated amplitudes for each spot and each iteration
float *d_pSLM_start;							//Initial phase pattern
float *d_LUT_coeff;
float *d_spotRe, *d_spotIm;

//////////////////////////////////////////////////
//delarations for the FFT version
//////////////////////////////////////////////////
cufftComplex *d_SLM_cc;
cufftHandle plan;
int mem_size_cC;
cufftComplex *d_FFTo, *d_FFTd;
int *d_spot_index;


int n_blocks_V, n_blocks_Phi, memsize_SLM_f, memsize_SLM_uc, memsize_SLM_cc, memsize_V_f, memsize_spots_f, N_spots_last, N_pixels, N_iterations_last;

unsigned char *d_pSLM_uc;						//The optimized phase pattern, unsigned char, the one sent to the SLM
int blockSize = block_size;
int maxThreads = 128;
int maxBlocks = 128;
int maxThreads_device;
bool bEnableSLM;


////////////////////////////////////////////////////////////////////////////////
// Functions to talk to PCIe Hardware
////////////////////////////////////////////////////////////////////////////////
/*extern "C" void InitalizePCIe(
	bool bRAMWriteEnable
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

extern "C" void ShutDownPCIe();
*/

////////////////////////////////////////////////////////////////////////////////
//Run cuGS 
////////////////////////////////////////////////////////////////////////////////

extern "C" __declspec(dllexport) float GenerateHologram(float *h_test, unsigned char *h_pSLM, float *x_spots, float *y_spots, float *z_spots, int N_spots, int data_w, int N_iterations, float *weights, float alpha, int method, int spatial_LUT)
{
	int retur = 0;
	float alpha_RPC = alpha*2.0f*M_PI;
	cudaMemcpy(d_x, x_spots, memsize_spots_f, cudaMemcpyHostToDevice);	
	cudaMemcpy(d_y, y_spots, memsize_spots_f, cudaMemcpyHostToDevice);	
	cudaMemcpy(d_z, z_spots, memsize_spots_f, cudaMemcpyHostToDevice);
	
	if (method == 4)
	{
		if (N_spots < 3)
			method = 0;
		else if (N_spots < 5)
			method = 1;
		else 
			method = 3;
	}
	
	if (method == 0)
	{
		LensesAndPrisms<<< n_blocks_Phi, block_size >>>(d_x, d_y, d_z, d_pSLM_uc, N_spots, d_LUT_coeff, spatial_LUT, data_w);
	}
	
	if (method == 1)				//Gerchberg-Saxton using fresnel propagation
	{
		
		if (N_spots != N_spots_last)
		{
			n_blocks_V = (N_spots*N_pixels/block_size + ((N_spots*N_pixels)%block_size == 0 ? 0:1));
			memsize_V_f = N_pixels*N_spots*sizeof(float);
			memsize_spots_f = N_spots*sizeof(float);
				
			if (N_spots > N_spots_last)
			{	
	
				for (int i=0; i < N_spots; ++i)
				{
					weights[i] = 1;
				} 
				cudaFree(d_delta);
				cudaFree(d_ei_dre);
				cudaFree(d_ei_dim);
				cudaFree(d_Vre);
				cudaFree(d_Vim);
				cudaFree(d_VreR);
				cudaFree(d_VimR);
				cudaFree(d_weights);
				cudaFree(d_amps);

				cudaMalloc((void**)&d_delta, memsize_V_f);
				cudaMalloc((void**)&d_ei_dre, memsize_V_f);
				cudaMalloc((void**)&d_ei_dim, memsize_V_f);
				cudaMalloc((void**)&d_Vre, memsize_V_f);
				cudaMalloc((void**)&d_Vim, memsize_V_f);
				cudaMalloc((void**)&d_VreR, memsize_V_f);
				cudaMalloc((void**)&d_VimR, memsize_V_f);
				cudaMalloc((void**)&d_amps, N_spots_last*(N_iterations_last)*sizeof(float));
				cudaMalloc((void**)&d_weights, N_spots*(N_iterations+1)*sizeof(float));
				
				cudaMemcpy(d_weights, weights, N_spots*(N_iterations+1)*sizeof(float), cudaMemcpyHostToDevice);	
			}
		}

		cudaMemcpy(d_pSLM_start, d_pSLM, memsize_SLM_f, cudaMemcpyDeviceToDevice);
		cudaThreadSynchronize();
		
		computeDelta <<< n_blocks_V, block_size >>> (d_x, d_y, d_z, d_delta, d_ei_dre, d_ei_dim, N_spots, N_pixels, data_w);
		cudaThreadSynchronize();

		for (int l=0; l<N_iterations; l++)
		{	
			// Compute complex amplitudes in spots (results will be located at spot number * N_pixels in d_Vre and d_Vim)
			computeV<<< n_blocks_Phi, block_size >>>(d_Vre, d_Vim, d_pSLM, d_delta, N_pixels, N_spots, d_aLaserDFT);
			cudaThreadSynchronize();
			
			for (int ll=0; ll<N_spots; ll++)
			{
				int offset = ll * N_pixels;
				Reduce(N_pixels, maxThreads, maxBlocks, d_Vre, d_VreR, offset);
				Reduce(N_pixels, maxThreads, maxBlocks, d_Vim, d_VimR, offset);
				cudaThreadSynchronize();
			}
		
			computeWeights<<<1, N_spots>>>(d_VreR, d_VimR, N_spots, d_weights, l, d_amps, N_pixels);
			computePhi<<< n_blocks_Phi, block_size >>>(d_VreR, d_VimR, d_pSLM, d_ei_dre, d_ei_dim, N_pixels, N_spots, d_weights, (l+1), d_pSLM_start, alpha_RPC, d_amps);	
		}
		cudaThreadSynchronize();
		f2uc<<< n_blocks_Phi, block_size >>>(d_pSLM_uc, d_pSLM, N_pixels, d_LUT_coeff, spatial_LUT, data_w);
	}
	else if (method ==2)			//Gerchberg-Saxton using fast fourier transforms 
	{
		float amp_desired = N_pixels * sqrt(1.0f/(float)N_spots);
		float weight = 1.0f/(float)N_spots;
		for (int i=0; i < N_spots; ++i)
		{
			weights[i] = weight;
		} 
		
		cudaMemcpy(d_weights, weights, N_spots * sizeof(float), cudaMemcpyHostToDevice);
		cudaMemset(d_FFTd, 0, memsize_SLM_cc);
		
		XYtoIndex <<< 1, N_spots >>> (d_x,  d_y, d_spot_index, N_spots, data_w);
		
		for (int l=0; l<N_iterations; l++)
		{
			// Transform to FFT plane
			cufftExecC2C(plan, d_SLM_cc, d_FFTo, CUFFT_FORWARD);
			cudaThreadSynchronize();
		
			// Copy phases for spot indices in d_FFTo to d_FFTd
			usePhasesW <<< 1, N_spots >>> (d_FFTo, d_FFTd, d_spot_index, N_spots, l, d_amps, d_weights, amp_desired);
			cudaThreadSynchronize();

			//Transform back to SLM plane
			cufftExecC2C(plan, d_FFTd, d_SLM_cc, CUFFT_INVERSE);
			cudaThreadSynchronize();
			
			// Set amplitudes in d_SLM to the laser amplitudes
			resetAmplitudesRPC <<< n_blocks_Phi, block_size >>> (d_aLaserFFT, d_SLM_cc, d_pSLM_start, N_pixels, alpha_RPC);
			cudaThreadSynchronize();
			
			retur = l;
		}	
		// Calculate phases in the FFT plane   
		getPhases<<< n_blocks_Phi, block_size >>> (d_pSLM_uc, d_pSLM_start, d_SLM_cc, d_LUT_coeff, spatial_LUT, data_w);
	}
	
	else if (method == 3)		//Alternative implementation of Gerchberg-Saxton using fresnel propagation
	{
		cudaMemcpy(d_pSLM_start, d_pSLM, memsize_SLM_f, cudaMemcpyDeviceToDevice);
		cudaThreadSynchronize();

		for (int l=0; l<N_iterations; l++)
		{	
			transformToFarfield<<< N_spots, 512>>>(d_x, d_y, d_z, d_pSLM, d_aLaserDFT, d_spotRe, d_spotIm, N_spots, N_pixels, data_w);
			cudaThreadSynchronize();
			
			computePhiNew<<< 512, 512 >>>(d_x, d_y, d_z, d_spotRe, d_spotIm, d_pSLM, N_pixels, N_spots, d_weights, l, d_pSLM_start, alpha_RPC, d_amps);
			cudaThreadSynchronize();
		}

		f2uc<<< n_blocks_Phi, block_size >>>(d_pSLM_uc, d_pSLM, N_pixels, d_LUT_coeff, spatial_LUT, data_w);
		
	}
	cudaThreadSynchronize();			
	cudaMemcpy(h_pSLM, d_pSLM_uc, memsize_SLM_uc, cudaMemcpyDeviceToHost);  //testa zero-copy istället från computePhi

	//load image to the PCIe hardware  SLMstuff
	//if(bEnableSLM)
	//	LoadImg(h_pSLM);
	
	//cudaMemcpy(weights, d_weights, N_spots*(N_iterations+1)*sizeof(float), cudaMemcpyDeviceToHost);
	cudaMemcpy(weights, d_amps, N_spots*(N_iterations)*sizeof(float), cudaMemcpyDeviceToHost);
	//cudaMemcpy(h_test, d_aLaserDFT, memsize_SLM_f, cudaMemcpyDeviceToHost);
	N_spots_last = N_spots;
	return retur;	
}

////////////////////////////////////////////////////////////////////////////////
//Enable SLM for cuGSdft
////////////////////////////////////////////////////////////////////////////////
extern "C" __declspec(dllexport) int startCUDAandSLM(int SLM_enabled, float beam_center_x, float beam_center_y, float beam_radius, float aperture_radius, int data_w,  float *test, unsigned char *h_pSLM, float *LUT_coeff)
{
	cudaDeviceProp deviceProp;
    cudaGetDeviceProperties(&deviceProp, 0);
    maxThreads_device = deviceProp.maxThreadsPerBlock;
	int MaxSpots = block_size;
	int MaxIterations = 1000;
	float term1, term2, term3, Amplitude;
	N_pixels = data_w * data_w;
	N_spots_last = 8;
	N_iterations_last = 10;
	memsize_V_f = N_pixels * N_spots_last*sizeof(float);
	memsize_spots_f = MaxSpots * sizeof(float);
	memsize_SLM_f = N_pixels * sizeof(float);  
    memsize_SLM_uc = N_pixels * sizeof(unsigned char);
    memsize_SLM_cc = N_pixels * sizeof(cufftComplex);
    n_blocks_Phi = (N_pixels/block_size + (N_pixels%block_size == 0 ? 0:1));
    n_blocks_V = (N_spots_last*N_pixels/block_size + ((N_spots_last*N_pixels)%block_size == 0 ? 0:1));
	float *h_aLaserFFT = (float *)malloc(memsize_SLM_f);
	float *h_aLaserDFT = (float *)malloc(memsize_SLM_f);	
	float weights[10000];
	for (int i=0; i < N_spots_last; ++i)
	{
		weights[i] = 1;//weight;
	} 
	cudaMalloc((void**)&d_LUT_coeff, N_LUT_coeff * sizeof(float));
	cudaMalloc((void**)&d_aLaserFFT, memsize_SLM_f);
	cudaMalloc((void**)&d_aLaserDFT, memsize_SLM_f);
	cudaMalloc((void**)&d_x, memsize_spots_f );
	cudaMalloc((void**)&d_y, memsize_spots_f );
	cudaMalloc((void**)&d_z, memsize_spots_f );
	cudaMalloc((void**)&d_spotRe, memsize_spots_f );
	cudaMalloc((void**)&d_spotIm, memsize_spots_f );
	cudaMalloc((void**)&d_spot_index, MaxSpots * sizeof(int));
	cudaMalloc((void**)&d_delta, memsize_V_f);
	cudaMalloc((void**)&d_ei_dre, memsize_V_f);
	cudaMalloc((void**)&d_ei_dim, memsize_V_f);
	cudaMalloc((void**)&d_Vre, memsize_V_f);
	cudaMalloc((void**)&d_Vim, memsize_V_f);
	cudaMalloc((void**)&d_VreR, memsize_V_f);
	cudaMalloc((void**)&d_VimR, memsize_V_f);
	cudaMalloc((void**)&d_weights, MaxSpots*(MaxIterations+1)*sizeof(float));
	cudaMalloc((void**)&d_amps, MaxSpots*MaxIterations*sizeof(float));
	cudaMalloc((void**)&d_pSLM, memsize_SLM_f);
	cudaMalloc((void**)&d_pSLM_start, memsize_SLM_f);
	cudaMalloc((void**)&d_pSLM_uc, memsize_SLM_uc);
	cudaMalloc((void**)&d_FFTd, memsize_SLM_cc);	
	cudaMalloc((void**)&d_FFTo, memsize_SLM_cc);		
	cudaMalloc((void**)&d_SLM_cc, memsize_SLM_cc);
	
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
	}

	cudaMemcpy(d_pSLM_uc, h_pSLM, memsize_SLM_uc, cudaMemcpyHostToDevice);
	uc2f<<< n_blocks_Phi, block_size >>>(d_pSLM, d_pSLM_uc, N_pixels);
	cudaThreadSynchronize();
	
	cudaMemcpy(d_aLaserFFT, h_aLaserFFT, memsize_SLM_f, cudaMemcpyHostToDevice);
	cudaMemcpy(d_aLaserDFT, h_aLaserDFT, memsize_SLM_f, cudaMemcpyHostToDevice);
	cudaMemcpy(test, d_aLaserDFT, memsize_SLM_f, cudaMemcpyDeviceToHost);
	cudaMemcpy(d_weights, weights, N_spots_last*(N_iterations_last+1)*sizeof(float), cudaMemcpyHostToDevice);
	cudaMemcpy(d_LUT_coeff, LUT_coeff, N_LUT_coeff * sizeof(float), cudaMemcpyHostToDevice);
	
	CUFFT_SAFE_CALL(cufftPlan2d(&plan, data_w, data_w, CUFFT_C2C));
	
	//Open up communication to the PCIe hardware
	/*bEnableSLM = SLM_enabled; //SLMstuff
	if(bEnableSLM)
	{
		bool bRAMWriteEnable = false;
		InitalizePCIe(bRAMWriteEnable);
		SetPower(true);
	}	
	*/
	free(h_aLaserDFT);
	free(h_aLaserFFT);		
	return memsize_V_f;
}

extern "C" __declspec(dllexport) int stopCUDAandSLM()
{
	cudaFree(d_aLaserFFT);
	cudaFree(d_aLaserDFT);	
	cudaFree(d_x);
	cudaFree(d_y);
	cudaFree(d_z);
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
	cudaFree(d_LUT_coeff);
	
	cufftDestroy(plan);
	
	//close out communication with the PCIe hardware SLMstuff
	//if(bEnableSLM)
	//	ShutDownPCIe();
	return 100;
}


