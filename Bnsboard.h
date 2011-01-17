// BNSBoard.h   header file to declare CBNSFactory for generating various type of board objects
//				and the base class BNSBoard

#undef AFX_DATA
#define AFX_DATA AFX_EXT_DATA

#ifndef  BNSBOARD
#define BNSBOARD



// This class is exported from the BNSboard.dll
class AFX_EXT_CLASS CBNSBoard 
{
private:
	SBoard_Spec		m_BoardSpec;
	SRun_Status		m_RunStatus;

public:
	virtual SBoard_Spec		*BoardSpec();
public:
	CBNSBoard(void);
	virtual ~CBNSBoard(void);

	virtual int BoardReady();

	virtual int SetupDialog(int *LCType, int *TrueFrames);

	virtual int WriteFrameBuffer(unsigned short frameNum, unsigned char *buffer);

	virtual int SetRunParameters(unsigned short FrameRate, unsigned short LaserDuty, unsigned short TrueLaserGain, unsigned short InverseLaserGain);
	virtual int SelectImage(int FrameNum);

	virtual int SetRunMode(unsigned char runMode, int NumImages, unsigned short *FrameArray, bool Loop);
	virtual int GetRunStatus(SRun_Status *runStatus);

	virtual int SetDownloadMode(bool ContinuousDownload);

	virtual int SetTrueFrames(unsigned short TF);

	virtual int SetPower(bool powerOn);
	virtual int GetPower();

	virtual int GetTrueFrames();
	virtual int GetImageFrames();

};


class AFX_EXT_CLASS CBNSFactory
{
public:
	CString *TypeList;			// number of board type supported
	int		TypeCount;			// list of define constant board names

public:
	CBNSFactory(void);
	~CBNSFactory(void);

	CBNSBoard *BuildBoard(unsigned short LC_Type, unsigned short TrueFrames);
};

#endif



#undef AFX_DATA
#define AFX_DATA