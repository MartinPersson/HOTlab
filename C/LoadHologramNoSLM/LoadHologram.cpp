/*	
	Copyright 2009, 2010, 2011 Boulder Nonlinear Systems 
	ALinnenberger@bnonlinear.com

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
#include "stdafx.h"
#include "math.h"

#include <fstream>
#include <direct.h>


//local function
bool ReadLUTFile(unsigned char* LUT, CString LUTFileName);



////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS TO USE IF NO SLM IS INSTALLED
////////////////////////////////////////////////////////////////////////////////

extern "C" int InitalizeSLM(bool bRAMWriteEnable, char* LUTFile, unsigned char* LUT, unsigned short TrueFrames)
{
	char buffer[_MAX_PATH];

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

	return 1;	//tells the main function to apply the LUT in software
}

extern "C" void LoadImg(unsigned char* Img)
{
}

extern "C" void Wait(int Delay_ms)
{
}

extern "C" void SetPower(bool bPower)
{
}

extern "C" void ShutDownSLM()
{
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
