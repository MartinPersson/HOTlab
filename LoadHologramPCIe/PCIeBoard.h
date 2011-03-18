/* PCIeBoard.h   --  header for board object
   
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

#ifndef		_PCIeBOARD
#define		_PCIeBOARD

//BNS PCIe Registers
#define BNSPCIE_REG_CONTROL		0x00
#define BNSPCIE_REG_STATUS		0x04	// Read Only
#define BNSPCIE_REG_IMAGENUM	0x08	// Image Number
#define BNSPCIE_REG_PERIODS		0x0c
#define BNSPCIE_REG_LASERA		0x10	// Inverse & True Frames
#define BNSPCIE_REG_LASERB		0x14
#define BNSPCIE_REG_TEMPERATURE 0x18	
#define BNSPCIE_REG_CLEARINTREQ 0x1c
#define BNSPCIE_REG_USER1		0x20
#define BNSPCIE_REG_USER2		0x24
#define BNSPCIE_REG_CLR_DNLD_COMP 0x28
#define BNSPCIE_CLR_IMG_FLP		0x2c
#define BNSPCIE_REG_FPGAID		0x3c	
#define BNSPCIE_REG_DMA0LSW		0x40	
#define BNSPCIE_REG_DMA0MSW		0x44	
#define BNSPCIE_REG_DMA0SIZE	0x48	
#define BNSPCIE_REG_DMA0LOCAL	0x4c	
#define BNSPCIE_REG_DMA0START	0x50	
#define BNSPCIE_REG_DMA0ABORT	0x54	
#define BNSPCIE_REG_DMA0STATUS  0x58	
#define BNSPCIE_REG_DMA1LSW		0x60	
#define BNSPCIE_REG_DMA1MSW		0x64	
#define BNSPCIE_REG_DMA1SIZE	0x68	
#define BNSPCIE_REG_DMA1LOCAL	0x6c	
#define BNSPCIE_REG_DMA1START	0x70	
#define BNSPCIE_REG_DMA1ABORT	0x74	
#define BNSPCIE_REG_DMA1STATUS  0x78

#define BNSPCIE_REG_LUT			0x0800

#define	BNSPCIe_CONTROL_INTEN		0x00000001	//	Interrupt Enable Bit
#define BNSPCIe_CONTROL_DETA		0x00000002	//	Detector Sync A Enable bit
#define BNSPCIe_CONTROL_DETB		0x00000004	//	Detector Sync B Enable bit
#define BNSPCIe_CONTROL_OPAMPPWR	0x00000008	//	Bit enables Power to the OpAmps
#define BNSPCIe_CONTROL_SLMPWR		0x00000010	//	Bit enables power to the SLM
#define BNSPCIe_CONTROL_NEMFLC		0x00000020	//  Enable TF field in the Periods Registers 
#define BNSPCIe_CONTROL_ADDRIMAGE	0x00000040	//	Use Image Number Register to address images
#define	BNSPCIe_CONTROL_IMAGESWAP	0x00000080	//	used to determine algoritm for A/B swap
#define	BNSPCIe_CONTROL_RSVRD1		0x00000100	//  reserved for future use
#define	BNSPCIe_CONTROL_RSVRD2		0x00000200	//  reserved for future use
#define	BNSPCIe_CONTROL_RSVRD3		0x00000400	//  reserved for future use
#define	BNSPCIe_CONTROL_RRDYEN		0x00001000	//	enable registers ready
#define BNSPCIe_CONTROL_RAM			0x40000000	//  write in RAM mode as opposed to FIFO
#define	BNSPCIe_CONTROL_TESTEN		0x80000000	//  enable test header signals

#define	BNSPCIe_STATUS_INTERRUPT_PENDING_BIT		0x00000001	//	Interrupt Enable Bit
#define	BNSPCIe_STATUS_SRAM_INIT					0x00000002
#define BNSPCIe_STATUS_DOWNLOAD_COMPLETE			0x00000004
#define BNSPCIe_STATUS_IMAGE_FLIPPED				0x00000008

//board spec so that later when we support more board types we can read from the GUI
//board specific information
typedef struct {
	char 		    Name[20];	// should be a board name define constant	
	unsigned short	FrameWidth;
	unsigned short  FrameHeight;
	unsigned short	FrameDepth;		
	unsigned long	TimeIncrement;	// in 100ns
	unsigned long	FineTimeIncrement;
} SBoard_Spec;

class AFX_EXT_CLASS CPCIeBoard 
{
private:
	SBoard_Spec		m_BoardSpec;
//	WDC_DEVICE_HANDLE hBNSPCIe;
//	WD_DMA *pDma;
	HANDLE hBNSPCIe;
	void *pDma;

public:
	unsigned int m_DeviceNum;
	unsigned int m_NumDevices;
	unsigned short m_Periods_TF;

public:
	CPCIeBoard::CPCIeBoard(char* VersionString, char* SlotString, bool Init, bool TestEnable, bool RAMWriteEnable);
	~CPCIeBoard();

	SBoard_Spec		*BoardSpec();

	bool WriteFrameBuffer(unsigned char *buffer);
	bool WriteTransient(unsigned char *buffPtr, unsigned char *Spike, int SpikeDuration);

	int SetTrueFrames(unsigned short TF);
	int GetTrueFrames();

	int GetRunStatus();

	int SetPower(bool powerOn);
	int GetPower();

    CString DriverVersion(void);

	bool DeviceFindAndOpen(char *VersionString, char* SlotString);
	void DeviceClose();

	void WriteLUT(unsigned char LUT[256]);
};

#endif

