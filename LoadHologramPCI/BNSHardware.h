// BNSHardware.h    defeinitions that carry from application down to hardware

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