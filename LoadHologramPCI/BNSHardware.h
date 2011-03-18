/*	
	BNSHardware.h    defeinitions that carry from application down to hardware

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
#ifndef BNSHARDWARE
#define BNSHARDWARE

#define BASE_TIME 100e-9			// the basic time increment board periods are measured in
#define BOARD_NAME_SIZE		20

// add new board define in list
#define SLM256A			"256A_SLM"
#define SLM512A			"512A_SLM"
#define BOARD_UNDEFINED "Board_Undefined"

typedef struct {
	char 		    Name[BOARD_NAME_SIZE];	// should be a board name define constant
	unsigned short	FrameCount;		
	unsigned short	FrameWidth;
	unsigned short  FrameHeight;
	unsigned short	FrameDepth;		
	unsigned long	TimeIncrement;	// in 100ns
	unsigned long	FineTimeIncrement;
	unsigned int	Min_FrameRate;	// in time increments
	unsigned int	Max_FrameRate;	// in time increments
} SBoard_Spec;


// SIF mode codes
#define MEMORY_MODE 0x0000
#define SIF_RUN		0x0001		// hi sequences through SIF, lo 
#define SIF_BUSY	0x0008


typedef struct{
	unsigned short  Mode;
	unsigned short	SeqLen;
	unsigned short	SequenceNum;
} SRun_Status;


#endif  // BNSHARDWARE