// RunDLL.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "C:\Users\Martin\Dropbox\GU\CUDA\GenerateHologramCUDA\C\source\GenerateHologramCUDA.h"

int _tmain(int argc, _TCHAR* argv[])
{
	//startCUDAandSLM(int EnableSLM, float *h_pSLMstart, char* LUTFile, unsigned short TrueFrames, int deviceId)
	while(true)
	{
		startCUDAandSLM(0, 0, 0, 0, 0);
		if('q'==getchar())
			break;
	}
	return 0;
}

