#include "stdafx.h"
#include "math.h"
#include "BNSHardware.h"
#include "Bnsboard.h"

#include <fstream>
#include <direct.h>

//global variable
CBNSBoard* theBoard;
int Frame;

//local function
bool ReadLUTFile(unsigned char* LUT, CString LUTFileName);

typedef struct{
    float x, y;
} Complex;



////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS TO TALK TO THE PCI HARDWARE
////////////////////////////////////////////////////////////////////////////////

extern "C" int InitalizeSLM(bool bRAMWriteEnable, char* LUTFile, unsigned char* LUT, unsigned short TrueFrames)
{
	char buffer[_MAX_PATH];
	unsigned short LC_Type = 1; //1 = Nematic LC
	unsigned short FrameRate = 1000;
	unsigned short LaserDuty = 50;
	unsigned short TrueLaserGain = 255;
	unsigned short InverseLaserGain = 255;

	CBNSFactory boardFactory;
	theBoard = boardFactory.BuildBoard(1, TrueFrames);

	//We are doing continuous downloads, but I'm going to set this to false. You only need
	//this to be true if you can compute, load, and analyze in less than 3 ms. We can't, so we don't 
	//need to worry about this - it will just add an unnecessary delay.
	bool ContinuousDownload = false;
	theBoard->SetDownloadMode(ContinuousDownload);

	theBoard->SetRunParameters(FrameRate, LaserDuty, TrueLaserGain, InverseLaserGain);

	//read in the LUT
//	_getcwd(buffer, _MAX_PATH);
//	CString LUTPath = strcat((char *)buffer, "C:\\SLM.LUT");
//	CString LUTPath = "C:\\SLM.LUT";
//	CString tmp;
//	tmp.Format("LUT Path: %s", LUTPath);
//	MessageBox(NULL, tmp, "LUT", MB_OK);

	char* tokenPtr;
	tokenPtr = strtok(LUTFile, " \n");
	CString LUTPath = LPSTR(tokenPtr);
	ReadLUTFile(LUT, LUTPath);

	//we will have 2 frames of memory that we write images to. This is to avoid conflicts where the hardware
	//is reading from the same frame in memory that the user is writing to - this would be bad
	Frame = 0;
	return 1;	//tells the main function to apply the LUT in software
}

extern "C" void LoadImg(unsigned char* Img)
{
	//MARTIN - you should probably put the LUT in the GPU and process the data through the LUT there. Doing it this way
	//will work, but will be slow. (fixed 101008)
	//for(int pixel = 0; pixel < 512*512; pixel++)
	//	Img[pixel] = LUT[Img[pixel]];

	//load the image to a frame in memory
	theBoard->WriteFrameBuffer(Frame, Img);
	//send the data from that frame in memory out to the SLM
	theBoard->SelectImage(Frame); 

	//toggle the frame between 0 and 1 depending on the write
	Frame = (Frame+1)%2;
}

extern "C" void Wait(int Delay_ms)
{
	__int64 frequency = 0;
	QueryPerformanceFrequency((LARGE_INTEGER *)&frequency);
	__int64 startTime, stopTime;

	QueryPerformanceCounter((LARGE_INTEGER *)&startTime);
	QueryPerformanceCounter((LARGE_INTEGER *)&stopTime);

	while((((double)stopTime - startTime) / frequency) * 1000 < Delay_ms)
		QueryPerformanceCounter((LARGE_INTEGER *)&stopTime);
}

extern "C" void SetPower(bool bPower)
{
	theBoard->SetPower(bPower);
}

extern "C" void ShutDownSLM()
{
	//turn off the laser output if being used
	theBoard->SetRunParameters(1, 50, 0, 0);

	//turn off power to the SLM
	theBoard->SetPower(0);

	//call the deconstructor to shut down the hardware (release handles etc...)
	delete theBoard;

}


bool ReadLUTFile(unsigned char* LUT, CString LUTFileName)
{
	int i, seqnum, scanCount, tmpLUT;
	char inbuf[_MAX_PATH];
	bool errorFlag = false;

	std::ifstream LUTFile(LUTFileName);
	if (!LUTFile.is_open())
	{	
		AfxMessageBox("Could not open LUT file");
		return false;
	}

	//read in each line of the file
	i = 0;
	while (LUTFile.getline(inbuf, _MAX_PATH, '\n'))
	{
		// parse out the Image Entries
		scanCount=sscanf(inbuf, "%d %d", &seqnum, &tmpLUT);

		//if scanCount is 0, then no fields were assigned. This is an invalid row
		//Or if scanCount does not equal 15, then there were not 15 items in that
		//row. This would indicate an invalid row. In either case we "continue" to break
		//out of the while loop
		if ((scanCount != 2)||(seqnum != i)||(tmpLUT < 0) || (tmpLUT > 255))
		{
			errorFlag = true;		
			AfxMessageBox("Error Reading LUT File");
			continue;
		}

		LUT[seqnum] = (unsigned char) tmpLUT;
		i++;
	}
	LUTFile.close();

	if (errorFlag == true)                    
	{
		for (i=0; i<256; i++)
			LUT[i]=i;
		return false;
	}

	return TRUE;
}
