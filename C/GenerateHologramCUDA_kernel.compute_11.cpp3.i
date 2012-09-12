#line 1 "GenerateHologramCUDA_kernel.compute_11.cudafe2.gpu"
#line 1 "GenerateHologramCUDA_kernel.compute_11.cudafe1.gpu"
typedef char __nv_bool;
#line 478 "c:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
typedef unsigned size_t;
#line 1 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"





































#line 1 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"
























































        








   


#line 70 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"
        



































































#line 139 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"










#line 150 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"






#line 157 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"




#line 162 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"










#line 174 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"























#line 198 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"


#line 201 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\host_defines.h"
#line 39 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"







#line 47 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"
typedef  const void *__texture_type__;
typedef  const void *__surface_type__;
#line 50 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"








#line 59 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"




#line 64 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"









































































































































#line 202 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"

#line 1 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\builtin_types.h"























































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_types.h"




















































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"







































































































































































































#line 201 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"
#line 54 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_types.h"







enum  cudaRoundMode
{
    cudaRoundNearest,
    cudaRoundZero,
    cudaRoundPosInf,
    cudaRoundMinInf
};

#line 70 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_types.h"
#line 57 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"




















































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"







































































































































































































#line 201 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"
#line 54 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"




























































#line 115 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"










enum  cudaError
{
    




    cudaSuccess                           =      0,
  
    



    cudaErrorMissingConfiguration         =      1,
  
    



    cudaErrorMemoryAllocation             =      2,
  
    



    cudaErrorInitializationError          =      3,
  
    







    cudaErrorLaunchFailure                =      4,
  
    






    cudaErrorPriorLaunchFailure           =      5,
  
    







    cudaErrorLaunchTimeout                =      6,
  
    






    cudaErrorLaunchOutOfResources         =      7,
  
    



    cudaErrorInvalidDeviceFunction        =      8,
  
    






    cudaErrorInvalidConfiguration         =      9,
  
    



    cudaErrorInvalidDevice                =     10,
  
    



    cudaErrorInvalidValue                 =     11,
  
    



    cudaErrorInvalidPitchValue            =     12,
  
    



    cudaErrorInvalidSymbol                =     13,
  
    


    cudaErrorMapBufferObjectFailed        =     14,
  
    


    cudaErrorUnmapBufferObjectFailed      =     15,
  
    



    cudaErrorInvalidHostPointer           =     16,
  
    



    cudaErrorInvalidDevicePointer         =     17,
  
    



    cudaErrorInvalidTexture               =     18,
  
    



    cudaErrorInvalidTextureBinding        =     19,
  
    




    cudaErrorInvalidChannelDescriptor     =     20,
  
    



    cudaErrorInvalidMemcpyDirection       =     21,
  
    







    cudaErrorAddressOfConstant            =     22,
  
    






    cudaErrorTextureFetchFailed           =     23,
  
    






    cudaErrorTextureNotBound              =     24,
  
    






    cudaErrorSynchronizationError         =     25,
  
    



    cudaErrorInvalidFilterSetting         =     26,
  
    



    cudaErrorInvalidNormSetting           =     27,
  
    





    cudaErrorMixedDeviceExecution         =     28,
  
    




    cudaErrorCudartUnloading              =     29,
  
    


    cudaErrorUnknown                      =     30,

    





    cudaErrorNotYetImplemented            =     31,
  
    






    cudaErrorMemoryValueTooLarge          =     32,
  
    




    cudaErrorInvalidResourceHandle        =     33,
  
    





    cudaErrorNotReady                     =     34,
  
    




    cudaErrorInsufficientDriver           =     35,
  
    










    cudaErrorSetOnActiveProcess           =     36,
  
    



    cudaErrorInvalidSurface               =     37,
  
    



    cudaErrorNoDevice                     =     38,
  
    



    cudaErrorECCUncorrectable             =     39,
  
    


    cudaErrorSharedObjectSymbolNotFound   =     40,
  
    


    cudaErrorSharedObjectInitFailed       =     41,
  
    



    cudaErrorUnsupportedLimit             =     42,
  
    



    cudaErrorDuplicateVariableName        =     43,
  
    



    cudaErrorDuplicateTextureName         =     44,
  
    



    cudaErrorDuplicateSurfaceName         =     45,
  
    







    cudaErrorDevicesUnavailable           =     46,
  
    


    cudaErrorInvalidKernelImage           =     47,
  
    





    cudaErrorNoKernelImageForDevice       =     48,
  
    










    cudaErrorIncompatibleDriverContext    =     49,
      
    




    cudaErrorPeerAccessAlreadyEnabled     =     50,
    
    




    cudaErrorPeerAccessNotEnabled         =     51,
    
    



    cudaErrorDeviceAlreadyInUse           =     54,
  
    





    cudaErrorProfilerDisabled             =     55,

    




    cudaErrorProfilerNotInitialized       =     56,

    




    cudaErrorProfilerAlreadyStarted       =     57,
  
    



     cudaErrorProfilerAlreadyStopped       =    58,
  
    





    cudaErrorAssert                        =    59,
  
    




    cudaErrorTooManyPeers                 =     60,
  
    



    cudaErrorHostMemoryAlreadyRegistered  =     61,
        
    



    cudaErrorHostMemoryNotRegistered      =     62,

    


    cudaErrorOperatingSystem              =     63,
  
    


    cudaErrorStartupFailure               =   0x7f,

    





    cudaErrorApiFailureBase               =  10000
};




enum  cudaChannelFormatKind
{
    cudaChannelFormatKindSigned           =   0,      
    cudaChannelFormatKindUnsigned         =   1,      
    cudaChannelFormatKindFloat            =   2,      
    cudaChannelFormatKindNone             =   3       
};




struct  cudaChannelFormatDesc
{
    int                        x; 
    int                        y; 
    int                        z; 
    int                        w; 
    enum cudaChannelFormatKind f; 
};




typedef struct cudaArray *cudaArray_t;




typedef const struct cudaArray *cudaArray_const_t;

struct cudaArray;




typedef struct cudaMipmappedArray *cudaMipmappedArray_t;




typedef const struct cudaMipmappedArray *cudaMipmappedArray_const_t;

struct cudaMipmappedArray;




enum  cudaMemoryType
{
    cudaMemoryTypeHost   = 1, 
    cudaMemoryTypeDevice = 2  
};




enum  cudaMemcpyKind
{
    cudaMemcpyHostToHost          =   0,      
    cudaMemcpyHostToDevice        =   1,      
    cudaMemcpyDeviceToHost        =   2,      
    cudaMemcpyDeviceToDevice      =   3,      
    cudaMemcpyDefault             =   4       
};





struct  cudaPitchedPtr
{
    void   *ptr;      
    size_t  pitch;    
    size_t  xsize;    
    size_t  ysize;    
};





struct  cudaExtent
{
    size_t width;     
    size_t height;    
    size_t depth;     
};





struct  cudaPos
{
    size_t x;     
    size_t y;     
    size_t z;     
};




struct  cudaMemcpy3DParms
{
    cudaArray_t            srcArray;  
    struct cudaPos         srcPos;    
    struct cudaPitchedPtr  srcPtr;    
  
    cudaArray_t            dstArray;  
    struct cudaPos         dstPos;    
    struct cudaPitchedPtr  dstPtr;    
  
    struct cudaExtent      extent;    
    enum cudaMemcpyKind    kind;      
};




struct  cudaMemcpy3DPeerParms
{
    cudaArray_t            srcArray;  
    struct cudaPos         srcPos;    
    struct cudaPitchedPtr  srcPtr;    
    int                    srcDevice; 
  
    cudaArray_t            dstArray;  
    struct cudaPos         dstPos;    
    struct cudaPitchedPtr  dstPtr;    
    int                    dstDevice; 
  
    struct cudaExtent      extent;    
};




struct cudaGraphicsResource;




enum  cudaGraphicsRegisterFlags
{
    cudaGraphicsRegisterFlagsNone             = 0,  
    cudaGraphicsRegisterFlagsReadOnly         = 1,   
    cudaGraphicsRegisterFlagsWriteDiscard     = 2,  
    cudaGraphicsRegisterFlagsSurfaceLoadStore = 4,  
    cudaGraphicsRegisterFlagsTextureGather    = 8   
};




enum  cudaGraphicsMapFlags
{
    cudaGraphicsMapFlagsNone         = 0,  
    cudaGraphicsMapFlagsReadOnly     = 1,  
    cudaGraphicsMapFlagsWriteDiscard = 2   
};




enum  cudaGraphicsCubeFace 
{
    cudaGraphicsCubeFacePositiveX = 0x00, 
    cudaGraphicsCubeFaceNegativeX = 0x01, 
    cudaGraphicsCubeFacePositiveY = 0x02, 
    cudaGraphicsCubeFaceNegativeY = 0x03, 
    cudaGraphicsCubeFacePositiveZ = 0x04, 
    cudaGraphicsCubeFaceNegativeZ = 0x05  
};




enum  cudaResourceType
{
    cudaResourceTypeArray          = 0x00, 
    cudaResourceTypeMipmappedArray = 0x01, 
    cudaResourceTypeLinear         = 0x02, 
    cudaResourceTypePitch2D        = 0x03  
};




enum  cudaResourceViewFormat
{
    cudaResViewFormatNone                      = 0x00, 
    cudaResViewFormatUnsignedChar1             = 0x01, 
    cudaResViewFormatUnsignedChar2             = 0x02, 
    cudaResViewFormatUnsignedChar4             = 0x03, 
    cudaResViewFormatSignedChar1               = 0x04, 
    cudaResViewFormatSignedChar2               = 0x05, 
    cudaResViewFormatSignedChar4               = 0x06, 
    cudaResViewFormatUnsignedShort1            = 0x07, 
    cudaResViewFormatUnsignedShort2            = 0x08, 
    cudaResViewFormatUnsignedShort4            = 0x09, 
    cudaResViewFormatSignedShort1              = 0x0a, 
    cudaResViewFormatSignedShort2              = 0x0b, 
    cudaResViewFormatSignedShort4              = 0x0c, 
    cudaResViewFormatUnsignedInt1              = 0x0d, 
    cudaResViewFormatUnsignedInt2              = 0x0e, 
    cudaResViewFormatUnsignedInt4              = 0x0f, 
    cudaResViewFormatSignedInt1                = 0x10, 
    cudaResViewFormatSignedInt2                = 0x11, 
    cudaResViewFormatSignedInt4                = 0x12, 
    cudaResViewFormatHalf1                     = 0x13, 
    cudaResViewFormatHalf2                     = 0x14, 
    cudaResViewFormatHalf4                     = 0x15, 
    cudaResViewFormatFloat1                    = 0x16, 
    cudaResViewFormatFloat2                    = 0x17, 
    cudaResViewFormatFloat4                    = 0x18, 
    cudaResViewFormatUnsignedBlockCompressed1  = 0x19, 
    cudaResViewFormatUnsignedBlockCompressed2  = 0x1a, 
    cudaResViewFormatUnsignedBlockCompressed3  = 0x1b, 
    cudaResViewFormatUnsignedBlockCompressed4  = 0x1c, 
    cudaResViewFormatSignedBlockCompressed4    = 0x1d, 
    cudaResViewFormatUnsignedBlockCompressed5  = 0x1e, 
    cudaResViewFormatSignedBlockCompressed5    = 0x1f, 
    cudaResViewFormatUnsignedBlockCompressed6H = 0x20, 
    cudaResViewFormatSignedBlockCompressed6H   = 0x21, 
    cudaResViewFormatUnsignedBlockCompressed7  = 0x22  
};




struct  cudaResourceDesc {
	enum cudaResourceType resType;             
	
	union {
		struct {
			cudaArray_t array;                 
		} array;
        struct {
            cudaMipmappedArray_t mipmap;       
        } mipmap;
		struct {
			void *devPtr;                      
			struct cudaChannelFormatDesc desc; 
			size_t sizeInBytes;                
		} linear;
		struct {
			void *devPtr;                      
			struct cudaChannelFormatDesc desc; 
			size_t width;                      
			size_t height;                     
			size_t pitchInBytes;               
		} pitch2D;
	} res;
};




struct  cudaResourceViewDesc
{
    enum cudaResourceViewFormat format;           
    size_t                      width;            
    size_t                      height;           
    size_t                      depth;            
    unsigned int                firstMipmapLevel; 
    unsigned int                lastMipmapLevel;  
    unsigned int                firstLayer;       
    unsigned int                lastLayer;        
};




struct  cudaPointerAttributes
{
    



    enum cudaMemoryType memoryType;

    








    int device;

    



    void *devicePointer;

    



    void *hostPointer;
};




struct  cudaFuncAttributes
{
   




   size_t sharedSizeBytes;

   



   size_t constSizeBytes;

   


   size_t localSizeBytes;

   




   int maxThreadsPerBlock;

   


   int numRegs;

   




   int ptxVersion;

   




   int binaryVersion;
};




enum  cudaFuncCache
{
    cudaFuncCachePreferNone   = 0,    
    cudaFuncCachePreferShared = 1,    
    cudaFuncCachePreferL1     = 2,    
    cudaFuncCachePreferEqual  = 3     
};





enum  cudaSharedMemConfig
{
    cudaSharedMemBankSizeDefault   = 0,
    cudaSharedMemBankSizeFourByte  = 1,
    cudaSharedMemBankSizeEightByte = 2
};




enum  cudaComputeMode
{
    cudaComputeModeDefault          = 0,  
    cudaComputeModeExclusive        = 1,  
    cudaComputeModeProhibited       = 2,  
    cudaComputeModeExclusiveProcess = 3   
};




enum  cudaLimit
{
    cudaLimitStackSize      = 0x00, 
    cudaLimitPrintfFifoSize = 0x01, 
    cudaLimitMallocHeapSize = 0x02  
};




enum  cudaOutputMode
{
    cudaKeyValuePair    = 0x00, 
    cudaCSV             = 0x01  
};




struct  cudaDeviceProp
{
    char   name[256];                  
    size_t totalGlobalMem;             
    size_t sharedMemPerBlock;          
    int    regsPerBlock;               
    int    warpSize;                   
    size_t memPitch;                   
    int    maxThreadsPerBlock;         
    int    maxThreadsDim[3];           
    int    maxGridSize[3];             
    int    clockRate;                  
    size_t totalConstMem;              
    int    major;                      
    int    minor;                      
    size_t textureAlignment;           
    size_t texturePitchAlignment;      
    int    deviceOverlap;              
    int    multiProcessorCount;        
    int    kernelExecTimeoutEnabled;   
    int    integrated;                 
    int    canMapHostMemory;           
    int    computeMode;                
    int    maxTexture1D;               
    int    maxTexture1DMipmap;         
    int    maxTexture1DLinear;         
    int    maxTexture2D[2];            
    int    maxTexture2DMipmap[2];      
    int    maxTexture2DLinear[3];      
    int    maxTexture2DGather[2];      
    int    maxTexture3D[3];            
    int    maxTextureCubemap;          
    int    maxTexture1DLayered[2];     
    int    maxTexture2DLayered[3];     
    int    maxTextureCubemapLayered[2];
    int    maxSurface1D;               
    int    maxSurface2D[2];            
    int    maxSurface3D[3];            
    int    maxSurface1DLayered[2];     
    int    maxSurface2DLayered[3];     
    int    maxSurfaceCubemap;          
    int    maxSurfaceCubemapLayered[2];
    size_t surfaceAlignment;           
    int    concurrentKernels;          
    int    ECCEnabled;                 
    int    pciBusID;                   
    int    pciDeviceID;                
    int    pciDomainID;                
    int    tccDriver;                  
    int    asyncEngineCount;           
    int    unifiedAddressing;          
    int    memoryClockRate;            
    int    memoryBusWidth;             
    int    l2CacheSize;                
    int    maxThreadsPerMultiProcessor;
};































































struct  cudaIpcEventHandle_st
{
    char reserved[64];
};

struct  cudaIpcMemHandle_st 
{
    char reserved[64];
};










typedef  enum cudaError cudaError_t;




typedef  struct CUstream_st *cudaStream_t;




typedef  struct CUevent_st *cudaEvent_t;




typedef  struct cudaGraphicsResource *cudaGraphicsResource_t;




typedef  struct CUuuid_st cudaUUID_t;




typedef  struct cudaIpcEventHandle_st cudaIpcEventHandle_t;
typedef  struct cudaIpcMemHandle_st cudaIpcMemHandle_t;
 



typedef  enum cudaOutputMode cudaOutputMode_t;


 

#line 1167 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"

#line 58 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_types.h"


























































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1167 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"

#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_types.h"
























enum  cudaSurfaceBoundaryMode
{
    cudaBoundaryModeZero  = 0,    
    cudaBoundaryModeClamp = 1,    
    cudaBoundaryModeTrap  = 2     
};




enum   cudaSurfaceFormatMode
{
    cudaFormatModeForced = 0,     
    cudaFormatModeAuto = 1        
};




struct  surfaceReference
{
    


    struct cudaChannelFormatDesc channelDesc;
};




typedef  unsigned long long cudaSurfaceObject_t;


 

#line 120 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_types.h"
#line 59 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_types.h"


























































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1167 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"

#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_types.h"
























enum  cudaTextureAddressMode
{
    cudaAddressModeWrap   = 0,    
    cudaAddressModeClamp  = 1,    
    cudaAddressModeMirror = 2,    
    cudaAddressModeBorder = 3     
};




enum  cudaTextureFilterMode
{
    cudaFilterModePoint  = 0,     
    cudaFilterModeLinear = 1      
};




enum  cudaTextureReadMode
{
    cudaReadModeElementType     = 0,  
    cudaReadModeNormalizedFloat = 1   
};




struct  textureReference
{
    


    int                          normalized;
    


    enum cudaTextureFilterMode   filterMode;
    


    enum cudaTextureAddressMode  addressMode[3];
    


    struct cudaChannelFormatDesc channelDesc;
    


    int                          sRGB;
    


    unsigned int                 maxAnisotropy;
    


    enum cudaTextureFilterMode   mipmapFilterMode;
    


    float                        mipmapLevelBias;
    


    float                        minMipmapLevelClamp;
    


    float                        maxMipmapLevelClamp;
    int                          __cudaReserved[15];
};




struct  cudaTextureDesc
{
    


    enum cudaTextureAddressMode addressMode[3];
    


    enum cudaTextureFilterMode  filterMode;
    


    enum cudaTextureReadMode    readMode;
    


    int                         sRGB;
    


    int                         normalizedCoords;
    


    unsigned int                maxAnisotropy;
    


    enum cudaTextureFilterMode  mipmapFilterMode;
    


    float                       mipmapLevelBias;
    


    float                       minMipmapLevelClamp;
    


    float                       maxMipmapLevelClamp;
};




typedef  unsigned long long cudaTextureObject_t;


 

#line 214 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_types.h"
#line 60 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"


























































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"























































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_types.h"




































































#line 70 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_types.h"
#line 57 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1167 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"

#line 58 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_types.h"






















































































































#line 120 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_types.h"
#line 59 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_types.h"




















































































































































































































#line 214 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_types.h"
#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"






















































































































































































































































































































































































































#line 408 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"
#line 61 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"







































































































































































































#line 201 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"
#line 61 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"






















#line 85 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"







#line 93 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"

struct  char1
{
    signed char x;
};

struct  uchar1
{
    unsigned char x;
};


struct  __attribute__((aligned(2))) char2
{
    signed char x, y;
};

struct  __attribute__((aligned(2))) uchar2
{
    unsigned char x, y;
};

struct  char3
{
    signed char x, y, z;
};

struct  uchar3
{
    unsigned char x, y, z;
};

struct  __attribute__((aligned(4))) char4
{
    signed char x, y, z, w;
};

struct  __attribute__((aligned(4))) uchar4
{
    unsigned char x, y, z, w;
};

struct  short1
{
    short x;
};

struct  ushort1
{
    unsigned short x;
};

struct  __attribute__((aligned(4))) short2
{
    short x, y;
};

struct  __attribute__((aligned(4))) ushort2
{
    unsigned short x, y;
};

struct  short3
{
    short x, y, z;
};

struct  ushort3
{
    unsigned short x, y, z;
};

struct  __attribute__((aligned(8))) short4 { short x; short y; short z; short w; };
struct  __attribute__((aligned(8))) ushort4 { unsigned short x; unsigned short y; unsigned short z; unsigned short w; };

struct  int1
{
    int x;
};

struct  uint1
{
    unsigned int x;
};

struct  __attribute__((aligned(8))) int2 { int x; int y; };
struct  __attribute__((aligned(8))) uint2 { unsigned int x; unsigned int y; };

struct  int3
{
    int x, y, z;
};

struct  uint3
{
    unsigned int x, y, z;
};

struct  __attribute__((aligned(16))) int4
{
    int x, y, z, w;
};

struct  __attribute__((aligned(16))) uint4
{
    unsigned int x, y, z, w;
};

struct  long1
{
    long int x;
};

struct  ulong1
{
    unsigned long x;
};


struct  __attribute__((aligned(8))) long2 { long int x; long int y; };
struct  __attribute__((aligned(8))) ulong2 { unsigned long int x; unsigned long int y; };












#line 227 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"

struct  long3
{
    long int x, y, z;
};

struct  ulong3
{
    unsigned long int x, y, z;
};

struct  __attribute__((aligned(16))) long4
{
    long int x, y, z, w;
};

struct  __attribute__((aligned(16))) ulong4
{
    unsigned long int x, y, z, w;
};

struct  float1
{
    float x;
};

struct  __attribute__((aligned(8))) float2 { float x; float y; };

struct  float3
{
    float x, y, z;
};

struct  __attribute__((aligned(16))) float4
{
    float x, y, z, w;
};

struct  longlong1
{
    long long int x;
};

struct  ulonglong1
{
    unsigned long long int x;
};

struct  __attribute__((aligned(16))) longlong2
{
    long long int x, y;
};

struct  __attribute__((aligned(16))) ulonglong2
{
    unsigned long long int x, y;
};

struct  longlong3
{
    long long int x, y, z;
};

struct  ulonglong3
{
    unsigned long long int x, y, z;
};

struct  __attribute__((aligned(16))) longlong4
{
    long long int x, y, z ,w;
};

struct  __attribute__((aligned(16))) ulonglong4
{
    unsigned long long int x, y, z, w;
};

struct  double1
{
    double x;
};

struct  __attribute__((aligned(16))) double2
{
    double x, y;
};

struct  double3
{
    double x, y, z;
};

struct  __attribute__((aligned(16))) double4
{
    double x, y, z, w;
};





#line 331 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"







typedef  struct char1 char1;
typedef  struct uchar1 uchar1;
typedef  struct char2 char2;
typedef  struct uchar2 uchar2;
typedef  struct char3 char3;
typedef  struct uchar3 uchar3;
typedef  struct char4 char4;
typedef  struct uchar4 uchar4;
typedef  struct short1 short1;
typedef  struct ushort1 ushort1;
typedef  struct short2 short2;
typedef  struct ushort2 ushort2;
typedef  struct short3 short3;
typedef  struct ushort3 ushort3;
typedef  struct short4 short4;
typedef  struct ushort4 ushort4;
typedef  struct int1 int1;
typedef  struct uint1 uint1;
typedef  struct int2 int2;
typedef  struct uint2 uint2;
typedef  struct int3 int3;
typedef  struct uint3 uint3;
typedef  struct int4 int4;
typedef  struct uint4 uint4;
typedef  struct long1 long1;
typedef  struct ulong1 ulong1;
typedef  struct long2 long2;
typedef  struct ulong2 ulong2;
typedef  struct long3 long3;
typedef  struct ulong3 ulong3;
typedef  struct long4 long4;
typedef  struct ulong4 ulong4;
typedef  struct float1 float1;
typedef  struct float2 float2;
typedef  struct float3 float3;
typedef  struct float4 float4;
typedef  struct longlong1 longlong1;
typedef  struct ulonglong1 ulonglong1;
typedef  struct longlong2 longlong2;
typedef  struct ulonglong2 ulonglong2;
typedef  struct longlong3 longlong3;
typedef  struct ulonglong3 ulonglong3;
typedef  struct longlong4 longlong4;
typedef  struct ulonglong4 ulonglong4;
typedef  struct double1 double1;
typedef  struct double2 double2;
typedef  struct double3 double3;
typedef  struct double4 double4;







struct  dim3
{
    unsigned int x, y, z;




#line 401 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"
};

typedef  struct dim3 dim3;



#line 408 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"
#line 61 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\builtin_types.h"
#line 204 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"
#line 1 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"




















































#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"






















































































































































































































































































































































































































#line 408 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\vector_types.h"
#line 54 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 61 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"



#line 65 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"

uint3  extern const threadIdx;
uint3  extern const blockIdx;
dim3  extern const blockDim;
dim3  extern const gridDim;
int  extern const warpSize;





#line 77 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 84 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 91 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 98 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 105 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"






#line 112 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"

#line 114 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\device_launch_parameters.h"
#line 205 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"










































#line 44 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"






#line 51 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 55 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 59 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 63 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 67 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 71 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 75 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 79 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 83 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 87 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 91 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 95 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 99 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 103 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 107 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 111 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 115 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 119 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 123 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 127 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 131 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 135 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 139 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 143 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"



#line 147 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"

#line 149 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\crt\\storage_class.h"
#line 206 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"
#line 480 "c:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef struct float2 cuFloatComplex;
#line 282 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef cuFloatComplex cuComplex;
#line 100 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef cuComplex cufftComplex;



#line 105 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 109 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 113 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 117 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 121 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 125 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 129 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 133 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"



#line 137 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
#line 26 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static unsigned char _Z8phase2ucf(float);
#line 30 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static int _Z11phase2int32f(float);
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static float _Z25ApplyAberrationCorrectionff(float, float);
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static int _Z8fftshiftii(int, int);
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static unsigned char _Z11applyPolLUTfffPfi(float, float, float, float *, int);
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static void _Z11warpReduceCPVfS0_i(volatile float *, volatile float *, int);
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i(float *, float *, float *, float *, unsigned char *, int, unsigned char *, __nv_bool, int, __nv_bool, float *, __nv_bool, float *, int);
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z15checkAmplitudesPfS_S_PhS_iii(float *, float *, float *, unsigned char *, float *, int, int, int);
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii(float *, float *, float *, float *, float *, float *, int, int, int);
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int, int, int);
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib(float *, float *, float *, float *, float *, float *, float *, int, int, float *, int, float *, float, float *, __nv_bool, unsigned char *, unsigned char *, __nv_bool, __nv_bool, float *, __nv_bool, float *, int, __nv_bool);
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib(float *, float *, float *, float *, float *, cufftComplex *, int, int, int, float *, float, __nv_bool, unsigned char *, unsigned char *, __nv_bool, __nv_bool, float *, __nv_bool, float *, int, __nv_bool);
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z21setActiveRegionToZeroP6float2i(cufftComplex *, int);
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z4uc2fPfPhi(float *, unsigned char *, int);
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z3p2cP6float2Pfi(cufftComplex *, float *, int);
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z8c_cc2a_fPfP6float2i(float *, cufftComplex *, int);
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z9c_cc2p_ccP6float2S0_i(cufftComplex *, cufftComplex *, int);
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z8c_cc2p_fPfP6float2i(float *, cufftComplex *, int);
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z9c_cc2re_fPfP6float2i(float *, cufftComplex *, int);
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z9c_cc2im_fPfP6float2i(float *, cufftComplex *, int);
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i(float *, cufftComplex *, float *, int, float, __nv_bool, unsigned char *, unsigned char *, __nv_bool, __nv_bool, float *, __nv_bool, float *, int);
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, __nv_bool, __nv_bool);
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z9XYtoIndexPfS_Piii(float *, float *, int *, int, int);
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, __nv_bool, __nv_bool, int);
#line 56 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"
static  __attribute__((constant))  __attribute__((__used__)) float constData[1];
#line 1 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\common_functions.h"






















































































































































#line 152 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\common_functions.h"







#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 3012 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"







































































































































































































#line 201 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\host_defines.h"
#line 3014 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"

























































































#line 91 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"

#line 93 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"









#line 103 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"






#line 110 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"

























































#line 168 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"
#line 3015 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"






#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1253 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"







static __inline__ __attribute__((always_inline)) float __sinf(float a)
{
  return __builtin_sinf(a);
}

static __inline__ __attribute__((always_inline)) float __cosf(float a)
{
  return __builtin_cosf(a);
}

static __inline__ __attribute__((always_inline)) float __log2f(float a)
{
  return __builtin_log2f(a);
}







static __inline__ __attribute__((always_inline)) float __tanf(float a)
{
  return __fdividef (__sinf(a), __cosf(a));
}

static __inline__ __attribute__((always_inline)) void __sincosf(float a, float *sptr, float *cptr)
{
  *sptr = __sinf(a);
  *cptr = __cosf(a);
}

static __inline__ __attribute__((always_inline)) float __expf(float a)
{
  return exp2f(a * 1.442695041f);
}

static __inline__ __attribute__((always_inline)) float __exp10f(float a)
{
  return exp2f(a * 3.321928094f);
}

static __inline__ __attribute__((always_inline)) float __log10f(float a)
{
  return 0.301029996f * __log2f(a);
}

static __inline__ __attribute__((always_inline)) float __logf(float a)
{
  return 0.693147181f * __log2f(a);
}

static __inline__ __attribute__((always_inline)) float __powf(float a, float b)
{
  return exp2f(b * __log2f(a));
}

static __inline__ __attribute__((always_inline)) float fdividef(float a, float b)
{

  return __fdividef(a, b);


#line 1324 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
}



static __inline__ __attribute__((always_inline)) double fdivide(double a, double b)
{
  return (double)fdividef((float)a, (float)b);
}

#line 1334 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"








#line 1343 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"




























static __inline__ __attribute__((always_inline)) int __hadd(int a, int b)
{
  return (a & b) + ((a ^ b) >> 1);
}

static __inline__ __attribute__((always_inline)) int __rhadd(int a, int b)
{
  return (a | b) - ((a ^ b) >> 1);
}

static __inline__ __attribute__((always_inline)) unsigned int __uhadd(unsigned int a, unsigned int b)
{
  return (a & b) + ((a ^ b) >> 1);
}

static __inline__ __attribute__((always_inline)) unsigned int __urhadd(unsigned int a, unsigned int b)
{
  return (a | b) - ((a ^ b) >> 1);
}

static __inline__ __attribute__((always_inline)) float __frsqrt_rn (float a)
{






























#line 1424 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
  unsigned int expo, ia;
  unsigned int s, f, x;
  unsigned long long prod1, prod2;
  float res;

  ia = __float_as_int (a);
  expo = (ia >> 23) & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    x = (ia << 8) | 0x80000000;
    x = x >> (expo & 1);
    ia = ((__float_as_int (rsqrtf (__int_as_float (__float_as_int(a) | 1)))
           & 0x00ffffff) | 0x00800000) << 6;
    s = __umulhi (ia, ia);
    f = 0x0c000000 - __umulhi (x, s);
    ia = __umulhi (f, ia);
    ia = ia >> 1;
    s = 2 * ia + 1;
    prod1 = ((unsigned long long int)ia) * ia; 
    prod1 = prod1 * x;
    prod2 = ((unsigned long long int)s) * x;
    prod2 = prod2 + prod1;
    if ((long long int)prod1 < 0LL) {
      prod1 = (unsigned long long int)-(long long int)prod1;
    }
    if (prod1 > prod2) {
      ia++;
    }
    ia = ia + (((378 - expo) & ~1) << 22);
    res = __int_as_float (ia);
  } else {
    res = rsqrtf (a);
  }
  return res;
#line 1460 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
}



static __inline__ __attribute__((always_inline)) float __frcp_rn (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      
      f = __umul24(y, argi);
      
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
        f -= y; 
      }
      
      expo = f + y;
      
      f = (unsigned)(-(int)f);
      if (expo < f) {
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}
 
static __inline__ __attribute__((always_inline)) float __frcp_rz (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static __inline__ __attribute__((always_inline)) float __frcp_rd (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static __inline__ __attribute__((always_inline)) float __frcp_ru (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static __inline__ __attribute__((always_inline)) float __fsqrt_rn (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = argi >> 3;
    x = (x << 16) - (argi * argi);
    
    f = x - (2 * argi + 1);
    if ((int)f < 0) f = (unsigned)(-(int)f);
    if ((int)x < 0) x = (unsigned)(-(int)x);
    if (f < x) argi ++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static __inline__ __attribute__((always_inline)) float __fsqrt_rz (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static __inline__ __attribute__((always_inline)) float __fsqrt_ru (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x > 0) argi++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static __inline__ __attribute__((always_inline)) float __fsqrt_rd (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static __inline__ __attribute__((always_inline)) float __fdiv_rn (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    
    if (expo_res <= 0xFD) {
      int rem0, rem1, inc;
      
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      
      resi = sign | ((expo_res << 23) + r + inc);
      return __int_as_float(resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign | 0x7f800000;
      return __int_as_float(resi);
    } else {
      
      int rem0, rem1, inc;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      resi = ((expo_res << 23) + r + inc);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static __inline__ __attribute__((always_inline)) float __fdiv_rz (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = (expo_res << 23) + r;
      if (resi == 0x7f800000) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static __inline__ __attribute__((always_inline)) float __fdiv_ru (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f7fffff : 0x7f800000;
      return __int_as_float(sign | resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static __inline__ __attribute__((always_inline)) float __fdiv_rd (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (!sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f800000 : 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static __inline__ __attribute__((always_inline)) float __fadd_ru (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = (xxi + (expo_x << 23));
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          xxi = xxi + (expo_x << 23);
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && !(xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    return a + b;
  }
}

static __inline__ __attribute__((always_inline)) float __fadd_rd (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = xxi & ~0x00800000; 
          xxi = (xxi + (expo_x << 23)) + 0x00800000;
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0x80000000;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          expo_y = xxi & 1;
          xxi = xxi + (expo_x << 23);
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && (xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xFF800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    a = a + b;
    xxi = xxi ^ yyi;
    if ((a == 0.0f) && ((int)xxi < 0)) a = __int_as_float(0x80000000);
    return a;
  }
}

static __inline__ __attribute__((always_inline)) float __fmul_ru (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && !expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = (expo_y ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && !expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static __inline__ __attribute__((always_inline)) float __fmul_rd (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = expo_y | (expo_y ?0x7F800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static __inline__ __attribute__((always_inline)) float __fmaf_rn (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    s = xx & 1; 
    xx += (temp == 0x80000000) ? s : (temp >> 31);
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f800000;
    return __int_as_float(xx);
  }
  
  expo_x = (unsigned int)(-(int)expo_x);
  
  xx += (temp >= 0x80000000);
  if (xx >= 0x01000000) {
    xx = xx >> 1;
    expo_x--;
  }
  if (expo_x > 0) xx = 0;
  xx = expo_y | xx;
  return __int_as_float(xx);
}

static __inline__ __attribute__((always_inline)) float __fmaf_rz (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f7fffff;
    return __int_as_float(xx);
  }
  
  return __int_as_float(expo_y);
}

static __inline__ __attribute__((always_inline)) float __fmaf_ru (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && !expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f7fffff : 0x7F800000);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && !expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}

static __inline__ __attribute__((always_inline)) float __fmaf_rd (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz = (xx ^ yy ^ zz) & 0x80000000;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(0x80000000);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f800000 : 0x7F7FFFFF);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}

static __inline__ __attribute__((always_inline)) int __clz(int a)
{
  return (a)?(158-(__float_as_int(__uint2float_rz((unsigned int)a))>>23)):32;
}

static __inline__ __attribute__((always_inline)) int __clzll(long long int a)
{
  int ahi = ((int)((unsigned long long)a >> 32));
  int alo = ((int)((unsigned long long)a & 0xffffffffULL));
  int res;
  if (ahi) {
    res = 0;
  } else {
    res = 32;
    ahi = alo;
  }
  res = res + __clz(ahi);
  return res;
}

static __inline__ __attribute__((always_inline)) int __popc(unsigned int a)
{
  a = a - ((a >> 1) & 0x55555555);
  a = (a & 0x33333333) + ((a >> 2) & 0x33333333);
  a = (a + (a >> 4)) & 0x0f0f0f0f;
  a = ((__umul24(a, 0x808080) << 1) + a) >> 24;
  return a;
}

static __inline__ __attribute__((always_inline)) int __popcll(unsigned long long int a)
{
  unsigned int ahi = ((unsigned int)(a >> 32));
  unsigned int alo = ((unsigned int)(a & 0xffffffffULL));
  alo = alo - ((alo >> 1) & 0x55555555);
  alo = (alo & 0x33333333) + ((alo >> 2) & 0x33333333);
  ahi = ahi - ((ahi >> 1) & 0x55555555);
  ahi = (ahi & 0x33333333) + ((ahi >> 2) & 0x33333333);
  alo = alo + ahi;
  alo = (alo & 0x0f0f0f0f) + ((alo >> 4) & 0x0f0f0f0f);
  alo = ((__umul24(alo, 0x808080) << 1) + alo) >> 24;
  return alo;
}

static __inline__ __attribute__((always_inline)) unsigned int __brev(unsigned int a)
{
  
  unsigned int t;
  a = (a << 15) | (a >> 17);
  t = (a ^ (a >> 10)) & 0x003f801f; 
  a = (t + (t << 10)) ^ a;
  t = (a ^ (a >>  4)) & 0x0e038421; 
  a = (t + (t <<  4)) ^ a;
  t = (a ^ (a >>  2)) & 0x22488842; 
  a = (t + (t <<  2)) ^ a;
  return a;
}

static __inline__ __attribute__((always_inline)) unsigned long long int __brevll(unsigned long long int a)
{
  unsigned int hi = (unsigned int)(a >> 32);
  unsigned int lo = (unsigned int)(a & 0xffffffffULL);
  unsigned int t;
  t  = __brev(lo);
  lo = __brev(hi);
  return ((unsigned long long int)t << 32) + (unsigned long long int)lo;
}

static __inline__ __attribute__((always_inline)) unsigned int __byte_perm(unsigned int a, unsigned int b, unsigned int slct)
{
  unsigned int i0 = (slct >>  0) & 0x7;
  unsigned int i1 = (slct >>  4) & 0x7;
  unsigned int i2 = (slct >>  8) & 0x7;
  unsigned int i3 = (slct >> 12) & 0x7;

  return (((((i0 < 4) ? (a >> (i0*8)) : (b >> ((i0-4)*8))) & 0xff) <<  0) +
          ((((i1 < 4) ? (a >> (i1*8)) : (b >> ((i1-4)*8))) & 0xff) <<  8) +
          ((((i2 < 4) ? (a >> (i2*8)) : (b >> ((i2-4)*8))) & 0xff) << 16) +
          ((((i3 < 4) ? (a >> (i3*8)) : (b >> ((i3-4)*8))) & 0xff) << 24));
}

#line 3481 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"

static __inline__ __attribute__((always_inline)) int __ffs(int a)
{
  return 32 - __clz(a & -a);
}

static __inline__ __attribute__((always_inline)) int __ffsll(long long int a)
{
  return 64 - __clzll(a & -a);
}

#line 3493 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"







#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_11_atomic_functions.h"










































































































































































































#line 204 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_11_atomic_functions.h"

#line 206 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_11_atomic_functions.h"
#line 3501 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_12_atomic_functions.h"











































































































#line 109 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_12_atomic_functions.h"

#line 111 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_12_atomic_functions.h"
#line 3502 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_13_double_functions.h"

































































































































































































































































































































































































































































































































































































































#line 611 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_13_double_functions.h"



static __inline__ __attribute__((always_inline)) double __internal_fma_kernel(double x, double y, double z, enum cudaRoundMode rndMode)
{
  struct __cudart_UintUint {
    unsigned int lo;
    unsigned int hi;
  } xx, yy, zz, ww;
  unsigned int s, t, u, prod0, prod1, prod2, prod3, expo_x, expo_y, expo_z;
  
  xx.hi = __double2hiint(x);
  xx.lo = __double2loint(x);
  yy.hi = __double2hiint(y);
  yy.lo = __double2loint(y);
  zz.hi = __double2hiint(z);
  zz.lo = __double2loint(z);

  expo_z = 0x7FF;
  t =  xx.hi >> 20;
  expo_x = expo_z & t;
  expo_x = expo_x - 1;    
  t =  yy.hi >> 20;
  expo_y = expo_z & t;
  expo_y = expo_y - 1;    
  t =  zz.hi >> 20;
  expo_z = expo_z & t;
  expo_z = expo_z - 1;    

  if (!((expo_x <= 0x7FD) &&
        (expo_y <= 0x7FD) &&
        (expo_z <= 0x7FD))) {
    
    



    if (((yy.hi << 1) | (yy.lo != 0)) > 0xffe00000) {
      yy.hi |= 0x00080000;
      return __hiloint2double(yy.hi, yy.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) > 0xffe00000) {
      zz.hi |= 0x00080000;
      return __hiloint2double(zz.hi, zz.lo);
    }
    if (((xx.hi << 1) | (xx.lo != 0)) > 0xffe00000) {
      xx.hi |= 0x00080000;
      return __hiloint2double(xx.hi, xx.lo);
    }
    
    










    if (((((xx.hi << 1) | xx.lo) == 0) && 
         (((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000)) ||
        ((((yy.hi << 1) | yy.lo) == 0) && 
         (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000))) {
      xx.hi = 0xfff80000;
      xx.lo = 0x00000000;
      return __hiloint2double(xx.hi, xx.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) == 0xffe00000) {
      if ((((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000) ||
          (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000)) {
        if ((int)(xx.hi ^ yy.hi ^ zz.hi) < 0) {
          xx.hi = 0xfff80000;
          xx.lo = 0x00000000;
          return __hiloint2double(xx.hi, xx.lo);
        }
      }
    }
    



    if (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000) {
      xx.hi = xx.hi ^ (yy.hi & 0x80000000);
      return __hiloint2double(xx.hi, xx.lo);
    }
    if (((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000) {
      yy.hi = yy.hi ^ (xx.hi & 0x80000000);
      return __hiloint2double(yy.hi, yy.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) == 0xffe00000) {
      return __hiloint2double(zz.hi, zz.lo);
    }
    




    if ((zz.hi == 0x80000000) && (zz.lo == 0)) {
      if ((((xx.hi << 1) | xx.lo) == 0) ||
          (((yy.hi << 1) | yy.lo) == 0)) {
        if ((int)(xx.hi ^ yy.hi) < 0) {
          return __hiloint2double(zz.hi, zz.lo);
        }
      }
    }
    


    if ((((zz.hi << 1) | zz.lo) == 0) &&
        ((((xx.hi << 1) | xx.lo) == 0) ||
         (((yy.hi << 1) | yy.lo) == 0))) {
      if (rndMode == cudaRoundMinInf) {
        return __hiloint2double((xx.hi ^ yy.hi ^ zz.hi) & 0x80000000, zz.lo);
      } else {
        zz.hi &= 0x7fffffff;
        return __hiloint2double(zz.hi, zz.lo);
      }
    }
    
    


    if ((((xx.hi << 1) | xx.lo) == 0) ||
        (((yy.hi << 1) | yy.lo) == 0)) {
      return __hiloint2double(zz.hi, zz.lo);
    }
    
    if (expo_x == 0xffffffff) {
      expo_x++;
      t = xx.hi & 0x80000000;
      s = xx.lo >> 21;
      xx.lo = xx.lo << 11;
      xx.hi = xx.hi << 11;
      xx.hi = xx.hi | s;
      if (!xx.hi) {
        xx.hi = xx.lo;
        xx.lo = 0;
        expo_x -= 32;
      }
      while ((int)xx.hi > 0) {
        s = xx.lo >> 31;
        xx.lo = xx.lo + xx.lo;
        xx.hi = xx.hi + xx.hi;
        xx.hi = xx.hi | s;
        expo_x--;
      }
      xx.lo = (xx.lo >> 11);
      xx.lo |= (xx.hi << 21);
      xx.hi = (xx.hi >> 11) | t;
    }
    if (expo_y == 0xffffffff) {
      expo_y++;
      t = yy.hi & 0x80000000;
      s = yy.lo >> 21;
      yy.lo = yy.lo << 11;
      yy.hi = yy.hi << 11;
      yy.hi = yy.hi | s;
      if (!yy.hi) {
        yy.hi = yy.lo;
        yy.lo = 0;
        expo_y -= 32;
      }
      while ((int)yy.hi > 0) {
        s = yy.lo >> 31;
        yy.lo = yy.lo + yy.lo;
        yy.hi = yy.hi + yy.hi;
        yy.hi = yy.hi | s;
        expo_y--;
      }
      yy.lo = (yy.lo >> 11);
      yy.lo |= (yy.hi << 21);
      yy.hi = (yy.hi >> 11) | t;
    }
    if (expo_z == 0xffffffff) {
      expo_z++;
      t = zz.hi & 0x80000000;
      s = zz.lo >> 21;
      zz.lo = zz.lo << 11;
      zz.hi = zz.hi << 11;
      zz.hi = zz.hi | s;
      if (!zz.hi) {
        zz.hi = zz.lo;
        zz.lo = 0;
        expo_z -= 32;
      }
      while ((int)zz.hi > 0) {
        s = zz.lo >> 31;
        zz.lo = zz.lo + zz.lo;
        zz.hi = zz.hi + zz.hi;
        zz.hi = zz.hi | s;
        expo_z--;
      }
      zz.lo = (zz.lo >> 11);
      zz.lo |= (zz.hi << 21);
      zz.hi = (zz.hi >> 11) | t;
    }
  }
  
  expo_x = expo_x + expo_y;
  expo_y = xx.hi ^ yy.hi;
  t = xx.lo >> 21;
  xx.lo = xx.lo << 11;
  xx.hi = xx.hi << 11;
  xx.hi = xx.hi | t;
  yy.hi = yy.hi & 0x000fffff;
  xx.hi = xx.hi | 0x80000000; 
  yy.hi = yy.hi | 0x00100000; 

  prod0 = xx.lo * yy.lo;
  prod1 = __umulhi (xx.lo, yy.lo);
  prod2 = xx.hi * yy.lo;
  prod3 = xx.lo * yy.hi;
  prod1 += prod2;
  t = prod1 < prod2;
  prod1 += prod3;
  t += prod1 < prod3;
  prod2 = __umulhi (xx.hi, yy.lo);
  prod3 = __umulhi (xx.lo, yy.hi);
  prod2 += prod3;
  s = prod2 < prod3;
  prod3 = xx.hi * yy.hi;
  prod2 += prod3;
  s += prod2 < prod3;
  prod2 += t;
  s += prod2 < t;
  prod3 = __umulhi (xx.hi, yy.hi) + s;
  
  yy.lo = prod0;                 
  yy.hi = prod1;                 
  xx.lo = prod2;                 
  xx.hi = prod3;                 
  expo_x = expo_x - (1023 - 2);  
  expo_y = expo_y & 0x80000000;  

  if (xx.hi < 0x00100000) {
    s = xx.lo >> 31;
    s = (xx.hi << 1) + s;
    xx.hi = s;
    s = yy.hi >> 31;
    s = (xx.lo << 1) + s;
    xx.lo = s;
    s = yy.lo >> 31;
    s = (yy.hi << 1) + s;
    yy.hi = s;
    s = yy.lo << 1;
    yy.lo = s;
    expo_x--;
  }

  t = 0;
  if (((zz.hi << 1) | zz.lo) != 0) { 
    
    s = zz.hi & 0x80000000;
    
    zz.hi &= 0x000fffff;
    zz.hi |= 0x00100000;
    ww.hi = 0;
    ww.lo = 0;
    
    
    if ((int)expo_z > (int)expo_x) {
      t = expo_z;
      expo_z = expo_x;
      expo_x = t;
      t = zz.hi;
      zz.hi = xx.hi;
      xx.hi = t;
      t = zz.lo;
      zz.lo = xx.lo;
      xx.lo = t;
      t = ww.hi;
      ww.hi = yy.hi;
      yy.hi = t;
      t = ww.lo;
      ww.lo = yy.lo;
      yy.lo = t;
      t = expo_y;
      expo_y = s;
      s = t;
    }
    
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 107) {
      
      t = 0;
      while (expo_z >= 32) {
        t     = ww.lo | (t != 0);
        ww.lo = ww.hi;
        ww.hi = zz.lo;
        zz.lo = zz.hi;
        zz.hi = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        t     = (t     >> expo_z) | (ww.lo << (32 - expo_z)) | 
                ((t << (32 - expo_z)) != 0);
        ww.lo = (ww.lo >> expo_z) | (ww.hi << (32 - expo_z));
        ww.hi = (ww.hi >> expo_z) | (zz.lo << (32 - expo_z));
        zz.lo = (zz.lo >> expo_z) | (zz.hi << (32 - expo_z));
        zz.hi = (zz.hi >> expo_z);
      }
    } else {
      t = 1;
      ww.lo = 0;
      ww.hi = 0;
      zz.lo = 0;
      zz.hi = 0;
    }
    if ((int)u < 0) {
      
      t = (unsigned)(-(int)t);
      s = (t != 0);
      u = yy.lo - s;
      s = u > yy.lo;
      yy.lo = u - ww.lo;
      s += yy.lo > u;
      u = yy.hi - s;
      s = u > yy.hi;
      yy.hi = u - ww.hi;
      s += yy.hi > u;
      u = xx.lo - s;
      s = u > xx.lo;
      xx.lo = u - zz.lo;
      s += xx.lo > u;
      xx.hi = (xx.hi - zz.hi) - s;
      if (!(xx.hi | xx.lo | yy.hi | yy.lo | t)) {
        
        if (rndMode == cudaRoundMinInf) {
          return __hiloint2double(0x80000000, xx.lo);
        } else {
          return __hiloint2double(xx.hi, xx.lo);
        }
      }
      if ((int)xx.hi < 0) {
        


        t = ~t;
        yy.lo = ~yy.lo;
        yy.hi = ~yy.hi;
        xx.lo = ~xx.lo;
        xx.hi = ~xx.hi;
        if (++t == 0) {
          if (++yy.lo == 0) {
            if (++yy.hi == 0) {
              if (++xx.lo == 0) {
              ++xx.hi;
              }
            }
          }
        }
        expo_y ^= 0x80000000;
      }
        
      
      while (!(xx.hi & 0x00100000)) {
        xx.hi = (xx.hi << 1) | (xx.lo >> 31);
        xx.lo = (xx.lo << 1) | (yy.hi >> 31);
        yy.hi = (yy.hi << 1) | (yy.lo >> 31);
        yy.lo = (yy.lo << 1);
        expo_x--;
      }
    } else {
      
      yy.lo = yy.lo + ww.lo;
      s = yy.lo < ww.lo;
      yy.hi = yy.hi + s;
      u = yy.hi < s;
      yy.hi = yy.hi + ww.hi;
      u += yy.hi < ww.hi;
      xx.lo = xx.lo + u;
      s = xx.lo < u;
      xx.lo = xx.lo + zz.lo;
      s += xx.lo < zz.lo;
      xx.hi = xx.hi + zz.hi + s;
      if (xx.hi & 0x00200000) {
        t = t | (yy.lo << 31);
        yy.lo = (yy.lo >> 1) | (yy.hi << 31);
        yy.hi = (yy.hi >> 1) | (xx.lo << 31);
        xx.lo = (xx.lo >> 1) | (xx.hi << 31);
        xx.hi = ((xx.hi & 0x80000000) | (xx.hi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  t = yy.lo | (t != 0);
  t = yy.hi | (t != 0);
        
  xx.hi |= expo_y; 
  if (expo_x <= 0x7FD) {
    
    xx.hi = xx.hi & ~0x00100000; 
    s = xx.lo & 1; 
    u = xx.lo;
    if (rndMode == cudaRoundNearest) {
      xx.lo += (t == 0x80000000) ? s : (t >> 31);
    } else if (((rndMode == cudaRoundPosInf) && t && (!expo_y)) ||
               ((rndMode == cudaRoundMinInf) && t && expo_y)) {
      xx.lo += 1;
    }
    xx.hi += (u > xx.lo);
    xx.hi += ((expo_x + 1) << 20);
    return __hiloint2double(xx.hi, xx.lo);
  } else if ((int)expo_x >= 2046) {      
    
    if ((rndMode == cudaRoundNearest) || 
        ((rndMode == cudaRoundPosInf) && (!expo_y)) ||
        ((rndMode == cudaRoundMinInf) && expo_y)) {
      xx.hi = (xx.hi & 0x80000000) | 0x7ff00000;
      xx.lo = 0;
    } else {
      xx.hi = (xx.hi & 0x80000000) | 0x7fefffff;
      xx.lo = 0xffffffff;
    }
    return __hiloint2double(xx.hi, xx.lo);
  }
  
  expo_x = (unsigned)(-(int)expo_x);
  if (expo_x > 54) {
    
    if (((rndMode == cudaRoundPosInf) && (!expo_y)) ||
        ((rndMode == cudaRoundMinInf) && expo_y)) {
      return __hiloint2double(xx.hi & 0x80000000, 1);
    } else {
      return __hiloint2double(xx.hi & 0x80000000, 0);
    }
  }  
  yy.hi = xx.hi &  0x80000000;   
  xx.hi = xx.hi & ~0xffe00000;
  if (expo_x >= 32) {
    t = xx.lo | (t != 0);
    xx.lo = xx.hi;
    xx.hi = 0;
    expo_x -= 32;
  }
  if (expo_x) {
    t     = (t     >> expo_x) | (xx.lo << (32 - expo_x)) | (t != 0);
    xx.lo = (xx.lo >> expo_x) | (xx.hi << (32 - expo_x));
    xx.hi = (xx.hi >> expo_x);
  }
  expo_x = xx.lo & 1; 
  u = xx.lo;
  if (rndMode == cudaRoundNearest) {
    xx.lo += (t == 0x80000000) ? expo_x : (t >> 31);
  } else if (((rndMode == cudaRoundPosInf) && t && (!expo_y)) ||
             ((rndMode == cudaRoundMinInf) && t && expo_y)) {
    xx.lo += 1;
  }
  xx.hi += (u > xx.lo);
  xx.hi |= yy.hi;
  return __hiloint2double(xx.hi, xx.lo);
}

static __inline__ __attribute__((always_inline)) double __fma_rn(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundNearest);
}

static __inline__ __attribute__((always_inline)) double __fma_rd(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundMinInf);
}

static __inline__ __attribute__((always_inline)) double __fma_ru(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundPosInf);
}

static __inline__ __attribute__((always_inline)) double __fma_rz(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundZero);
}

static __inline__ __attribute__((always_inline)) double __dadd_rz(double a, double b)
{
  return __fma_rz(a, 1.0, b); 
}

static __inline__ __attribute__((always_inline)) double __dadd_ru(double a, double b)
{
  return __fma_ru(a, 1.0, b); 
}

static __inline__ __attribute__((always_inline)) double __dadd_rd(double a, double b)
{
  return __fma_rd(a, 1.0, b); 
}

static __inline__ __attribute__((always_inline)) double __dmul_rz(double a, double b)
{
  return __fma_rz(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

static __inline__ __attribute__((always_inline)) double __dmul_ru(double a, double b)
{
  return __fma_ru(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

static __inline__ __attribute__((always_inline)) double __dmul_rd(double a, double b)
{
  return __fma_rd(a, b, 0.0); 
}

static __inline__ __attribute__((always_inline)) double __dadd_rn(double a, double b)
{
  return __fma_rn(a, 1.0, b); 
}

static __inline__ __attribute__((always_inline)) double __dmul_rn(double a, double b)
{
  return __fma_rn(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

#line 1130 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_13_double_functions.h"

#line 1132 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_13_double_functions.h"

#line 1134 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_13_double_functions.h"

#line 3503 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_atomic_functions.h"



















































































#line 85 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_atomic_functions.h"

#line 87 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_atomic_functions.h"
#line 3504 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_atomic_functions.h"























































































































#line 121 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_atomic_functions.h"

#line 123 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_atomic_functions.h"
#line 3505 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_intrinsics.h"























































































































































































































































































#line 281 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_intrinsics.h"

#line 283 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_20_intrinsics.h"
#line 3506 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_30_intrinsics.h"































































































































































#line 161 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_30_intrinsics.h"

#line 163 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_30_intrinsics.h"
#line 3507 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_intrinsics.h"



















































































































































#line 149 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_intrinsics.h"

#line 151 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\sm_35_intrinsics.h"
#line 3508 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 4486 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"
















































































































#line 4599 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"
extern uchar1     __surf1Dreadc1(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf1Dreadc2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf1Dreadc4(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf1Dreads1(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf1Dreads2(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf1Dreads4(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf1Dreadu1(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf1Dreadu2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf1Dreadu4(const void*, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf1Dreadl1(const void*, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf1Dreadl2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf2Dreadc1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf2Dreadc2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf2Dreadc4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf2Dreads1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf2Dreads2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf2Dreads4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf2Dreadu1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf2Dreadu2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf2Dreadu4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf2Dreadl1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf2Dreadl2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf3Dreadc1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf3Dreadc2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf3Dreadc4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf3Dreads1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf3Dreads2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf3Dreads4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf3Dreadu1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf3Dreadu2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf3Dreadu4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf3Dreadl1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf3Dreadl2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf1DLayeredreadc1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf1DLayeredreadc2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf1DLayeredreadc4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf1DLayeredreads1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf1DLayeredreads2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf1DLayeredreads4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf1DLayeredreadu1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf1DLayeredreadu2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf1DLayeredreadu4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf1DLayeredreadl1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf1DLayeredreadl2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf2DLayeredreadc1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf2DLayeredreadc2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf2DLayeredreadc4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf2DLayeredreads1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf2DLayeredreads2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf2DLayeredreads4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf2DLayeredreadu1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf2DLayeredreadu2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf2DLayeredreadu4(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf2DLayeredreadl1(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf2DLayeredreadl2(const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec1(    uchar1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec2(    uchar2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec4(    uchar4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites1(   ushort1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites2(   ushort2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites4(   ushort4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu1(     uint1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu2(     uint2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu4(     uint4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritel1(ulonglong1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritel2(ulonglong2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec1(    uchar1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec2(    uchar2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec4(    uchar4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites1(   ushort1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites2(   ushort2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites4(   ushort4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu1(     uint1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu2(     uint2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu4(     uint4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritel1(ulonglong1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritel2(ulonglong2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec1(    uchar1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec2(    uchar2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec4(    uchar4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites1(   ushort1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites2(   ushort2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites4(   ushort4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu1(     uint1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu2(     uint2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu4(     uint4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritel1(ulonglong1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritel2(ulonglong2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec1(    uchar1 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec2(    uchar2 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec4(    uchar4 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites1(   ushort1 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites2(   ushort2 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites4(   ushort4 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu1(     uint1 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu2(     uint2 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu4(     uint4 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritel1(ulonglong1 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritel2(ulonglong2 val, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec1(    uchar1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec2(    uchar2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec4(    uchar4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites1(   ushort1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites2(   ushort2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites4(   ushort4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu1(     uint1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu2(     uint2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu4(     uint4 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritel1(ulonglong1 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritel2(ulonglong2 val, const void*, int, int, int, enum cudaSurfaceBoundaryMode);
#line 4710 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"
















































#line 4759 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"

#line 4761 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"

#line 3509 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"







































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 3689 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


























#line 3716 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"
extern  uint4 __utexfetchi1D(const void*, int4);
extern   int4 __itexfetchi1D(const void*, int4);
extern float4 __ftexfetchi1D(const void*, int4);
extern  uint4 __utexfetch1D(const void*, float4);
extern   int4 __itexfetch1D(const void*, float4);
extern float4 __ftexfetch1D(const void*, float4);
extern  uint4 __utexfetch2D(const void*, float4);
extern   int4 __itexfetch2D(const void*, float4);
extern float4 __ftexfetch2D(const void*, float4);
extern  uint4 __utexfetch3D(const void*, float4);
extern   int4 __itexfetch3D(const void*, float4);
extern float4 __ftexfetch3D(const void*, float4);
extern  uint4 __utexfetchcube(const void*, float4);
extern   int4 __itexfetchcube(const void*, float4);
extern float4 __ftexfetchcube(const void*, float4);
extern  uint4 __utexfetchl1D(const void*, float4, int);
extern   int4 __itexfetchl1D(const void*, float4, int);
extern float4 __ftexfetchl1D(const void*, float4, int);
extern  uint4 __utexfetchl2D(const void*, float4, int);
extern   int4 __itexfetchl2D(const void*, float4, int);
extern float4 __ftexfetchl2D(const void*, float4, int);
extern  uint4 __utexfetchlcube(const void*, float4, int);
extern   int4 __itexfetchlcube(const void*, float4, int);
extern float4 __ftexfetchlcube(const void*, float4, int);
#line 3741 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"
































#line 3774 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 9529 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"





















































#line 9583 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"
extern  uint4 __utex2Dgather0(const void*, float2);
extern  uint4 __utex2Dgather1(const void*, float2);
extern  uint4 __utex2Dgather2(const void*, float2);
extern  uint4 __utex2Dgather3(const void*, float2);
extern   int4 __itex2Dgather0(const void*, float2);
extern   int4 __itex2Dgather1(const void*, float2);
extern   int4 __itex2Dgather2(const void*, float2);
extern   int4 __itex2Dgather3(const void*, float2);
extern float4 __ftex2Dgather0(const void*, float2);
extern float4 __ftex2Dgather1(const void*, float2);
extern float4 __ftex2Dgather2(const void*, float2);
extern float4 __ftex2Dgather3(const void*, float2);
#line 9596 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"














































#line 9643 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"

#line 9645 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


#line 3510 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_indirect_functions.h"







































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 7017 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_indirect_functions.h"

#line 7019 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_indirect_functions.h"



#line 3511 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_indirect_functions.h"











































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 7277 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_indirect_functions.h"

#line 7279 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_indirect_functions.h"



#line 3512 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"

#line 3514 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"

#line 3022 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"













static __inline__ __attribute__((always_inline)) float rintf(float a)
{
  return __builtin_roundf(a);
}

static __inline__ __attribute__((always_inline)) long int lrintf(float a)
{


#line 3045 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  return (long int)__float2int_rn(a);
#line 3047 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) long long int llrintf(float a)
{
  return __float2ll_rn(a);
}

static __inline__ __attribute__((always_inline)) float nearbyintf(float a)
{
  return __builtin_roundf(a);
}







static __inline__ __attribute__((always_inline)) int __signbitf(float a)
{
  return (int)((unsigned int)__float_as_int(a) >> 31);
}




static __inline__ __attribute__((always_inline)) float copysignf(float a, float b)
{
  return __int_as_float((__float_as_int(b) &  0x80000000) | 
                        (__float_as_int(a) & ~0x80000000));
}

static __inline__ __attribute__((always_inline)) int __finitef(float a)
{
  return fabsf(a) < __int_as_float(0x7f800000);
}








#line 3092 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

static __inline__ __attribute__((always_inline)) int __isinff(float a)
{
  return fabsf(a) == __int_as_float(0x7f800000);
}

static __inline__ __attribute__((always_inline)) int __isnanf(float a)
{
  return !(fabsf(a) <= __int_as_float(0x7f800000));
}

static __inline__ __attribute__((always_inline)) float nextafterf(float a, float b)
{
  unsigned int ia;
  unsigned int ib;
  ia = __float_as_int(a);
  ib = __float_as_int(b);

  if ((ia << 1) < 0x01000000) ia &= 0x80000000; 
  if ((ib << 1) < 0x01000000) ib &= 0x80000000; 
#line 3113 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (__isnanf(a) || __isnanf(b)) return a + b; 
  if (__int_as_float (ia | ib) == 0.0f) return __int_as_float(ib);

  if (__int_as_float(ia) == 0.0f) {
    return __int_as_float (0x00800000 | (__float_as_int(b) & 0x80000000));
  }




#line 3124 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if ((a < b) && (a < 0.0f)) ia--;
  if ((a < b) && (a > 0.0f)) ia++;
  if ((a > b) && (a < 0.0f)) ia++;
  if ((a > b) && (a > 0.0f)) ia--;
  a = __int_as_float(ia);

  if (a == 0.0f) {
    a = __int_as_float(ia & 0x80000000); 
  }
#line 3134 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  return a;
}

static __inline__ __attribute__((always_inline)) unsigned long long int __internal_nan_kernel(const char *s)
{
  unsigned long long i = 0;
  int c;
  int ovfl = 0;
  int invld = 0;
  if (s && (*s == '0')) {
    s++;
    if ((*s == 'x') || (*s == 'X')) {
      s++; 
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x0fffffffffffffffULL) {
          ovfl = 1;
        }
        c = (((*s) >= 'A') && ((*s) <= 'F')) ? (*s + 'a' - 'A') : (*s);
        if ((c >= 'a') && (c <= 'f')) { 
          c = c - 'a' + 10;
          i = i * 16 + c;
        } else if ((c >= '0') && (c <= '9')) { 
          c = c - '0';
          i = i * 16 + c;
        } else {
          invld = 1;
        }
        s++;
      }
    } else {
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x1fffffffffffffffULL) {
          ovfl = 1;
        }
        c = *s;
        if ((c >= '0') && (c <= '7')) { 
          c = c - '0';
          i = i * 8 + c;
        } else {
          invld = 1; 
        }
        s++;
      }
    }
  } else if (s) {
    while (*s) {
      c = *s;
      if ((i > 1844674407370955161ULL) || 
          ((i == 1844674407370955161ULL) && (c > '5'))) {
        ovfl = 1;
      }
      if ((c >= '0') && (c <= '9')) { 
        c = c - '0';
        i = i * 10 + c;
      } else {
        invld = 1;
      }
      s++;
    }
  }
  if (ovfl) {
    i = ~0ULL;
  }
  if (invld) {
    i = 0ULL;
  }
  i = (i & 0x000fffffffffffffULL) | 0x7ff8000000000000ULL;
  return i;
}

static __inline__ __attribute__((always_inline)) float nanf(const char *tagp)
{
  return __int_as_float(0x7fffffff);
}

static __inline__ __attribute__((always_inline)) float __internal_fmad(float a, float b, float c)
{


#line 3216 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float r;
  asm ("mad.f32 %0, %1, %2, %3;" : "=f"(r) : "f"(a), "f"(b), "f"(c));
  return r;
#line 3220 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float __internal_fast_rcpf(float a)
{
  float r; 
  asm ("rcp.approx.ftz.f32 %0,%1;" : "=f"(r) : "f"(a));
  return r;
}


static __inline__ __attribute__((always_inline)) float __internal_atanhf_kernel(float a_1, float a_2)
{
  float a, a2, t;

  a = __fadd_rn (a_1, a_2);
  a2 = a * a;    
  t =                         1.566305595598990E-001f/64.0f;
  t = __internal_fmad (t, a2, 1.995081856004762E-001f/16.0f);
  t = __internal_fmad (t, a2, 3.333382699617026E-001f/4.0f);
  t = t * a2;
  t = __internal_fmad (t, a, a_2);
  t = t + a_1;
  return t;
}  




static __inline__ __attribute__((always_inline)) float __internal_atanf_kernel(float a)
{
  float t4, t0, t1;

  t4 = __fmul_rn (a, a);
  t0 = -5.674867153f;
  t0 = __internal_fmad (t4, -0.823362947f, t0);
  t0 = __internal_fmad (t0, t4, -6.565555096f);
  t0 = t0 * t4;
  t0 = t0 * a;
  t1 = t4 + 11.33538818f;
  t1 = __internal_fmad (t1, t4, 28.84246826f);
  t1 = __internal_fmad (t1, t4, 19.69667053f);
  t1 = 1.0f / t1;
  a = __internal_fmad (t0, t1, a);
  return a;
}


static __inline__ __attribute__((always_inline)) float __internal_tan_kernel(float a)
{
  float a2, s, t;

  a2 = a * a;
  t  = __internal_fmad (4.114678393115178E-003f, a2, -8.231194034909670E-001f);
  s  = a2 - 2.469348886157666E+000f;
  s  = 1.0f / s;
  t  = t * s;
  t  = t * a2;
  t  = __internal_fmad (t, a, a);
  return t;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_logf(float a)
{
  float t;
  float z;
  float m;
  int ia;
  ia = __float_as_int(a);

  if ((a > 0.0f) && (a < __int_as_float(0x7f800000))) {
    int e = -127;







#line 3299 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    
    m = __int_as_float((ia & 0x807fffff) | 0x3f800000);
    e += ((unsigned)ia >> 23);
    if (m > 1.414213562f) {
      m = m * 0.5f;
      e = e + 1;
    }      
    t = m - 1.0f;
    z = m + 1.0f;
    z = __fdividef (t, z);
    z = __fmul_rn (-t, z);
    z = __internal_atanhf_kernel(t, z);
    z = __internal_fmad ((float)e, 0.693147181f, z);
  } else {
    
    z = __logf(a);
  }
  return z;
}  

static __inline__ __attribute__((always_inline)) float2 __internal_log_ep(float a)
{
  float2 res;
  int expo;
  float m;
  float log_hi, log_lo;
  float t_hi, t_lo;
  float f, g, u, v, q;
  float r, s, e;
  expo = (__float_as_int(a) >> 23) & 0xff;







#line 3337 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  expo -= 127;
  m = __int_as_float((__float_as_int(a) & 0x807fffff) | 0x3f800000);
  if (m > 1.414213562f) {
    m = m * 0.5f;
    expo = expo + 1;
  }

  




  f = m - 1.0f;
  g = m + 1.0f;
  g = 1.0f / g;
  u = 2.0f * f * g;
  v = u * u;
  q = 1.49356810919559350E-001f/64.0f;
  q = __internal_fmad (q, v, 1.99887797540072460E-001f/16.0f);
  q = __internal_fmad (q, v, 3.33333880955515580E-001f/4.0f);
  q = __fmul_rn (q, v);
  q = __fmul_rn (q, u);
  log_hi = __int_as_float(__float_as_int(u) & 0xfffff000);
  v = __int_as_float(__float_as_int(f) & 0xfffff000);
  u = 2.0f * (f - log_hi);
  f = f - v;
  u = __internal_fmad (-log_hi, v, u);
  u = __internal_fmad (-log_hi, f, u);
  u = __fmul_rn (g, u);
  

  
  r = log_hi + u;
  s = u - (r - log_hi);
  log_hi = r;
  log_lo = s;
  
  r = log_hi + q;
  s = ((log_hi - r) + q) + log_lo;
  log_hi = e = r + s;
  log_lo = (r - e) + s;

  
  t_hi = __fmul_rn (expo, 0.6931457519f);    
  t_lo = __fmul_rn (expo, 1.4286067653e-6f);

  
  r = t_hi + log_hi;
  s = (((t_hi - r) + log_hi) + log_lo) + t_lo;
  res.y = e = r + s;
  res.x = (r - e) + s;
  return res;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_log2f(float a)
{
  return 1.442695041f * __internal_accurate_logf(a);
}




static __inline__ __attribute__((always_inline)) float2 __internal_dsmul (float2 x, float2 y)
{
    float2 z;

    float u1, u2, v1, v2, mh, ml, up;
    u1 = __internal_fmad (x.y, 4097.0f, __internal_fmad (-x.y, 4097.0f, x.y));
    v1 = __internal_fmad (y.y, 4097.0f, __internal_fmad (-y.y, 4097.0f, y.y));
    u2 = x.y - u1;
    v2 = y.y - v1;
    mh = __fmul_rn (x.y, y.y);
    ml = __internal_fmad (u1, v2, __internal_fmad (u1, v1, -mh));
    ml = __internal_fmad (u2, v2, __internal_fmad (v1, u2, ml));
    ml = __fmul_rn (x.y, y.x) + __fmul_rn (x.x, y.y) + ml;
    z.y = up = __fadd_rn (mh, ml);
    z.x = __fadd_rn (mh - up, ml);








#line 3423 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    return z;
}


static __attribute__((constant)) unsigned int __cudart_i2opi_f [] = {
  0x3c439041,
  0xdb629599,
  0xf534ddc0,
  0xfc2757d1,
  0x4e441529,
  0xa2f9836e,
};


static


#line 3441 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
__inline__ __attribute__((always_inline))
#line 3443 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
float __internal_trig_reduction_slowpath(float a, int *quadrant)
{
  unsigned int ia = __float_as_int(a);
  unsigned int s = ia & 0x80000000;
  unsigned int result[7];
  unsigned int phi, plo;
  unsigned int hi, lo;
  unsigned int e;
  int idx;
  int q;
  e = ((ia >> 23) & 0xff) - 128;
  ia = (ia << 8) | 0x80000000;
  
  idx = 4 - (e >> 5);
  hi = 0;
#pragma unroll 1
  for (q = 0; q < 6; q++) {
    plo = __cudart_i2opi_f[q] * ia;
    phi = __umulhi (__cudart_i2opi_f[q], ia);
    lo = hi + plo;
    hi = phi + (lo < plo);
    result[q] = lo;
  }
  result[q] = hi;
  e = e & 31;
  


  hi = result[idx+2];
  lo = result[idx+1];
  if (e) {
    q = 32 - e;
    hi = (hi << e) + (lo >> q);
    lo = (lo << e) + (result[idx] >> q);
  }
  q = hi >> 30;
  
  hi = (hi << 2) + (lo >> 30);
  lo = (lo << 2);
  e = hi >> 31;  
  q += e;
  if (s) q = -q;
  *quadrant = q;
  if (e) {
    unsigned int t;
    hi = ~hi;
    lo = -(int)lo;
    t = (lo == 0);
    hi += t;
    s = s ^ 0x80000000;
  }
  
  e = __clz(hi);
  if (e) {
      hi = (hi << e) + (lo >> (32 - e)); 
  }
  lo = hi * 0xc90fdaa2;
  hi = __umulhi(hi, 0xc90fdaa2);
  if ((int)hi > 0) {
    hi = (hi << 1) + (lo >> 31);
    e++;
  }
  ia = s | (((126 - e) << 23) + ((((hi + 1) >> 7) + 1) >> 1));
  return __int_as_float(ia);
}


static __inline__ __attribute__((always_inline)) float __internal_trig_reduction_kernel(float a, int *quadrant)
{
  float j, t;
  int q;
  q = __float2int_rn (a * 0.636619772f);
  j = (float)q;





#line 3522 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  t = __internal_fmad (-j, 1.5703125000000000e+000f, a);
  t = __internal_fmad (-j, 4.8351287841796875e-004f, t);
  t = __internal_fmad (-j, 3.1385570764541626e-007f, t);
  t = __internal_fmad (-j, 6.0771005065061922e-011f, t);
#line 3527 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (fabsf(a) > 48039.0f) {
    t = __internal_trig_reduction_slowpath (a, &q);
  }
  *quadrant = q;
  return t;
}

static __inline__ __attribute__((always_inline)) float __internal_expf_arg_reduction(float a, float *i)
{
  float j, z;

  j = truncf (a * 1.442695041f);
  z = __internal_fmad (j, -0.6931457519f,    a);
  z = __internal_fmad (j, -1.4286067653e-6f, z);
  z = z * 1.442695041f;
  *i = j;
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_expf_kernel(float a, float scale)
{
  float j, z;

  z = __internal_expf_arg_reduction (a, &j);
  z = exp2f(z) * exp2f(j + scale);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_expf_add_kernel(float a, float addend)
{
  float j, z;

  z = __internal_expf_arg_reduction (a, &j);
  z = __internal_fmad (exp2f(z), exp2f(j), addend);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_expf(float a)
{
  float z;

  z = __internal_expf_kernel(a, 0.0f);
  if (a < -105.0f) z = 0.0f;
  if (a >  105.0f) z = __int_as_float(0x7f800000);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_exp10f(float a)
{
  float j, z;

  j = truncf(a * 3.321928094f);
  z = __internal_fmad (j, -3.0102920532226563e-001f, a);
  z = __internal_fmad (j, -7.9034171557301747e-007f, z);
  z = z * 3.321928094f;
  z = exp2f(z) * exp2f(j);
  if (a < -46.0f) z = 0.0f;
  if (a >  46.0f) z = __int_as_float(0x7f800000);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_lgammaf_pos(float a)
{
  float sum;
  float s, t;

  if (a >= 3.0f) {
    if (a >= 7.8f) {
      


      s = __internal_fast_rcpf (a);
      t = s * s;
      sum =                           0.77783067e-3f;
      sum = __internal_fmad (sum, t, -0.2777655457e-2f);
      sum = __internal_fmad (sum, t,  0.83333273853e-1f);
      sum = __internal_fmad (sum, s,  0.918938533204672f);
      s = 0.5f * __internal_accurate_logf(a);
      t = a - 0.5f;
      s = __fmul_rn(s, t);
      t = s - a;
      s = __fadd_rn(s, sum); 
      t = t + s;
      if (a == __int_as_float(0x7f800000)) {
        t = a;
      }
    } else {
      a = a - 3.0f;
      s =                        -7.488903254816711E+002f;
      s = __internal_fmad (s, a, -1.234974215949363E+004f);
      s = __internal_fmad (s, a, -4.106137688064877E+004f);
      s = __internal_fmad (s, a, -4.831066242492429E+004f);
      s = __internal_fmad (s, a, -1.430333998207429E+005f);
      t =                     a - 2.592509840117874E+002f;
      t = __internal_fmad (t, a, -1.077717972228532E+004f);
      t = __internal_fmad (t, a, -9.268505031444956E+004f);
      t = __internal_fmad (t, a, -2.063535768623558E+005f);
      t = __internal_fmad (s, __internal_fast_rcpf (t), a);
    }
  } else if (a >= 1.5f) {
    a = a - 2.0f;
    t =                         4.959849168282574E-005f;
    t = __internal_fmad (t, a, -2.208948403848352E-004f);
    t = __internal_fmad (t, a,  5.413142447864599E-004f);
    t = __internal_fmad (t, a, -1.204516976842832E-003f);
    t = __internal_fmad (t, a,  2.884251838546602E-003f);
    t = __internal_fmad (t, a, -7.382757963931180E-003f);
    t = __internal_fmad (t, a,  2.058131963026755E-002f);
    t = __internal_fmad (t, a, -6.735248600734503E-002f);
    t = __internal_fmad (t, a,  3.224670187176319E-001f);
    t = __internal_fmad (t, a,  4.227843368636472E-001f);
    t = t * a;
  } else if (a >= 0.7f) {
    a = 1.0f - a;
    t =                        4.588266515364258E-002f;
    t = __internal_fmad (t, a, 1.037396712740616E-001f);
    t = __internal_fmad (t, a, 1.228036339653591E-001f);
    t = __internal_fmad (t, a, 1.275242157462838E-001f);
    t = __internal_fmad (t, a, 1.432166835245778E-001f);
    t = __internal_fmad (t, a, 1.693435824224152E-001f);
    t = __internal_fmad (t, a, 2.074079329483975E-001f);
    t = __internal_fmad (t, a, 2.705875136435339E-001f);
    t = __internal_fmad (t, a, 4.006854436743395E-001f);
    t = __internal_fmad (t, a, 8.224669796332661E-001f);
    t = __internal_fmad (t, a, 5.772156651487230E-001f);
    t = t * a;
  } else {
    t =                         3.587515669447039E-003f;
    t = __internal_fmad (t, a, -5.471285428060787E-003f);
    t = __internal_fmad (t, a, -4.462712795343244E-002f);
    t = __internal_fmad (t, a,  1.673177015593242E-001f);
    t = __internal_fmad (t, a, -4.213597883575600E-002f);
    t = __internal_fmad (t, a, -6.558672843439567E-001f);
    t = __internal_fmad (t, a,  5.772153712885004E-001f);
    t = t * a;
    t = __internal_fmad (t, a, a);
    t = -__internal_accurate_logf(t);
  }
  return t;
}


static __inline__ __attribute__((always_inline)) float __internal_sin_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                         -1.95152959e-4f;
  z  = __internal_fmad (z, x2,  8.33216087e-3f);
  z  = __internal_fmad (z, x2, -1.66666546e-1f);


#line 3680 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  z  = z * x2;
#line 3682 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  z  = __internal_fmad (z, x, x);
  return z;
}


static __inline__ __attribute__((always_inline)) float __internal_cos_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                          2.44331571e-5f;
  z  = __internal_fmad (z, x2, -1.38873163e-3f);
  z  = __internal_fmad (z, x2,  4.16666457e-2f);
  z  = __internal_fmad (z, x2, -5.00000000e-1f);
  z  = __internal_fmad (z, x2,  1.00000000e+0f);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_sin_cos_kernel(float x, int i)
{




















#line 3723 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (i & 1) {
    x = __internal_cos_kernel(x);
  } else {
    x = __internal_sin_kernel(x);
  }
  if (i & 2) {
    x = __internal_fmad (x, -1.0f, 0.0f);
  }
#line 3732 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  return x;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_sinf(float a)
{
  float z;
  int i;

  if (__isinff(a)) {
    a = __fmul_rn (a, 0.0f);
  }
  a = __internal_trig_reduction_kernel(a, &i);
  z = __internal_sin_cos_kernel(a, i);

  if (a == 0.0f) {
    z = __fmul_rn (a, 0.0f);
  }
#line 3750 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_cosf(float a)
{
  float z;
  int i;

  if (__isinff(a)) {
    a = __fmul_rn (a, 0.0f);
  }
  z = __internal_trig_reduction_kernel(a, &i);
  i++;
  z = __internal_sin_cos_kernel(z, i);
  return z;
}





static __inline__ __attribute__((always_inline)) float __cos_offset_f(float a, float offset)
{
  float z;
  int i;

  z = __internal_trig_reduction_kernel(a, &i);
  a = z + offset + (i & 3) * 1.570796327f;
  return __internal_accurate_cosf(a);
}







static __inline__ __attribute__((always_inline)) float sinf(float a)
{

  return __sinf(a);


#line 3794 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float cosf(float a)
{

  return __cosf(a);


#line 3803 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) void sincosf(float a, float *sptr, float *cptr)
{

  __sincosf(a, sptr, cptr);

































#line 3843 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float sinpif(float a)
{
  float z;
  int i;

  z = rintf (a + a);
  i = (int)z;
  z = __internal_fmad (-z, 0.5f, a);


#line 3856 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  z = z * 3.141592654f;
#line 3858 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  z = __internal_sin_cos_kernel (z, i);
  if (a == truncf(a)) {
    z = __fmul_rn (a, 0.0f);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float cospif(float a)
{
  float z;
  int i;

  if (fabsf(a) > 16777216.0f) {
    a = __fmul_rn (a, 0.0f);
  }
  z = rintf (a + a);
  i = (int)z;
  z = __internal_fmad (-z, 0.5f, a);


#line 3879 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  z = z * 3.141592654f;
#line 3881 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  i++;
  z = __internal_sin_cos_kernel (z, i);
  return z;
}

static __inline__ __attribute__((always_inline)) void sincospif(float a, float *sptr, float *cptr)
{

  volatile
#line 3891 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float s, c;
  float t;
  int i;

  t = rintf (a + a);
  i = (int)t;
  t = __internal_fmad (-t, 0.5f, a);


#line 3901 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  t = t * 3.141592654f;
#line 3903 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  c = __internal_cos_kernel(t);
  s = __internal_sin_kernel(t);
  t = s;
  if (i & 1) {
    s = c;
    c = t;
  }
  if (i & 2) {
    s = -s;
  }
  i++;
  if (i & 2) {
    c = __internal_fmad (c, -1.0f, 0.0f);
  }
  if (a == truncf(a)) {
    s = __fmul_rn (a, 0.0f);
  }
  if (fabsf(a) > 16777216.0f) {
    c = __fadd_rn (s, 1.0f);
  }
  *sptr = s;
  *cptr = c;
}

static __inline__ __attribute__((always_inline)) float tanf(float a)
{

  return __tanf(a);














#line 3946 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float log2f(float a)
{

  return __log2f(a);


#line 3955 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float expf(float a)
{

  return __expf(a);


#line 3964 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float exp10f(float a)
{

  return __exp10f(a);


#line 3973 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float coshf(float a)
{
  float z;

  a = fabsf(a);
  z = __internal_expf_kernel(a, -2.0f);
  z = __internal_fmad (2.0f, z,  __fdividef (0.125f, z));
  if (a >= 90.0f) {
    z = __int_as_float(0x7f800000);     
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float sinhf(float a)
{
  float s, z;

  s = a;
  a = fabsf(a);
  if (a >= 1.0f) {         
    z = __internal_expf_kernel(a, -2.0f);
    z = __internal_fmad (2.0f, z, -__fdividef (0.125f, z));
    if (a >= 90.0f) {
      z = __int_as_float(0x7f800000);     
    }
    z =  __int_as_float(__float_as_int(z) | (__float_as_int(s) & 0x80000000));
  } else {
    float a2 = s * s;
    
    z =                         2.816951222e-6f;
    z = __internal_fmad (z, a2, 1.983615978e-4f);
    z = __internal_fmad (z, a2, 8.333350058e-3f);
    z = __internal_fmad (z, a2, 1.666666650e-1f);
    z = z * a2;
    z = __internal_fmad (z, s, s);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float tanhf(float a)
{
  float s, t;

  t = fabsf(a);
  if (t >= 0.55f) {
    s = __internal_fmad (__internal_fast_rcpf (
                         __internal_expf_add_kernel (t+t, 1.0f)), -2.0f, 1.0f);
    if (t >= 88.0f) {
      s = 1.0f;
    }
    s = __int_as_float(__float_as_int(s) | (__float_as_int(a) & 0x80000000));
  } else {
    float z2;
    z2 = a * a;
    t =                          1.643758066599993e-2f;
    t = __internal_fmad (t, z2, -5.267181327760551e-2f);
    t = __internal_fmad (t, z2,  1.332072505223051e-1f);
    t = __internal_fmad (t, z2, -3.333294663641083e-1f);
    t = t * z2;
    s = __internal_fmad (t, a, a);
    if (a == 0.0f) {   
      s = a + a;
    }
  }
  return s;
}

static __inline__ __attribute__((always_inline)) float atan2f(float a, float b)
{
  float t0, t1, fa, fb;

  fb = fabsf(b);
  fa = fabsf(a);
  if ((fa == 0.0f) && (fb == 0.0f)) {
    t0 = (__float_as_int(b) < 0) ? 3.141592654f : 0.0f;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
  } else if ((fa == __int_as_float(0x7f800000)) && (fb == __int_as_float(0x7f800000))) {
    t0 = (__float_as_int(b) < 0) ? 2.356194490f : 0.785398163f;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
  } else {
    
    
    t0 = fminf(fa, fb);
    t1 = fmaxf(fa, fb);
    t0 = t0 / t1;
    t0 = __internal_atanf_kernel(t0);
    
    if (fa > fb) t0 = 1.570796327f - t0;
    if (b < 0.0f) t0 = 3.141592654f - t0;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
    t1 = a + b;
    if (!(t1 <= __int_as_float(0x7f800000))) {
      
        t0 = t1;
    }
  }
  return t0;
}

static __inline__ __attribute__((always_inline)) float atanf(float a)
{
  float t0, t1;

  
  t0 = fabsf(a);
  t1 = t0;
  if (t0 > 1.0f) {
    t1 = 1.0f / t1;
  }
  
  t1 = __internal_atanf_kernel(t1);
  
  if (t0 > 1.0f) {
    t1 = 1.570796327f - t1;
  }
  if (t0 <= __int_as_float(0x7f800000)) {
    t1 = __int_as_float(__float_as_int(t1) | (__float_as_int(a) & 0x80000000));
  }
  return t1;
}


static __inline__ __attribute__((always_inline)) float __internal_asinf_kernel(float a)
{
  float a2, t;
  a2 = a * a;
  t =                         5.175137819e-002f;
  t = __internal_fmad (t, a2, 1.816697683e-002f);
  t = __internal_fmad (t, a2, 4.675685871e-002f);
  t = __internal_fmad (t, a2, 7.484657646e-002f);
  t = __internal_fmad (t, a2, 1.666701424e-001f);
  t = t * a2;
  a = __internal_fmad (t, a, a);
  return a;
}

static __inline__ __attribute__((always_inline)) float asinf(float a)
{
  float t0, t1, t2;

  t0 = fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = sqrtf(t2);
  t1 = t0 > 0.57f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t2 = __internal_fmad (-2.0f, t1, 1.570796327f);
  if (t0 > 0.57f) {
    t1 = t2;
  }
  if (t1 <= __int_as_float(0x7f800000)) {
    t1 = __int_as_float(__float_as_int(t1) | (__float_as_int(a) & 0x80000000));
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) float acosf(float a)
{
  float t0, t1, t2;

  t0 = fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = sqrtf(t2);
  t1 = t0 > 0.57f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t1 = t0 > 0.57f ? 2.0f * t1 : 1.570796327f - t1;
  if (__float_as_int(a) < 0) {
    t1 = 3.141592654f - t1;
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) float logf(float a)
{

  return __logf(a);


#line 4155 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float log10f(float a)
{

  return __log10f(a);


#line 4164 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float log1pf(float a)
{
  float t;
  if (a >= -0.394f && a <= 0.65f) {
    
    t = a + 2.0f;
    t = __fdividef (a, t);
    t = __fmul_rn (-a, t);
    t = __internal_atanhf_kernel (a, t);
  } else {
    t = __internal_accurate_logf (1.0f + a);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float acoshf(float a)
{
  float t;

  t = a - 1.0f;
  if (fabsf(t) > 8388608.0f) {
    
    t = 0.693147181f + __internal_accurate_logf(a);
  } else {
    t = t + sqrtf(__fadd_rn(__fmul_rz(a, t), t));
    t = log1pf(t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float asinhf(float a)
{
  float fa, oofa, t;

  fa = fabsf(a);
  if (fa > 8.507059173e37f) {        
    t = __fadd_rn (0.693147181f, __logf(fa));  
  } else {
    oofa = 1.0f / fa;
    t = __internal_fmad (fa, __internal_fast_rcpf (oofa + 
                             sqrtf (__internal_fmad (oofa, oofa, 1.0f))), fa);
    t = log1pf(t);
  }
  if (fa <= __int_as_float(0x7f800000)) {
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float atanhf(float a)
{
  float fa, t;

  fa = fabsf(a);
  t = __fdividef ((2.0f * fa), (1.0f - fa));
  t = 0.5f * log1pf(t);
  if (fabsf(t) <= __int_as_float(0x7f800000)) {
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float expm1f(float a)
{
  float t, z, j, u;
  
  t = rintf (a * 1.442695041f);
  
  if (fabsf(a) < 0.41f) {
    t = 0.0f;
  }  
  z = __internal_fmad (-t, 0.6931457519f, a);
  z = __internal_fmad (-t, 1.4286067653e-6f, z);
  
  j = t;
  if (t == 128.0f) j = j - 1.0f; 
  
  u =                        1.38795078474044430E-003f;
  u = __internal_fmad (u, z, 8.38241261853264930E-003f);
  u = __internal_fmad (u, z, 4.16678317762833940E-002f);
  u = __internal_fmad (u, z, 1.66663978874356580E-001f);
  u = __internal_fmad (u, z, 4.99999940395997040E-001f);
  u = u * z;
  u = __internal_fmad (u, z, z);
  
  z = exp2f (j);
  u = __internal_fmad (u, z, z - 1.0f);
  if (t == 128.0f) u = u + u; 
  
  if (j > 128.0f) u = __int_as_float(0x7f800000);
  if (j < -25.0f) u = -1.0f;
  
  if (a == 0.0f) {
    u = __int_as_float(__float_as_int(a) & 0x80000000);
  }
  return u;
}

static __inline__ __attribute__((always_inline)) float hypotf(float a, float b)
{
  float v, w, s, t, fa, fb;

  fa = fabsf(a);
  fb = fabsf(b);
  v = s = fmaxf(fa, fb);
  w = t = fminf(fa, fb);
  if (v > 8.507059173e37f) {
    s = s * 0.25f;
    t = t * 0.25f;
  }
  t = __fdividef(t, s);
  t = __internal_fmad (t, t, 1.0f);
  t = v * sqrtf(t);
  if (v == 0.0f) {
    t = v + w;         
  }
  if ((!(fa <= __int_as_float(0x7f800000))) || (!(fb <= __int_as_float(0x7f800000)))) {
    t = a + b;         
  }
  if (v == __int_as_float(0x7f800000)) {
    t = v + w;         
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float cbrtf(float a)
{
  float s, t;

  s = fabsf(a);
  t = exp2f(0.333333333f * __log2f(s));           
  s = __internal_fmad (__internal_fast_rcpf (t * t), -s, t);
  t = __internal_fmad (s, -0.333333333f, t);
  if (__float_as_int(a) < 0) {
    t = -t;
  }
  s = a + a;
  if (s == a) t = s; 
  return t;
}

static __inline__ __attribute__((always_inline)) float rcbrtf(float a)
{
  float s, t;

  s = fabsf(a);
  t = exp2f(-0.333333333f * __log2f(s));          
  t = __internal_fmad(__internal_fmad(t*t, -s*t, 1.0f), 0.333333333f*t, t);
  if (__float_as_int(a) < 0) {
    t = -t;
  }
  s = a + a;
  if (s == a) t = __internal_fast_rcpf(a); 
  return t;
}

static __inline__ __attribute__((always_inline)) float j0f(float a)
{
  float t, r, x;
  r = 0.0f;
  t = fabsf(a);
  if (t <= 8.0f) {
    




    x = ((t - 2.4048254e0f) - 1.0870590e-7f);
    r = -1.2470738e-15f;
    r = __internal_fmad(r, x, -7.6677725e-14f);
    r = __internal_fmad(r, x, 2.7150556e-12f);
    r = __internal_fmad(r, x, -6.0280119e-12f);
    r = __internal_fmad(r, x, -4.2393267e-10f);
    r = __internal_fmad(r, x, 5.8276378e-10f);
    r = __internal_fmad(r, x, 5.8077841e-8f);
    r = __internal_fmad(r, x, 1.8003311e-9f);
    r = __internal_fmad(r, x, -5.4500733e-6f);
    r = __internal_fmad(r, x, -7.3432207e-6f);
    r = __internal_fmad(r, x, 3.0170320e-4f);
    r = __internal_fmad(r, x, 7.7395444e-4f);
    r = __internal_fmad(r, x, -7.2834617e-3f);
    r = __internal_fmad(r, x, -2.6668204e-2f);
    r *= x;
    r *= ((t - 5.5200782e0f) - -7.1934146e-8f);
    r *= ((t - 8.6537275e0f) - 3.8147792e-7f);
  } else if (!__isinff(t)) {
    



    float y = __internal_fast_rcpf(t);
    float y2 = y * y;
    float f, arg;
    f = 3.3592878957727e0f;
    f = __internal_fmad(f, y2, -5.1452267169952e-1f);
    f = __internal_fmad(f, y2, 1.0337056964636e-1f);
    f = __internal_fmad(f, y2, -6.2499724328518e-2f);
    f = __internal_fmad(f, y2, 1.0000000000000e0f);
    arg = 1.1396494694586e0f;
    arg = __internal_fmad(arg, y2, -2.0532675087452e-1f);
    arg = __internal_fmad(arg, y2, 6.5091736614704e-2f);
    arg = __internal_fmad(arg, y2, -1.2499999254942e-1f);
    arg = __internal_fmad(arg, y, t);
    r = rsqrtf(t) * 0.797884561f * f * __cos_offset_f(arg, -7.8539816e-1f);
  } else {
    
    r = 0.0f;
  }
  return r;
}

static __inline__ __attribute__((always_inline)) float j1f(float a)
{
  float t, r, x;
  r = 0.0f;
  t = fabsf(a);
  if (t <= 7.85f) {
    




    x = ((t - 3.8317060e0f) - -7.6850590e-8f);
    r = 7.7806488e-14f;
    r = __internal_fmad(r, x, 9.2190860e-13f);
    r = __internal_fmad(r, x, -2.5706883e-11f);
    r = __internal_fmad(r, x, -2.0179057e-10f);
    r = __internal_fmad(r, x, 4.5125277e-9f);
    r = __internal_fmad(r, x, 2.7016290e-8f);
    r = __internal_fmad(r, x, -5.3477970e-7f);
    r = __internal_fmad(r, x, -2.3602763e-6f);
    r = __internal_fmad(r, x, 4.1210809e-5f);
    r = __internal_fmad(r, x, 1.1917029e-4f);
    r = __internal_fmad(r, x, -1.8075588e-3f);
    r = __internal_fmad(r, x, -2.5548928e-3f);
    r = __internal_fmad(r, x, 3.3013891e-2f);
    r *= ((t - 7.0155869e0f) - -1.8321172e-7f);
    r *= x;
    r *= t;
  } else if (!__isinff(t)) {
    float y = __internal_fast_rcpf(t);
    float y2 = y * y;
    float f, arg;
    f = -4.0873065e0f;
    f = __internal_fmad(f, y2, 7.4987656e-1f);
    f = __internal_fmad(f, y2, -1.9291565e-1f);
    f = __internal_fmad(f, y2, 1.8749826e-1f);
    f = __internal_fmad(f, y2, 1.0000000e0f);
    arg = -1.5799448e0f;
    arg = __internal_fmad(arg, y2, 3.6148587e-1f);
    arg = __internal_fmad(arg, y2, -1.6401261e-1f);
    arg = __internal_fmad(arg, y2, 3.7499991e-1f);
    arg = __internal_fmad(arg, y, t);
    r = rsqrtf(t) * 0.797884561f * f * __cos_offset_f(arg, -2.3561945e0f);
  } else {
    r = 0.0f;
  }
  if (a < 0.0f) {
      r = -r;
  }
  if (t < 1e-30f) {
      r = copysignf(r, a);
  }
  return r;
}

static __inline__ __attribute__((always_inline)) float y0f(float a)
{
  float t, r, x;
  r = 0.0f;
  t = fabsf(a);
  if (t <= 4.4678848e-1f) {
    





    x = t * t;
    r = 1.0239759e-7f;
    r = __internal_fmad(r, x, -9.4943007e-6f);
    r = __internal_fmad(r, x, 5.3860247e-4f);
    r = __internal_fmad(r, x, -1.6073968e-2f);
    r = __internal_fmad(r, x, 1.7760602e-1f);
    r = __internal_fmad(r, x, -7.3804297e-2f);
    r += 0.636619772f * logf(t) * j0f(t);
  } else if (t <= 1.9256277e0f) {
    


    x = ((t - 8.9357698e-1f) - -1.3357979e-8f);
    r = 2.7073240e-2f;
    r = __internal_fmad(r, x, -1.2728614e-1f);
    r = __internal_fmad(r, x, 2.4919428e-1f);
    r = __internal_fmad(r, x, -2.7333531e-1f);
    r = __internal_fmad(r, x, 2.1465521e-1f);
    r = __internal_fmad(r, x, -1.8043898e-1f);
    r = __internal_fmad(r, x, 1.8990822e-1f);
    r = __internal_fmad(r, x, -2.0543173e-1f);
    r = __internal_fmad(r, x, 2.1968170e-1f);
    r = __internal_fmad(r, x, -2.2614010e-1f);
    r = __internal_fmad(r, x, 2.2052875e-1f);
    r = __internal_fmad(r, x, -4.9207821e-1f);
    r = __internal_fmad(r, x, 8.7942094e-1f);
    r *= x;
  } else if (t <= 5.5218647e0f) {
    x = ((t - 3.9576783e0f) - 1.0129118e-7f);
    r = -1.8800073e-7f;
    r = __internal_fmad(r, x, -2.0689195e-7f);
    r = __internal_fmad(r, x, -3.9767929e-6f);
    r = __internal_fmad(r, x, 5.0848408e-5f);
    r = __internal_fmad(r, x, 1.9341275e-4f);
    r = __internal_fmad(r, x, -2.1835594e-3f);
    r = __internal_fmad(r, x, -6.8510985e-3f);
    r = __internal_fmad(r, x, 5.8523852e-2f);
    r = __internal_fmad(r, x, 5.0855581e-2f);
    r = __internal_fmad(r, x, -4.0254268e-1f);
    r *= x;
  } else if (t <= 8.6541981e0f) {
    x = ((t - 7.0860510e0f) - 7.3058118e-8f);
    r = 5.3945030e-7f;
    r = __internal_fmad(r, x, 2.5310101e-6f);
    r = __internal_fmad(r, x, -4.5855297e-5f);
    r = __internal_fmad(r, x, -1.4028202e-4f);
    r = __internal_fmad(r, x, 2.1758752e-3f);
    r = __internal_fmad(r, x, 3.3181210e-3f);
    r = __internal_fmad(r, x, -4.8024025e-2f);
    r = __internal_fmad(r, x, -2.1175193e-2f);
    r = __internal_fmad(r, x, 3.0009761e-1f);
    r *= x;
  } else if (!__isinff(t)) {
    float y = __internal_fast_rcpf(t);
    float y2 = y * y;
    float f, arg;
    f = -3.9924583e-1f;
    f = __internal_fmad(f, y2, 1.0197055e-1f);
    f = __internal_fmad(f, y2, -6.2492687e-2f);
    f = __internal_fmad(f, y2, 1.0000000e0f);
    arg = 1.1000177e0f;
    arg = __internal_fmad(arg, y2, -2.0393032e-1f);
    arg = __internal_fmad(arg, y2, 6.5077804e-2f);
    arg = __internal_fmad(arg, y2, -1.2499996e-1f);
    arg = __internal_fmad(arg, y, t);
    r = rsqrtf(t) * 0.797884561f * f * __cos_offset_f(arg, -2.3561945e0f);
  } else {
    
    r = 0.0f;
  }
  if (a < 0.0f) {
      r = sqrtf(-1.0f);
  }
  return r;
}

static __inline__ __attribute__((always_inline)) float y1f(float a)
{
  float t, r, x;
  r = 0.0f;
  t = fabsf(a);
  if (t < 1.175494351e-38f) {
    
    r = -0.636619772f / t;
  } else if (t <= 1.6985707e0f) {
    





    x = t * t;
    r = 8.6371976e-9f;
    r = __internal_fmad(r, x, -9.9208705e-7f);
    r = __internal_fmad(r, x, 7.1642142e-5f);
    r = __internal_fmad(r, x, -2.9553052e-3f);
    r = __internal_fmad(r, x, 5.4348689e-2f);
    r = __internal_fmad(r, x, -1.9605710e-1f);
    r *= t;
    r += 0.636619772f * (logf(t) * j1f(t) - 1.0f / t);
  } else if (t <= 3.8134112e0f) {
    


    x = ((t - 2.1971414e0f) - -8.2889272e-8f);
    r = -1.6437198e-5f;
    r = __internal_fmad(r, x, 1.2807001e-4f);
    r = __internal_fmad(r, x, -4.5903810e-4f);
    r = __internal_fmad(r, x, 1.0938945e-3f);
    r = __internal_fmad(r, x, -2.6312035e-3f);
    r = __internal_fmad(r, x, 7.4269730e-3f);
    r = __internal_fmad(r, x, -4.7923904e-3f);
    r = __internal_fmad(r, x, -3.2858409e-2f);
    r = __internal_fmad(r, x, -1.1851477e-1f);
    r = __internal_fmad(r, x, 5.2078640e-1f);
    r *= x;
  } else if (t <= 7.0128435e0f) {
    x = ((t - 5.4296808e0f) - 2.1651435e-7f);
    r = 2.2158844e-8f;
    r = __internal_fmad(r, x, -5.0902725e-7f);
    r = __internal_fmad(r, x, -2.8541590e-6f);
    r = __internal_fmad(r, x, 4.6370558e-5f);
    r = __internal_fmad(r, x, 1.4660921e-4f);
    r = __internal_fmad(r, x, -2.1659129e-3f);
    r = __internal_fmad(r, x, -4.1601104e-3f);
    r = __internal_fmad(r, x, 5.0947908e-2f);
    r = __internal_fmad(r, x, 3.1338677e-2f);
    r = __internal_fmad(r, x, -3.4031805e-1f);
    r *= x;
  } else if (t <= 1.0172580e1f) {
    x = ((t - 8.5960054e0f) - 4.2857286e-7f);
    r = 5.2508420e-7f;
    r = __internal_fmad(r, x, 1.9455433e-6f);
    r = __internal_fmad(r, x, -4.3719487e-5f);
    r = __internal_fmad(r, x, -1.0394055e-4f);
    r = __internal_fmad(r, x, 2.0113946e-3f);
    r = __internal_fmad(r, x, 2.4177686e-3f);
    r = __internal_fmad(r, x, -4.3406386e-2f);
    r = __internal_fmad(r, x, -1.5789848e-2f);
    r = __internal_fmad(r, x, 2.7145988e-1f);
    r *= x;
  } else if (!__isinff(t)) {
    float y = __internal_fast_rcpf(t);
    float y2 = y * y;
    float f, arg;
    f = 6.5038110e-1f;
    f = __internal_fmad(f, y2, -1.9206071e-1f);
    f = __internal_fmad(f, y2, 1.8749522e-1f);
    f = __internal_fmad(f, y2, 1.0000000e0f);
    arg = -1.7881368e0f;
    arg = __internal_fmad(arg, y2, 3.6611685e-1f);
    arg = __internal_fmad(arg, y2, -1.6404507e-1f);
    arg = __internal_fmad(arg, y2, 3.7499997e-1f);
    arg = __internal_fmad(arg, y, t);
    r = rsqrtf(t) * 0.797884561f * f * __cos_offset_f(arg, -3.9269908e0f);
  } else {
  
    r = 0.0f;
  }
  if (a < 0.0f) {
      r = sqrtf(-1.0f);
  }
  return r;
}

static __inline__ __attribute__((always_inline)) float ynf(int n, float a)
{
  float yip1; 
  float yi = y1f(a); 
  float yim1 = y0f(a); 
  float two_over_a;
  int i;
  if(n == 0) {
    return y0f(a);
  }
  if(n == 1) {
    return y1f(a);
  }
  if(n < 0) {
    return __int_as_float(0x7fffffff);
  }
  if(!(a >= 0.0f)) {
    
    return __int_as_float(0x7fffffff);
  }
  if(fabsf(a) < 1.175494351e-38f) {
    
    return -10e8f / fabsf(a);
  }
  two_over_a = 2.0f / a;
  for(i = 1; i < n; i++) {
    
    yip1 = __internal_fmad(i * two_over_a, yi, -yim1);
    yim1 = yi;
    yi = yip1;
  }
  if(__isnanf(yip1)) {
    
    return -__int_as_float(0x7f800000);
  }
  return yip1;
}

static __inline__ __attribute__((always_inline)) float jnf(int n, float a)
{
  float jip1 = 0.0f; 
  float ji = 1.0f; 
  float jim1; 
  float lambda = 0.0f;
  float sum = 0.0f;
  int i;
  if(n == 0) {
    return y0f(a);
  }
  if(n == 1) {
    return y1f(a);
  }
  if(n < 0) {
    return __int_as_float(0x7fffffff);
  }
  if(fabsf(a) > (float)(n + (n > 4))) {
    
    float two_over_a = 2.0f / a;
    float ji = j1f(a); 
    float jim1 = j0f(a); 
    for(i = 1; i < n; i++) {
      jip1 = __internal_fmad(i * ji, two_over_a, -jim1);
      jim1 = ji;
      ji = jip1;
    }
    return jip1;
  } else {
    int m = n + (int)sqrtf(n * 40);
    m = (m >> 1) << 1;
    for(i = m; i >= 1; --i) {
      
      jim1 = i * 2.0f / a * ji - jip1;
      jip1 = ji;
      if(fabsf(jim1) > 1e15f) {
        
        jim1 *= 1e-15f;
        jip1 *= 1e-15f;
        lambda *= 1e-15f;
        sum *= 1e-15f;
      }
      ji = jim1;
      if(i - 1 == n) {
        lambda = ji;
      }
      if(i & 1) {
        sum += 2.0f * ji;
      }
    }
    sum -= ji;
    return lambda / sum;
  }
}

static __inline__ __attribute__((always_inline)) float erff(float a)
{
  float t, r, q;

  t = fabsf(a);
  if (t >= 1.0f) { 
    


    q = __internal_fmad (t, 0.3275911f, 1.0f);
    q = 1.0f / q;
    r =                         1.061405429f;
    r = __internal_fmad (r, q, -1.453152027f);
    r = __internal_fmad (r, q,  1.421413741f);
    r = __internal_fmad (r, q, -0.284496736f);
    r = __internal_fmad (r, q,  0.254829592f);
    r = r * q;
    q = __internal_expf_kernel(-a * a, 0.0f);
    r = __internal_fmad (-q, r, 1.0f);
    if (t >= 5.5f) {
      r = 1.0f;
    }
    a = __int_as_float (__float_as_int(r) | (__float_as_int(a) & 0x80000000));
  } else {
    t = a * a;
    r =                        -5.58510127926029810E-004f;
    r = __internal_fmad (r, t,  4.90688891415893070E-003f);
    r = __internal_fmad (r, t, -2.67027980930150640E-002f);
    r = __internal_fmad (r, t,  1.12799056505903940E-001f);
    r = __internal_fmad (r, t, -3.76122956138427440E-001f);
    r = __internal_fmad (r, t,  1.12837911712623450E+000f);
    a = a * r;
  }
  return a;
}

static __inline__ __attribute__((always_inline)) float __internal_erfinv_poly(float a)
{
  float r;

  r =                        -2.5172707606685652E-010f; 
  r = __internal_fmad (r, a,  9.4274289432374619E-009f); 
  r = __internal_fmad (r, a, -1.2054753059594516E-007f); 
  r = __internal_fmad (r, a,  2.1697004698667657E-007f); 
  r = __internal_fmad (r, a,  8.0621488510822390E-006f); 
  r = __internal_fmad (r, a, -3.1675491789646913E-005f); 
  r = __internal_fmad (r, a, -7.7436312951712784E-004f); 
  r = __internal_fmad (r, a,  5.5465877941375773E-003f); 
  r = __internal_fmad (r, a,  1.6082022430967846E-001f); 
  r = __internal_fmad (r, a,  8.8622690039402130E-001f); 
  return r;
}

















 
static __inline__ __attribute__((always_inline)) float erfinvf(float a)
{
  float s, t, r;



#line 4779 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  s = 1.0f + a;
  t = 1.0f - a;
  s = s * t;
#line 4783 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  t = - __log2f (s);
  if (t > 8.2f) {
    t = rsqrtf (t);
    r =                        -5.8991436871681446E-001f;
    r = __internal_fmad (r, t, -6.6300422537735360E-001f);
    r = __internal_fmad (r, t,  1.5970110948817704E+000f);
    r = __internal_fmad (r, t, -6.7521557026467416E-001f);
    r = __internal_fmad (r, t, -9.5224791160399669E-002f);
    r = __internal_fmad (r, t,  8.3535343797791939E-001f);
    t = 1.0f / t;
    t = r * t;
    if (a < 0.0f) t = -t;
  } else {
    t = a * __internal_erfinv_poly (t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float __internal_erfcxf_kernel (float a)
{








































#line 4844 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float p, q;
  








  p =                        - 9.9910025099425892E-001f;
  p = __internal_fmad (p, a, - 2.6108451215634448E-001f);
  p = __internal_fmad (p, a, + 1.2460347155371844E-001f);
  p = __internal_fmad (p, a, + 1.3243909814778765E-001f);
  p = __internal_fmad (p, a, + 3.3477599162629441E-002f);
  q =                     a  + 2.2542670016875404E+000f;
  q = __internal_fmad (q, a, + 2.1514433559696009E+000f);
  q = __internal_fmad (q, a, + 1.0284106806050302E+000f);
  q = __internal_fmad (q, a, + 2.6094298761636442E-001f);
  q = __internal_fmad (q, a, - 3.9951461024063317E-006f);
  p = __fdividef(p, q);
  return p;
#line 4867 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float erfcf(float a)
{












#line 4884 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float p, q, h, l, t;
  if (a <= 0.813f) {
    p = 1.0f - erff(a);
  } else {
    t = __internal_fast_rcpf (a);
    p = __internal_erfcxf_kernel (t);
    h = __int_as_float (__float_as_int (a) & 0xfffff000);
    l = a - h;
    q = -h * h;
    q = __internal_expf_kernel (q, 0.0f);
    h = a + h;
    l = l * h;
    h = __expf (-l);
    q = 0.5f * h * q;
    p = p * t;
    p = __internal_fmad (p, t, t);
    p = p * q;
    if (a > 10.055f) {
      p = 0.0f;
    }
  }
  return p;
#line 4907 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float erfcxf(float a)
{




























#line 4940 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float x, t1, t2, t3, t4;
  x = fabsf(a); 
  if (x < 10.055f) {
    if (x <= 0.813f) {
      t1 =                          1.0561599769184452E-002f;
      t1 = __internal_fmad (t1, x, -5.4788623043555737E-002f);
      t1 = __internal_fmad (t1, x,  1.4788597280302476E-001f);
      t1 = __internal_fmad (t1, x, -2.9421924559249779E-001f);
      t1 = __internal_fmad (t1, x,  4.9866246647734674E-001f);
      t1 = __internal_fmad (t1, x, -7.5211812529808164E-001f);
      t1 = __internal_fmad (t1, x,  9.9999473193293242E-001f);
      t1 = __internal_fmad (t1, x, -1.1283791325606334E+000f);
      t1 = __internal_fmad (t1, x,  1.0f);
    } else {
      t2 = __internal_fast_rcpf (x);
      t3 = __internal_erfcxf_kernel (t2);
      t3 = __internal_fmad (t3, t2, 1.0f);
      t1 = t3 * t2 * 0.5f;
    }
  } else {
    
    t2 = __internal_fast_rcpf (x);
    t3 = t2 * t2;
    t1 =                          +6.5625f;
    t1 = __internal_fmad (t1, t3, -1.875f);
    t1 = __internal_fmad (t1, t3, +0.75f);
    t1 = __internal_fmad (t1, t3, -0.5f);
    t1 = __internal_fmad (t1, t3, +1.0f);
    t2 = t2 * 5.6418958354775628e-001f;
    t1 = t1 * t2;
  }
  if (a <= 0.0f) {
    
    t2 = __int_as_float(__float_as_int(x) & 0xfffff000);
    t3 = x - t2;
    t4 = t2 * t2;
    t4 = __internal_accurate_expf(t4);
    t2 = x + t2;
    t3 = t3 * t2;
    t2 = __expf(t3);
    t2 = __fmul_rn (t4, t2);
    t3 = t2 + t2;
    t1 = t3 - t1;
    if (t4 == __int_as_float(0x7f800000)) t1 = t4;
  }
  return t1;
#line 4987 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float erfcinvf(float a)
{
  float t = __fadd_rn (2.0f, -a);
  if ((a >= 0.0034f) && (a <= 1.9966f)) {
    t = __fmul_rn (t, a);
    t = - __log2f (t);
    t = __internal_erfinv_poly (t);


#line 4999 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    t = __fmul_rn (__fadd_rn (1.0f, -a), t);
#line 5001 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  } else {
    float p = a;
    if (a > 1.0f) p = t;   
    t = __log2f (p);
    t = rsqrtf (-t);  
    p =                        -6.3113223322530750E+1f;
    p = __internal_fmad (p, t,  1.2748468750377106E+2f);
    p = __internal_fmad (p, t, -1.1410568387522068E+2f);
    p = __internal_fmad (p, t,  6.0325788262642078E+1f);
    p = __internal_fmad (p, t, -2.1789891427552199E+1f);
    p = __internal_fmad (p, t,  6.4674089804347199E+0f);
    p = __internal_fmad (p, t, -1.8329473786019568E+0f);
    p = __internal_fmad (p, t, -3.0327774474001094E-2f);
    p = __internal_fmad (p, t,  8.3287745746760911E-1f);
    t = __fmul_rn (p, __internal_fast_rcpf (t));
    if (a > 1.0f) t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float normcdfinvf(float a)
{
  return -1.414213562f * erfcinvf (a + a);
}





static __inline__ __attribute__((always_inline)) float normcdff(float a)
{
  float ah, al, t1, t2, z;
  if (fabsf (a) > 14.5f) a = copysignf (14.5f, a);




#line 5039 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float t3, t4, t5, t6;
  t3 = __internal_fmad (a, 4097.0f, __internal_fmad (-a, 4097.0f, a));
  t4 = a - t3;
  t5 = -0.70703125f;
  t6 = -7.551908493e-5f;
  t1 = __fmul_rn (a, -0.707106781f);
  t2 = __internal_fmad (t3, t6, __internal_fmad (t3, t5, -t1));
  t2 = __internal_fmad (t4, t6, __internal_fmad (t5, t4, t2));
  t2 = __fadd_rn (__fmul_rn (a, -1.210161749e-08f), t2);
#line 5049 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  ah = __fadd_rn (t1, t2);
  z = erfcf (ah);
  if (a < -1.0f) {
    al = __fadd_rn (t1 - ah, t2);
    t1 = -2.0f * ah * z;      
    z = __internal_fmad (t1, al, z);
  }
  return 0.5f * z;
}

static __inline__ __attribute__((always_inline)) float lgammaf(float a)
{
  float t;
  float i;
  int quot;
  t = __internal_lgammaf_pos(fabsf(a));
  if (a >= 0.0f) return t;
  a = fabsf(a);
  i = floorf(a);                   
  if (a == i) return __int_as_float(0x7f800000); 
  if (a < 1e-19f) return -__internal_accurate_logf(a);
  i = rintf (2.0f * a);
  quot = (int)i;
  i = __internal_fmad (-i, 0.5f, a);
  i = i * 3.141592654f;
  i = __internal_sin_cos_kernel(i, quot);
  i = fabsf(i);
  t = 1.144729886f - __internal_accurate_logf(i * a) - t;
  return t;
}

static __inline__ __attribute__((always_inline)) float ldexpf(float a, int b)
{
  float fa = fabsf(a);

  if ((fa == 0.0f) || (fa == __int_as_float(0x7f800000)) || (b == 0)) {
    if (!(fa > 0.0f)) a = a + a;
  } else if (abs(b) < 126) {
    a = a * exp2f((float)b);
  } else if (abs(b) < 252) {
    int bhalf = b / 2;
    a = a * exp2f((float)bhalf) * exp2f((float)(b - bhalf));
  } else {
    int bquarter = b / 4;
    float t = exp2f((float)bquarter);
    a = a * t * t * t * exp2f((float)(b - 3 * bquarter));
  }
  return a;
}

static __inline__ __attribute__((always_inline)) float scalbnf(float a, int b)
{
  
  return ldexpf(a, b);
}

static __inline__ __attribute__((always_inline)) float scalblnf(float a, long int b)
{
  int t;
  if (b > 2147483647L) {
    t = 2147483647;
  } else if (b < (-2147483647 - 1)) {
    t = (-2147483647 - 1);
  } else {
    t = (int)b;
  }
  return scalbnf(a, t);
}

static __inline__ __attribute__((always_inline)) float frexpf(float a, int *b)
{
  float fa = fabsf(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 1.175494351e-38f) {
    a *= 16777216.0f;
    denorm = 24;
  } else {
    denorm = 0;
  }
  expo = ((__float_as_int(a) >> 23) & 0xff);
  if ((fa == 0.0f) || (expo == 0xff)) {
    expo = 0;
    a = a + a;
  } else {  
    expo = expo - denorm - 126;
    a = __int_as_float(((__float_as_int(a) & 0x807fffff) | 0x3f000000));
  }
  *b = expo;
  return a;
}

static __inline__ __attribute__((always_inline)) float modff(float a, float *b)
{
  float t;
  if (__finitef(a)) {
    t = truncf(a);
    *b = t;
    t = a - t;
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
  } else if (__isinff(a)) {
    *b = a;
    t = __int_as_float(__float_as_int(a) & 0x80000000);
  } else {
    *b = a + a; 
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float fmodf(float a, float b)
{
  float orig_a = a;
  float orig_b = b;
  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 5184 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
#line 5190 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5f;
    }
    return __int_as_float (__float_as_int(a) | 
                           (__float_as_int(orig_a) & 0x80000000));
  } else {
    if (!(a > 0.0f)) orig_a = orig_a + orig_a;
    return orig_a;
  }
}

static __inline__ __attribute__((always_inline)) float remainderf(float a, float b)
{

  float twoa = 0.0f;
  unsigned int quot0 = 0;  
  float orig_a = a;
  float orig_b = b;

  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {










#line 5231 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 5241 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        twoa = __internal_fmad (a, 2.0f, -scaled_b) - scaled_b;
        a = a - scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5f;
    }
  }
  






#line 5259 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a = 0.5f * __internal_fmad(b, -2.0f, twoa);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }
#line 5273 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  return a;
}

static __inline__ __attribute__((always_inline)) float remquof(float a, float b, int* quo)
{
  float twoa = 0.0f;
  unsigned int quot = 0;  
  unsigned int sign;
  float orig_a = a;
  float orig_b = b;

  
  sign = 0 - ((__float_as_int(a) ^ __float_as_int(b)) < 0);
  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    *quo = quot;
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    *quo = quot;
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 5310 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      if (__float_as_int(b) > 0x7e800000) {
          a *= 0.25f;
          b *= 0.25f;
      }
      a = __fdividef(a,b) + 0.5f;
      quot = (a < 8.0f) ? (int)a : 0;
      quot = quot ^ sign;
      quot = quot - sign;
      *quo = quot;
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 5329 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        twoa = (2.0f * a - scaled_b) - scaled_b;
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5f;
    }
  }
  







#line 5348 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a = 0.5f * (twoa - 2.0f * b);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }
#line 5364 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *quo = quot;
  return a;
}

static __inline__ __attribute__((always_inline)) float fmaf(float a, float b, float c)
{
  return __fmaf_rn(a, b, c);
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_powf(float a, float b)
{
  float2 loga, prod;
  float t;

  
  loga = __internal_log_ep(a);

  
  if (fabsf(b) > 1.0e34f) b *= 1.220703125e-4f;
  prod.y = b;
  prod.x = 0.0f;
  prod = __internal_dsmul (prod, loga);

  
  if (__float_as_int(prod.y) == 0x42b17218) {
    prod.y = __int_as_float(__float_as_int(prod.y) - 1);
    prod.x = prod.x + __int_as_float(0x37000000);
  }

  
  t = __internal_accurate_expf(prod.y);
  
  if (t != __int_as_float(0x7f800000)) {
    


    t = __internal_fmad (t, prod.x, t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float powif(float a, int b)
{
  unsigned int e = abs(b);
  float r = 1.0f;

  while (1) {
    if ((e & 1) != 0) {
      r = __fmul_rn (r, a);
    }
    e = e >> 1;
    if (e == 0) {
      r = (b < 0) ? 1.0f / r : r;
      return r;
    }
    a = __fmul_rn (a, a);
  }
}

static __inline__ __attribute__((always_inline)) double powi(double a, int b)
{
  unsigned int e = abs(b);
  double       r = 1.0;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0 / r : r;
    }
    a = a * a;
  }
}

static __inline__ __attribute__((always_inline)) float powf(float a, float b)
{

  return __powf(a, b);














































#line 5496 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}


static __inline__ __attribute__((always_inline)) float __internal_tgammaf_kernel(float a)
{
  float t;
  t =                        -1.05767296987211380E-003f;
  t = __internal_fmad (t, a,  7.09279059435508670E-003f);
  t = __internal_fmad (t, a, -9.65347121958557050E-003f);
  t = __internal_fmad (t, a, -4.21736613253687960E-002f);
  t = __internal_fmad (t, a,  1.66542401247154280E-001f);
  t = __internal_fmad (t, a, -4.20043267827838460E-002f);
  t = __internal_fmad (t, a, -6.55878234051332940E-001f);
  t = __internal_fmad (t, a,  5.77215696929794240E-001f);
  t = __internal_fmad (t, a,  1.00000000000000000E+000f);
  return t;
}





static __inline__ __attribute__((always_inline)) float tgammaf(float a)
{
  float s, xx, x=a;
  if (x >= 0.0f) {
    if (x > 36.0f) x = 36.0f; 
    s = 1.0f;
    xx = x;
    if (x > 34.03f) { 
      xx -= 1.0f;
    }
    while (xx > 1.5f) {
      xx = xx - 1.0f;
      s = s * xx;
    }
    if (x >= 0.5f) {
      xx = xx - 1.0f;
    }
    xx = __internal_tgammaf_kernel(xx);
    if (x < 0.5f) {
      xx = xx * x;
    }
    s = __fdividef(s, xx);
    if (x > 34.03f) {
      
      xx = x - 1.0f;
      s = s * xx;
    }
    return s;
  } else {
    if (x == floorf(x)) {  
      x = rsqrtf (__int_as_float (0xffc00000));  
    } 
    if (x < -41.1f) x = -41.1f; 
    xx = x;
    if (x < -34.03f) {           
      xx += 6.0f;
    } 
    s = xx;
    while (xx < -0.5f) {
      xx = xx + 1.0f;
      s = s * xx;
    }
    xx = __internal_tgammaf_kernel(xx);
    s = s * xx;
    s = 1.0f / s;
    if (x < -34.03f) {
      xx = x;
      xx *= (x + 1.0f);
      xx *= (x + 2.0f);
      xx *= (x + 3.0f);
      xx *= (x + 4.0f);
      xx *= (x + 5.0f);
      xx = 1.0f / xx;
      s = s * xx;
      if ((a < -42.0f) && !(((int)a)&1)) {
        s = __int_as_float(0x80000000);
      }
    }    
    return s;
  }
}

static __inline__ __attribute__((always_inline)) float roundf(float a)
{
  float fa = fabsf(a);
  float u = __int_as_float (0x3f000000 | (__float_as_int(a) & 0x80000000));
  u = truncf (a + u);
  if (fa > 8388608.0f) u = a;
  if (fa < 0.5f) u = truncf (a);
  return u;
}

static __inline__ __attribute__((always_inline)) long long int __internal_llroundf_kernel(float a)
{
  unsigned long long int res, t = 0ULL;
  int shift;
  unsigned int ia = __float_as_int(a);
  
  if ((ia << 1) > 0xff000000) return 0x8000000000000000LL;
  if ((int)ia >= 0x5f000000) return 0x7fffffffffffffffLL;
  if (ia >= 0xdf000000) return 0x8000000000000000LL;
  shift = 189 - ((ia >> 23) & 0xff);
  res = ((long long int)(((ia << 8) | 0x80000000) >> 1)) << 32;
  if (shift >= 64) {
    t = res;
    res = 0;
  } else if (shift) {
    t = res << (64 - shift);
    res = res >> shift;
  }
  if (t >= 0x8000000000000000ULL) {
    res++;
  }
  if ((int)ia < 0) res = (unsigned long long int)(-(long long int)res);
  return (long long int)res;
}

static __inline__ __attribute__((always_inline)) long long int llroundf(float a)
{
  return __internal_llroundf_kernel(a);
}

static __inline__ __attribute__((always_inline)) long int lroundf(float a)
{


#line 5625 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  return (long int)(roundf(a));
#line 5627 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float fdimf(float a, float b)
{
  float t;
  t = a - b;    
  if (a <= b) {
    t = 0.0f;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) int ilogbf(float a)
{
  unsigned int i;
  int expo;
  float fa;
  fa = fabsf(a);
  i = __float_as_int(fa);
  if (i < 0x00800000) {
    
    expo = -118 - __clz(i);
    if (i == 0x00000000) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  } else {
    expo = ((int)((i >> 23) & 0xff)) - 127;
    if ((i == 0x7f800000)) {
      expo = ((int)((unsigned int)-1 >> 1));
    }
    if ((i > 0x7f800000)) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  } 
  return expo;
}

static __inline__ __attribute__((always_inline)) float logbf(float a)
{
  unsigned int i;
  int expo;
  float fa, res;
  fa = fabsf(a);
  i = __float_as_int(fa);
  if (i < 0x00800000) {
    
    expo = -118 - __clz(i);
    res = (float)expo;
    if (a == 0.0f) {
      res = -__int_as_float(0x7f800000);
    }
  } else {
    expo = ((int)((i >> 23) & 0xff)) - 127;
    res = (float)expo;
    if ((i >= 0x7f800000)) {  
      
      res = a * a;
    }
  } 
  return res;
}







#line 5696 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
#line 5697 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 7921 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

#line 7923 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"





#line 7929 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"



#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx1.h"






















































static __inline__ __attribute__((always_inline)) double fabs(double a)
{
  return (double)fabsf((float)a);
}

static __inline__ __attribute__((always_inline)) double fmax(double a, double b)
{
  return (double)fmaxf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double fmin(double a, double b)
{
  return (double)fminf((float)a, (float)b);
}











































#line 113 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx1.h"

static __inline__ __attribute__((always_inline)) int __finite(double a)
{
  return __finitef((float)a);
}

static __inline__ __attribute__((always_inline)) int __finitel(double a)
{
  return __finitef((float)a);
}

static __inline__ __attribute__((always_inline)) int __signbit(double a)
{
  return __signbitf((float)a);
}

static __inline__ __attribute__((always_inline)) int __signbitl(double a)
{
  return __signbitf((float)a);
}

static __inline__ __attribute__((always_inline)) int __isinf(double a)
{
  return __isinff((float)a);
}

static __inline__ __attribute__((always_inline)) int __isinfl(double a)
{
  return __isinff((float)a);
}

static __inline__ __attribute__((always_inline)) int __isnan(double a)
{
  return __isnanf((float)a);
}

static __inline__ __attribute__((always_inline)) int __isnanl(double a)
{
  return __isnanf((float)a);
}

#line 155 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx1.h"

static __inline__ __attribute__((always_inline)) double sqrt(double a)
{
  return (double)sqrtf((float)a);
}

static __inline__ __attribute__((always_inline)) double rsqrt(double a)
{
  return (double)rsqrtf((float)a);
}

static __inline__ __attribute__((always_inline)) double ceil(double a)
{
  return (double)ceilf((float)a);
}

static __inline__ __attribute__((always_inline)) double trunc(double a)
{
  return (double)truncf((float)a);
}

static __inline__ __attribute__((always_inline)) double floor(double a)
{
  return (double)floorf((float)a);
}

static __inline__ __attribute__((always_inline)) double copysign(double a, double b)
{
  return (double)copysignf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double sin(double a)
{
  return (double)sinf((float)a);
}

static __inline__ __attribute__((always_inline)) double sinpi(double a)
{
  return (double)sinpif((float)a);
}

static __inline__ __attribute__((always_inline)) double cos(double a)
{
  return (double)cosf((float)a);
}

static __inline__ __attribute__((always_inline)) double cospi(double a)
{
  return (double)cospif((float)a);
}

static __inline__ __attribute__((always_inline)) void sincos(double a, double *sptr, double *cptr)
{
  float fs, fc;

  sincosf((float)a, &fs, &fc);

  *sptr = (double)fs;
  *cptr = (double)fc;
}

static __inline__ __attribute__((always_inline)) void sincospi(double a, double *sptr, double *cptr)
{
  float fs, fc;

  sincospif((float)a, &fs, &fc);

  *sptr = (double)fs;
  *cptr = (double)fc;
}

static __inline__ __attribute__((always_inline)) double tan(double a)
{
  return (double)tanf((float)a);
}

static __inline__ __attribute__((always_inline)) double exp(double a)
{
  return (double)expf((float)a);
}

static __inline__ __attribute__((always_inline)) double exp2(double a)
{
  return (double)exp2f((float)a);
}

static __inline__ __attribute__((always_inline)) double exp10(double a)
{
  return (double)exp10f((float)a);
}

static __inline__ __attribute__((always_inline)) double expm1(double a)
{
  return (double)expm1f((float)a);
}

static __inline__ __attribute__((always_inline)) double cosh(double a)
{
  return (double)coshf((float)a);
}

static __inline__ __attribute__((always_inline)) double sinh(double a)
{
  return (double)sinhf((float)a);
}

static __inline__ __attribute__((always_inline)) double tanh(double a)
{
  return (double)tanhf((float)a);
}

static __inline__ __attribute__((always_inline)) double asin(double a)
{
  return (double)asinf((float)a);
}

static __inline__ __attribute__((always_inline)) double acos(double a)
{
  return (double)acosf((float)a);
}

static __inline__ __attribute__((always_inline)) double atan(double a)
{
  return (double)atanf((float)a);
}

static __inline__ __attribute__((always_inline)) double atan2(double a, double b)
{
  return (double)atan2f((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double log(double a)
{
  return (double)logf((float)a);
}

static __inline__ __attribute__((always_inline)) double log2(double a)
{
  return (double)log2f((float)a);
}

static __inline__ __attribute__((always_inline)) double log10(double a)
{
  return (double)log10f((float)a);
}

static __inline__ __attribute__((always_inline)) double log1p(double a)
{
  return (double)log1pf((float)a);
}

static __inline__ __attribute__((always_inline)) double acosh(double a)
{
  return (double)acoshf((float)a);
}

static __inline__ __attribute__((always_inline)) double asinh(double a)
{
  return (double)asinhf((float)a);
}

static __inline__ __attribute__((always_inline)) double atanh(double a)
{
  return (double)atanhf((float)a);
}

static __inline__ __attribute__((always_inline)) double hypot(double a, double b)
{
  return (double)hypotf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double cbrt(double a)
{
  return (double)cbrtf((float)a);
}

static __inline__ __attribute__((always_inline)) double rcbrt(double a)
{
  return (double)rcbrtf((float)a);
}

static __inline__ __attribute__((always_inline)) double j0(double a)
{
  return (double)j0f((float)a);
}

static __inline__ __attribute__((always_inline)) double j1(double a)
{
  return (double)j1f((float)a);
}

static __inline__ __attribute__((always_inline)) double jn(int n, double a)
{
  return (double)jnf(n, (float)a);
}

static __inline__ __attribute__((always_inline)) double y0(double a)
{
  return (double)y0f((float)a);
}

static __inline__ __attribute__((always_inline)) double y1(double a)
{
  return (double)y1f((float)a);
}

static __inline__ __attribute__((always_inline)) double yn(int n, double a)
{
  return (double)ynf(n, (float)a);
}

static __inline__ __attribute__((always_inline)) double erf(double a)
{
  return (double)erff((float)a);
}

static __inline__ __attribute__((always_inline)) double erfinv(double a)
{
  return (double)erfinvf((float)a);
}

static __inline__ __attribute__((always_inline)) double erfc(double a)
{
  return (double)erfcf((float)a);
}

static __inline__ __attribute__((always_inline)) double erfcinv(double a)
{
  return (double)erfcinvf((float)a);
}

static __inline__ __attribute__((always_inline)) double normcdfinv(double a)
{
  return (double)normcdfinvf((float)a);
}

static __inline__ __attribute__((always_inline)) double normcdf(double a)
{
  return (double)normcdff((float)a);
}

static __inline__ __attribute__((always_inline)) double erfcx(double a)
{
  return (double)erfcxf((float)a);
}

static __inline__ __attribute__((always_inline)) double lgamma(double a)
{
  return (double)lgammaf((float)a);
}

static __inline__ __attribute__((always_inline)) double tgamma(double a)
{
  return (double)tgammaf((float)a);
}

static __inline__ __attribute__((always_inline)) double ldexp(double a, int b)
{
  return (double)ldexpf((float)a, b);
}

static __inline__ __attribute__((always_inline)) double scalbn(double a, int b)
{
  return (double)scalbnf((float)a, b);
}

static __inline__ __attribute__((always_inline)) double scalbln(double a, long b)
{
  return (double)scalblnf((float)a, b);
}

static __inline__ __attribute__((always_inline)) double frexp(double a, int *b)
{
  return (double)frexpf((float)a, b);
}

static __inline__ __attribute__((always_inline)) double modf(double a, double *b)
{
  float fb;
  float fa = modff((float)a, &fb);

  *b = (double)fb;

  return (double)fa;  
}

static __inline__ __attribute__((always_inline)) double fmod(double a, double b)
{
  return (double)fmodf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double remainder(double a, double b)
{
  return (double)remainderf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double remquo(double a, double b, int *c)
{
  return (double)remquof((float)a, (float)b, c);
}

static __inline__ __attribute__((always_inline)) double nextafter(double a, double b)
{
  return (double)nextafterf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double nan(const char *tagp)
{
  return (double)nanf(tagp);
}

static __inline__ __attribute__((always_inline)) double pow(double a, double b)
{
  return (double)powf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) double round(double a)
{
  return (double)roundf((float)a);
}

static __inline__ __attribute__((always_inline)) long lround(double a)
{
  return lroundf((float)a);
}

static __inline__ __attribute__((always_inline)) long long llround(double a)
{
  return llroundf((float)a);
}

static __inline__ __attribute__((always_inline)) double rint(double a)
{
  return (double)rintf((float)a);
}

static __inline__ __attribute__((always_inline)) long lrint(double a)
{
  return lrintf((float)a);
}

static __inline__ __attribute__((always_inline)) long long llrint(double a)
{
  return llrintf((float)a);
}

static __inline__ __attribute__((always_inline)) double nearbyint(double a)
{
  return (double)nearbyintf((float)a);
}

static __inline__ __attribute__((always_inline)) double fdim(double a, double b)
{
  return (double)fdimf((float)a, (float)b);
}

static __inline__ __attribute__((always_inline)) int ilogb(double a)
{
  return ilogbf((float)a);
}

static __inline__ __attribute__((always_inline)) double logb(double a)
{
  return (double)logbf((float)a);
}

static __inline__ __attribute__((always_inline)) double fma(double a, double b, double c)
{
  return (double)fmaf((float)a, (float)b, (float)c);
}

#line 527 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx1.h"

#line 529 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx1.h"
#line 7933 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

#line 7935 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"





#line 7941 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

#line 7943 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

#line 160 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\common_functions.h"

#line 162 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\common_functions.h"

#line 58 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 60 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 62 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 64 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 66 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 68 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 70 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 72 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 74 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"

#line 76 "c:\\users\\martin\\dropbox\\gu\\cuda\\generatehologramcuda\\c\\source\\GenerateHologramCUDA.h"
#line 26 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static unsigned char _Z8phase2ucf(
#line 26 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float phase2pi){
#line 26 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 27 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 27 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T20;
#line 28 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)((__T20 = ((float)(fdividef(((double)((phase2pi + (3.141592741F)) * (256.0F))), (6.2831854820251465))))) , (floorf(__T20)))))));
#line 29 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 29 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 30 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static int _Z11phase2int32f(
#line 30 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float phase2pi){
#line 30 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 31 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 31 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T21;
#line 32 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (int)(__float2int_rz(((double)((float)((__T21 = ((float)(fdividef(((double)((phase2pi + (3.141592741F)) * (256.0F))), (6.2831854820251465))))) , (floorf(__T21)))))));
#line 33 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 33 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static float _Z25ApplyAberrationCorrectionff(
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float pSpot, 
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float correction){
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 35 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 35 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T22;
#line 36 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
pSpot = (pSpot + correction);
#line 37 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return pSpot - ((6.283185482F) * ((__T22 = ((float)(fdividef(((double)(pSpot + (3.141592741F))), (6.2831854820251465))))) , (floorf(__T22))));
#line 38 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 38 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static int _Z8fftshiftii(
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int idx, 
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 40 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 42 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509392_8_non_const_N;
#line 43 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509393_6_non_const_half_w;
#line 44 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509394_6_non_const_logN;
#line 46 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509396_6_non_const_X;
#line 47 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509397_6_non_const_Y;
#line 42 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509392_8_non_const_N = ((float)data_w);
#line 43 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509393_6_non_const_half_w = (data_w >> 1);
#line 44 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509394_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_509392_8_non_const_N)))))));
#line 46 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509396_6_non_const_X = (idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_509392_8_non_const_N - (1.0F))))))));
#line 47 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509397_6_non_const_Y = ((idx - __cuda_local_var_509396_6_non_const_X) >> __cuda_local_var_509394_6_non_const_logN);
#line 51 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509396_6_non_const_X < __cuda_local_var_509393_6_non_const_half_w)
#line 53 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 54 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509397_6_non_const_Y < __cuda_local_var_509393_6_non_const_half_w)
#line 55 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 56 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx + (data_w * __cuda_local_var_509393_6_non_const_half_w)) + __cuda_local_var_509393_6_non_const_half_w;
#line 57 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 59 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 59 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 60 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx - (data_w * __cuda_local_var_509393_6_non_const_half_w)) + __cuda_local_var_509393_6_non_const_half_w;
#line 61 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 62 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 64 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 64 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 65 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509397_6_non_const_Y < __cuda_local_var_509393_6_non_const_half_w)
#line 66 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 67 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx + (data_w * __cuda_local_var_509393_6_non_const_half_w)) - __cuda_local_var_509393_6_non_const_half_w;
#line 68 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 70 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 70 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 71 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx - (data_w * __cuda_local_var_509393_6_non_const_half_w)) - __cuda_local_var_509393_6_non_const_half_w;
#line 72 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 73 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 75 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 75 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static unsigned char _Z11applyPolLUTfffPfi(
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float phase2pi, 
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float X, 
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float Y, 
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *s_c, 
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_PolCoeff){
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 217 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 218 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
switch (N_PolCoeff)
#line 218 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
case 120:
#line 220 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((s_c[0]) + ((s_c[1]) * X)) + ((s_c[2]) * Y)) + ((s_c[3]) * phase2pi)) + (((s_c[4]) * X) * X)) + (((s_c[5]) * X) * Y)) + (((s_c[6]) * X) * phase2pi)) + (((s_c[7]) * Y) * Y)) + (((s_c[8]) * Y) * phase2pi)) + (((s_c[9]) * phase2pi) * phase2pi)) + ((((s_c[10]) * X) * X) * X)) + ((((s_c[11]) * X) * X) * Y)) + ((((s_c[12]) * X) * X) * phase2pi)) + ((((s_c[13]) * X) * Y) * Y)) + ((((s_c[14]) * X) * Y) * phase2pi)) + ((((s_c[15]) * X) * phase2pi) * phase2pi)) + ((((s_c[16]) * Y) * Y) * Y)) + ((((s_c[17]) * Y) * Y) * phase2pi)) + ((((s_c[18]) * Y) * phase2pi) * phase2pi)) + ((((s_c[19]) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[20]) * X) * X) * X) * X)) + (((((s_c[21]) * X) * X) * X) * Y)) + (((((s_c[22]) * X) * X) * X) * phase2pi)) + (((((s_c[23]) * X) * X) * Y) * Y)) + (((((s_c[24]) * X) * X) * Y) * phase2pi)) + (((((s_c[25]) * X) * X) * phase2pi) * phase2pi)) + (((((s_c[26]) * X) * Y) * Y) * Y)) + (((((s_c[27]) * X) * Y) * Y) * phase2pi)) + (((((s_c[28]) * X) * Y) * phase2pi) * phase2pi)) + (((((s_c[29]) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[30]) * Y) * Y) * Y) * Y)) + (((((s_c[31]) * Y) * Y) * Y) * phase2pi)) + (((((s_c[32]) * Y) * Y) * phase2pi) * phase2pi)) + (((((s_c[33]) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[34]) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[35]) * X) * X) * X) * X) * X)) + ((((((s_c[36]) * X) * X) * X) * X) * Y)) + ((((((s_c[37]) * X) * X) * X) * X) * phase2pi)) + ((((((s_c[38]) * X) * X) * X) * Y) * Y)) + ((((((s_c[39]) * X) * X) * X) * Y) * phase2pi)) + ((((((s_c[40]) * X) * X) * X) * phase2pi) * phase2pi)) + ((((((s_c[41]) * X) * X) * Y) * Y) * Y)) + ((((((s_c[42]) * X) * X) * Y) * Y) * phase2pi)) + ((((((s_c[43]) * X) * X) * Y) * phase2pi) * phase2pi)) + ((((((s_c[44]) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[45]) * X) * Y) * Y) * Y) * Y)) + ((((((s_c[46]) * X) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[47]) * X) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[48]) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[49]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[50]) * Y) * Y) * Y) * Y) * Y)) + ((((((s_c[51]) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[52]) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[53]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[54]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[55]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[56]) * X) * X) * X) * X) * X) * X)) + (((((((s_c[57]) * X) * X) * X) * X) * X) * Y)) + (((((((s_c[58]) * X) * X) * X) * X) * X) * phase2pi)) + (((((((s_c[59]) * X) * X) * X) * X) * Y) * Y)) + (((((((s_c[60]) * X) * X) * X) * X) * Y) * phase2pi)) + (((((((s_c[61]) * X) * X) * X) * X) * phase2pi) * phase2pi)) + (((((((s_c[62]) * X) * X) * X) * Y) * Y) * Y)) + (((((((s_c[63]) * X) * X) * X) * Y) * Y) * phase2pi)) + (((((((s_c[64]) * X) * X) * X) * Y) * phase2pi) * phase2pi)) + (((((((s_c[65]) * X) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[66]) * X) * X) * Y) * Y) * Y) * Y)) + (((((((s_c[67]) * X) * X) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[68]) * X) * X) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[69]) * X) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[70]) * X) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[71]) * X) * Y) * Y) * Y) * Y) * Y)) + (((((((s_c[72]) * X) * Y) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[73]) * X) * Y) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[74]) * X) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[75]) * X) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[76]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[77]) * Y) * Y) * Y) * Y) * Y) * Y)) + (((((((s_c[78]) * Y) * Y) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[79]) * Y) * Y) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[80]) * Y) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[81]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[82]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[83]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[84]) * X) * X) * X) * X) * X) * X) * X)) + ((((((((s_c[85]) * X) * X) * X) * X) * X) * X) * Y)) + ((((((((s_c[86]) * X) * X) * X) * X) * X) * X) * phase2pi)) + ((((((((s_c[87]) * X) * X) * X) * X) * X) * Y) * Y)) + ((((((((s_c[88]) * X) * X) * X) * X) * X) * Y) * phase2pi)) + ((((((((s_c[89]) * X) * X) * X) * X) * X) * phase2pi) * phase2pi)) + ((((((((s_c[90]) * X) * X) * X) * X) * Y) * Y) * Y)) + ((((((((s_c[91]) * X) * X) * X) * X) * Y) * Y) * phase2pi)) + ((((((((s_c[92]) * X) * X) * X) * X) * Y) * phase2pi) * phase2pi)) + ((((((((s_c[93]) * X) * X) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[94]) * X) * X) * X) * Y) * Y) * Y) * Y)) + ((((((((s_c[95]) * X) * X) * X) * Y) * Y) * Y) * phase2pi)) + ((((((((s_c[96]) * X) * X) * X) * Y) * Y) * phase2pi) * phase2pi)) + ((((((((s_c[97]) * X) * X) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[98]) * X) * X) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[99]) * X) * X) * Y) * Y) * Y) * Y) * Y)) + ((((((((s_c[100]) * X) * X) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((((s_c[101]) * X) * X) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((((s_c[102]) * X) * X) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[103]) * X) * X) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[104]) * X) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[105]) * X) * Y) * Y) * Y) * Y) * Y) * Y)) + ((((((((s_c[106]) * X) * Y) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((((s_c[107]) * X) * Y) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((((s_c[108]) * X) * Y) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[109]) * X) * Y) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[110]) * X) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[111]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[112]) * Y) * Y) * Y) * Y) * Y) * Y) * Y)) + ((((((((s_c[113]) * Y) * Y) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((((s_c[114]) * Y) * Y) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((((s_c[115]) * Y) * Y) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[116]) * Y) * Y) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[117]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[118]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((((s_c[119]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi))))));
#line 221 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
case 84:
#line 222 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((s_c[0]) + ((s_c[1]) * X)) + ((s_c[2]) * Y)) + ((s_c[3]) * phase2pi)) + (((s_c[4]) * X) * X)) + (((s_c[5]) * X) * Y)) + (((s_c[6]) * X) * phase2pi)) + (((s_c[7]) * Y) * Y)) + (((s_c[8]) * Y) * phase2pi)) + (((s_c[9]) * phase2pi) * phase2pi)) + ((((s_c[10]) * X) * X) * X)) + ((((s_c[11]) * X) * X) * Y)) + ((((s_c[12]) * X) * X) * phase2pi)) + ((((s_c[13]) * X) * Y) * Y)) + ((((s_c[14]) * X) * Y) * phase2pi)) + ((((s_c[15]) * X) * phase2pi) * phase2pi)) + ((((s_c[16]) * Y) * Y) * Y)) + ((((s_c[17]) * Y) * Y) * phase2pi)) + ((((s_c[18]) * Y) * phase2pi) * phase2pi)) + ((((s_c[19]) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[20]) * X) * X) * X) * X)) + (((((s_c[21]) * X) * X) * X) * Y)) + (((((s_c[22]) * X) * X) * X) * phase2pi)) + (((((s_c[23]) * X) * X) * Y) * Y)) + (((((s_c[24]) * X) * X) * Y) * phase2pi)) + (((((s_c[25]) * X) * X) * phase2pi) * phase2pi)) + (((((s_c[26]) * X) * Y) * Y) * Y)) + (((((s_c[27]) * X) * Y) * Y) * phase2pi)) + (((((s_c[28]) * X) * Y) * phase2pi) * phase2pi)) + (((((s_c[29]) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[30]) * Y) * Y) * Y) * Y)) + (((((s_c[31]) * Y) * Y) * Y) * phase2pi)) + (((((s_c[32]) * Y) * Y) * phase2pi) * phase2pi)) + (((((s_c[33]) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[34]) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[35]) * X) * X) * X) * X) * X)) + ((((((s_c[36]) * X) * X) * X) * X) * Y)) + ((((((s_c[37]) * X) * X) * X) * X) * phase2pi)) + ((((((s_c[38]) * X) * X) * X) * Y) * Y)) + ((((((s_c[39]) * X) * X) * X) * Y) * phase2pi)) + ((((((s_c[40]) * X) * X) * X) * phase2pi) * phase2pi)) + ((((((s_c[41]) * X) * X) * Y) * Y) * Y)) + ((((((s_c[42]) * X) * X) * Y) * Y) * phase2pi)) + ((((((s_c[43]) * X) * X) * Y) * phase2pi) * phase2pi)) + ((((((s_c[44]) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[45]) * X) * Y) * Y) * Y) * Y)) + ((((((s_c[46]) * X) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[47]) * X) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[48]) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[49]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[50]) * Y) * Y) * Y) * Y) * Y)) + ((((((s_c[51]) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[52]) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[53]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[54]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[55]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[56]) * X) * X) * X) * X) * X) * X)) + (((((((s_c[57]) * X) * X) * X) * X) * X) * Y)) + (((((((s_c[58]) * X) * X) * X) * X) * X) * phase2pi)) + (((((((s_c[59]) * X) * X) * X) * X) * Y) * Y)) + (((((((s_c[60]) * X) * X) * X) * X) * Y) * phase2pi)) + (((((((s_c[61]) * X) * X) * X) * X) * phase2pi) * phase2pi)) + (((((((s_c[62]) * X) * X) * X) * Y) * Y) * Y)) + (((((((s_c[63]) * X) * X) * X) * Y) * Y) * phase2pi)) + (((((((s_c[64]) * X) * X) * X) * Y) * phase2pi) * phase2pi)) + (((((((s_c[65]) * X) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[66]) * X) * X) * Y) * Y) * Y) * Y)) + (((((((s_c[67]) * X) * X) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[68]) * X) * X) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[69]) * X) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[70]) * X) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[71]) * X) * Y) * Y) * Y) * Y) * Y)) + (((((((s_c[72]) * X) * Y) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[73]) * X) * Y) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[74]) * X) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[75]) * X) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[76]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[77]) * Y) * Y) * Y) * Y) * Y) * Y)) + (((((((s_c[78]) * Y) * Y) * Y) * Y) * Y) * phase2pi)) + (((((((s_c[79]) * Y) * Y) * Y) * Y) * phase2pi) * phase2pi)) + (((((((s_c[80]) * Y) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[81]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[82]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + (((((((s_c[83]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi))))));
#line 223 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
case 56:
#line 224 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)((((((((((((((((((((((((((((((((((((((((((((((((((((((((s_c[0]) + ((s_c[1]) * X)) + ((s_c[2]) * Y)) + ((s_c[3]) * phase2pi)) + (((s_c[4]) * X) * X)) + (((s_c[5]) * X) * Y)) + (((s_c[6]) * X) * phase2pi)) + (((s_c[7]) * Y) * Y)) + (((s_c[8]) * Y) * phase2pi)) + (((s_c[9]) * phase2pi) * phase2pi)) + ((((s_c[10]) * X) * X) * X)) + ((((s_c[11]) * X) * X) * Y)) + ((((s_c[12]) * X) * X) * phase2pi)) + ((((s_c[13]) * X) * Y) * Y)) + ((((s_c[14]) * X) * Y) * phase2pi)) + ((((s_c[15]) * X) * phase2pi) * phase2pi)) + ((((s_c[16]) * Y) * Y) * Y)) + ((((s_c[17]) * Y) * Y) * phase2pi)) + ((((s_c[18]) * Y) * phase2pi) * phase2pi)) + ((((s_c[19]) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[20]) * X) * X) * X) * X)) + (((((s_c[21]) * X) * X) * X) * Y)) + (((((s_c[22]) * X) * X) * X) * phase2pi)) + (((((s_c[23]) * X) * X) * Y) * Y)) + (((((s_c[24]) * X) * X) * Y) * phase2pi)) + (((((s_c[25]) * X) * X) * phase2pi) * phase2pi)) + (((((s_c[26]) * X) * Y) * Y) * Y)) + (((((s_c[27]) * X) * Y) * Y) * phase2pi)) + (((((s_c[28]) * X) * Y) * phase2pi) * phase2pi)) + (((((s_c[29]) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[30]) * Y) * Y) * Y) * Y)) + (((((s_c[31]) * Y) * Y) * Y) * phase2pi)) + (((((s_c[32]) * Y) * Y) * phase2pi) * phase2pi)) + (((((s_c[33]) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[34]) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[35]) * X) * X) * X) * X) * X)) + ((((((s_c[36]) * X) * X) * X) * X) * Y)) + ((((((s_c[37]) * X) * X) * X) * X) * phase2pi)) + ((((((s_c[38]) * X) * X) * X) * Y) * Y)) + ((((((s_c[39]) * X) * X) * X) * Y) * phase2pi)) + ((((((s_c[40]) * X) * X) * X) * phase2pi) * phase2pi)) + ((((((s_c[41]) * X) * X) * Y) * Y) * Y)) + ((((((s_c[42]) * X) * X) * Y) * Y) * phase2pi)) + ((((((s_c[43]) * X) * X) * Y) * phase2pi) * phase2pi)) + ((((((s_c[44]) * X) * X) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[45]) * X) * Y) * Y) * Y) * Y)) + ((((((s_c[46]) * X) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[47]) * X) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[48]) * X) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[49]) * X) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[50]) * Y) * Y) * Y) * Y) * Y)) + ((((((s_c[51]) * Y) * Y) * Y) * Y) * phase2pi)) + ((((((s_c[52]) * Y) * Y) * Y) * phase2pi) * phase2pi)) + ((((((s_c[53]) * Y) * Y) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[54]) * Y) * phase2pi) * phase2pi) * phase2pi) * phase2pi)) + ((((((s_c[55]) * phase2pi) * phase2pi) * phase2pi) * phase2pi) * phase2pi))))));
#line 225 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
case 35:
#line 226 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)(((((((((((((((((((((((((((((((((((s_c[0]) + ((s_c[1]) * X)) + ((s_c[2]) * Y)) + ((s_c[3]) * phase2pi)) + (((s_c[4]) * X) * X)) + (((s_c[5]) * X) * Y)) + (((s_c[6]) * X) * phase2pi)) + (((s_c[7]) * Y) * Y)) + (((s_c[8]) * Y) * phase2pi)) + (((s_c[9]) * phase2pi) * phase2pi)) + ((((s_c[10]) * X) * X) * X)) + ((((s_c[11]) * X) * X) * Y)) + ((((s_c[12]) * X) * X) * phase2pi)) + ((((s_c[13]) * X) * Y) * Y)) + ((((s_c[14]) * X) * Y) * phase2pi)) + ((((s_c[15]) * X) * phase2pi) * phase2pi)) + ((((s_c[16]) * Y) * Y) * Y)) + ((((s_c[17]) * Y) * Y) * phase2pi)) + ((((s_c[18]) * Y) * phase2pi) * phase2pi)) + ((((s_c[19]) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[20]) * X) * X) * X) * X)) + (((((s_c[21]) * X) * X) * X) * Y)) + (((((s_c[22]) * X) * X) * X) * phase2pi)) + (((((s_c[23]) * X) * X) * Y) * Y)) + (((((s_c[24]) * X) * X) * Y) * phase2pi)) + (((((s_c[25]) * X) * X) * phase2pi) * phase2pi)) + (((((s_c[26]) * X) * Y) * Y) * Y)) + (((((s_c[27]) * X) * Y) * Y) * phase2pi)) + (((((s_c[28]) * X) * Y) * phase2pi) * phase2pi)) + (((((s_c[29]) * X) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[30]) * Y) * Y) * Y) * Y)) + (((((s_c[31]) * Y) * Y) * Y) * phase2pi)) + (((((s_c[32]) * Y) * Y) * phase2pi) * phase2pi)) + (((((s_c[33]) * Y) * phase2pi) * phase2pi) * phase2pi)) + (((((s_c[34]) * phase2pi) * phase2pi) * phase2pi) * phase2pi))))));
#line 227 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
case 20:
#line 228 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (unsigned char)(__float2uint_rz(((double)((float)((((((((((((((((((((s_c[0]) + ((s_c[1]) * X)) + ((s_c[2]) * Y)) + ((s_c[3]) * phase2pi)) + (((s_c[4]) * X) * X)) + (((s_c[5]) * X) * Y)) + (((s_c[6]) * X) * phase2pi)) + (((s_c[7]) * Y) * Y)) + (((s_c[8]) * Y) * phase2pi)) + (((s_c[9]) * phase2pi) * phase2pi)) + ((((s_c[10]) * X) * X) * X)) + ((((s_c[11]) * X) * X) * Y)) + ((((s_c[12]) * X) * X) * phase2pi)) + ((((s_c[13]) * X) * Y) * Y)) + ((((s_c[14]) * X) * Y) * phase2pi)) + ((((s_c[15]) * X) * phase2pi) * phase2pi)) + ((((s_c[16]) * Y) * Y) * Y)) + ((((s_c[17]) * Y) * Y) * phase2pi)) + ((((s_c[18]) * Y) * phase2pi) * phase2pi)) + ((((s_c[19]) * phase2pi) * phase2pi) * phase2pi))))));
#line 229 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
default:
#line 230 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return ((unsigned char)0U);
#line 231 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 232 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 232 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static void _Z11warpReduceCPVfS0_i(
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
volatile float *s_Vre, 
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
volatile float *s_Vim, 
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int tid){
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 257 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 258 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 32)]);
#line 259 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 32)]);
#line 261 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 16)]);
#line 262 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 16)]);
#line 264 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 8)]);
#line 265 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 8)]);
#line 267 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 4)]);
#line 268 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 4)]);
#line 270 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 2)]);
#line 271 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 2)]);
#line 273 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vre[tid]) += (s_Vre[(tid + 1)]);
#line 274 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(s_Vim[tid]) += (s_Vim[(tid + 1)]);
#line 275 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 275 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i(
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_a, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_SLMuc, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_LUT, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool ApplyLUT_b, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseAberrationCorr_b, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *d_AberrationCorr_f, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseLUTPol_b, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *d_LUTPolCoeff_f, 
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_PolCoeff){
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509632_6_non_const_idx;
#line 283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509633_6_non_const_tid;
#line 285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509635_31_non_const_s_x[512];
#line 286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509636_31_non_const_s_y[512];
#line 287 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509637_31_non_const_s_z[512];
#line 288 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509638_31_non_const_s_a[512];
#line 282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509632_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509633_6_non_const_tid = ((int)(threadIdx.x));
#line 290 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509633_6_non_const_tid < N_spots)
#line 291 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509635_31_non_const_s_x)[__cuda_local_var_509633_6_non_const_tid]) = (g_x[__cuda_local_var_509633_6_non_const_tid]);
#line 293 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509636_31_non_const_s_y)[__cuda_local_var_509633_6_non_const_tid]) = (g_y[__cuda_local_var_509633_6_non_const_tid]);
#line 294 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509637_31_non_const_s_z)[__cuda_local_var_509633_6_non_const_tid]) = (g_z[__cuda_local_var_509633_6_non_const_tid]);
#line 295 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509638_31_non_const_s_a)[__cuda_local_var_509633_6_non_const_tid]) = (g_a[__cuda_local_var_509633_6_non_const_tid]);
#line 296 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 297 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 299 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509632_6_non_const_idx < (data_w * data_w))
#line 300 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 302 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509652_9_non_const_d;
#line 303 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509653_10_non_const_X;
#line 304 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509654_10_non_const_Y;
#line 317 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509667_9_non_const_phase2pi;
#line 318 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509668_9_non_const_SLMre;
#line 319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509669_9_non_const_SLMim;
#line 302 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509652_9_non_const_d = (0.001953125F);
#line 303 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509653_10_non_const_X = (__cuda_local_var_509652_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 304 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509654_10_non_const_Y = (__cuda_local_var_509652_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
#line 318 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509668_9_non_const_SLMre = (0.0F);
#line 319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509669_9_non_const_SLMim = (0.0F);
#line 319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 321 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int ii;
#line 321 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
ii = 0;
#line 321 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
for (; (ii < N_spots); ++ii)
#line 322 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 324 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509667_9_non_const_phase2pi = ((float)(((double)(((3.141592741F) * ((__cuda_local_var_509637_31_non_const_s_z)[ii])) * ((__cuda_local_var_509653_10_non_const_X * __cuda_local_var_509653_10_non_const_X) + (__cuda_local_var_509654_10_non_const_Y * __cuda_local_var_509654_10_non_const_Y)))) + ((6.2831854820251465) * ((double)((__cuda_local_var_509653_10_non_const_X * ((__cuda_local_var_509635_31_non_const_s_x)[ii])) + (__cuda_local_var_509654_10_non_const_Y * ((__cuda_local_var_509636_31_non_const_s_y)[ii])))))));
#line 325 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509668_9_non_const_SLMre = (__cuda_local_var_509668_9_non_const_SLMre + (((__cuda_local_var_509638_31_non_const_s_a)[ii]) * (cosf(__cuda_local_var_509667_9_non_const_phase2pi))));
#line 326 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509669_9_non_const_SLMim = (__cuda_local_var_509669_9_non_const_SLMim + (((__cuda_local_var_509638_31_non_const_s_a)[ii]) * (sinf(__cuda_local_var_509667_9_non_const_phase2pi))));
#line 327 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 327 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 328 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509667_9_non_const_phase2pi = (atan2f(__cuda_local_var_509669_9_non_const_SLMim, __cuda_local_var_509668_9_non_const_SLMre));
#line 330 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 330 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 331 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509667_9_non_const_phase2pi = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_509667_9_non_const_phase2pi, (d_AberrationCorr_f[__cuda_local_var_509632_6_non_const_idx])));
#line 331 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 333 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 334 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 335 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509685_33_non_const_s_LUTcoeff[120];
#line 336 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509633_6_non_const_tid < N_PolCoeff)
#line 336 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 337 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509685_33_non_const_s_LUTcoeff)[__cuda_local_var_509633_6_non_const_tid]) = (d_LUTPolCoeff_f[__cuda_local_var_509633_6_non_const_tid]);
#line 337 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 338 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 339 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_509632_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_509667_9_non_const_phase2pi, __cuda_local_var_509653_10_non_const_X, __cuda_local_var_509654_10_non_const_Y, (__cuda_local_var_509685_33_non_const_s_LUTcoeff), N_PolCoeff));
#line 340 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 340 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 340 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 341 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (ApplyLUT_b)
#line 342 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 343 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_509693_41_non_const_s_LUT[256];
#line 344 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509633_6_non_const_tid < 256)
#line 344 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 345 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509693_41_non_const_s_LUT)[__cuda_local_var_509633_6_non_const_tid]) = (g_LUT[__cuda_local_var_509633_6_non_const_tid]);
#line 345 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 346 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 347 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_509632_6_non_const_idx]) = ((__cuda_local_var_509693_41_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_509667_9_non_const_phase2pi))]);
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 350 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_509632_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_509667_9_non_const_phase2pi));
#line 350 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 350 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 351 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 352 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 352 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z15checkAmplitudesPfS_S_PhS_iii(
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_pSLM_uc, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_amps, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_pixels, 
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 355 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 356 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509706_6_non_const_blockSize;
#line 357 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509707_6_non_const_spot_number;
#line 358 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509708_6_non_const_tid;
#line 359 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509709_6_non_const_i;
#line 361 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509711_31_non_const_s_Vre[512];
#line 362 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509712_31_non_const_s_Vim[512];
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509713_8_non_const_s_xm;
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509713_14_non_const_s_ym;
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509713_20_non_const_s_zm;
#line 368 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509718_8_non_const_N;
#line 369 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509719_6_non_const_logN;
#line 370 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509720_8_non_const_d;
#line 379 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509729_8_non_const_X1;
#line 380 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509730_8_non_const_Y1;
#line 382 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509732_8_non_const_pSLM_1;
#line 383 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509733_8_non_const_p;
#line 356 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509706_6_non_const_blockSize = 512;
#line 357 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509707_6_non_const_spot_number = ((int)(blockIdx.x));
#line 358 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509708_6_non_const_tid = ((int)(threadIdx.x));
#line 359 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509709_6_non_const_i = __cuda_local_var_509708_6_non_const_tid;
#line 365 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509711_31_non_const_s_Vre)[__cuda_local_var_509708_6_non_const_tid]) = (0.0F);
#line 366 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509712_31_non_const_s_Vim)[__cuda_local_var_509708_6_non_const_tid]) = (0.0F);
#line 368 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509718_8_non_const_N = ((float)data_w);
#line 369 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509719_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_509718_8_non_const_N)))))));
#line 370 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509720_8_non_const_d = (0.001953125F);
#line 373 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509713_8_non_const_s_xm = (g_x[__cuda_local_var_509707_6_non_const_spot_number]);
#line 375 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509713_14_non_const_s_ym = (g_y[__cuda_local_var_509707_6_non_const_spot_number]);
#line 377 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509713_20_non_const_s_zm = (g_z[__cuda_local_var_509707_6_non_const_spot_number]);
#line 379 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509729_8_non_const_X1 = ((float)(((double)__cuda_local_var_509720_8_non_const_d) * (((double)((float)__cuda_local_var_509708_6_non_const_tid)) - (256.0))));
#line 380 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509730_8_non_const_Y1 = ((float)(((double)(-__cuda_local_var_509720_8_non_const_d)) * (256.0)));
#line 384 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_509709_6_non_const_i < N_pixels)
#line 385 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 386 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509732_8_non_const_pSLM_1 = (((float)(fdividef(((double)((6.283185482F) * ((float)(g_pSLM_uc[__cuda_local_var_509709_6_non_const_i])))), (255.0)))) - (3.141592741F));
#line 387 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509733_8_non_const_p = (__cuda_local_var_509732_8_non_const_pSLM_1 - ((3.141592741F) * ((__cuda_local_var_509713_20_non_const_s_zm * ((__cuda_local_var_509729_8_non_const_X1 * __cuda_local_var_509729_8_non_const_X1) + (__cuda_local_var_509730_8_non_const_Y1 * __cuda_local_var_509730_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_509729_8_non_const_X1 * __cuda_local_var_509713_8_non_const_s_xm) + (__cuda_local_var_509730_8_non_const_Y1 * __cuda_local_var_509713_14_non_const_s_ym))))));
#line 389 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509711_31_non_const_s_Vre)[__cuda_local_var_509708_6_non_const_tid]) += (cosf(__cuda_local_var_509733_8_non_const_p));
#line 390 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509712_31_non_const_s_Vim)[__cuda_local_var_509708_6_non_const_tid]) += (sinf(__cuda_local_var_509733_8_non_const_p));
#line 392 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509709_6_non_const_i += __cuda_local_var_509706_6_non_const_blockSize;
#line 393 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509730_8_non_const_Y1 += __cuda_local_var_509720_8_non_const_d;
#line 394 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 395 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 397 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509708_6_non_const_tid < 256)
#line 398 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 399 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509711_31_non_const_s_Vre)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509711_31_non_const_s_Vre)[(__cuda_local_var_509708_6_non_const_tid + 256)]);
#line 400 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509712_31_non_const_s_Vim)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509712_31_non_const_s_Vim)[(__cuda_local_var_509708_6_non_const_tid + 256)]);
#line 401 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 402 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 404 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509708_6_non_const_tid < 128)
#line 405 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 406 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509711_31_non_const_s_Vre)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509711_31_non_const_s_Vre)[(__cuda_local_var_509708_6_non_const_tid + 128)]);
#line 407 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509712_31_non_const_s_Vim)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509712_31_non_const_s_Vim)[(__cuda_local_var_509708_6_non_const_tid + 128)]);
#line 408 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 409 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 411 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509708_6_non_const_tid < 64)
#line 412 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 413 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509711_31_non_const_s_Vre)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509711_31_non_const_s_Vre)[(__cuda_local_var_509708_6_non_const_tid + 64)]);
#line 414 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509712_31_non_const_s_Vim)[__cuda_local_var_509708_6_non_const_tid]) += ((__cuda_local_var_509712_31_non_const_s_Vim)[(__cuda_local_var_509708_6_non_const_tid + 64)]);
#line 415 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 416 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 418 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509708_6_non_const_tid < 32)
#line 418 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 419 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_509711_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_509712_31_non_const_s_Vim)), __cuda_local_var_509708_6_non_const_tid);
#line 419 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 421 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509708_6_non_const_tid == 0)
#line 422 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 423 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509773_9_non_const_cSpotAmpRe;
#line 424 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509774_9_non_const_cSpotAmpIm;
#line 423 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509773_9_non_const_cSpotAmpRe = ((float)(fdivide(((double)((__cuda_local_var_509711_31_non_const_s_Vre)[0])), (262144.0))));
#line 424 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509774_9_non_const_cSpotAmpIm = ((float)(fdivide(((double)((__cuda_local_var_509712_31_non_const_s_Vim)[0])), (262144.0))));
#line 425 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amps[__cuda_local_var_509707_6_non_const_spot_number]) = (hypotf(__cuda_local_var_509773_9_non_const_cSpotAmpRe, __cuda_local_var_509774_9_non_const_cSpotAmpIm));
#line 426 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 427 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 427 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii(
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSLM2pi, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_Vre, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_Vim, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int n, 
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 435 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 436 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509786_6_non_const_blockSize;
#line 437 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509787_6_non_const_spot_number;
#line 438 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509788_6_non_const_tid;
#line 439 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509789_6_non_const_i;
#line 441 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509791_31_non_const_s_Vre[512];
#line 442 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509792_31_non_const_s_Vim[512];
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509794_8_non_const_s_xm;
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509794_14_non_const_s_ym;
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509794_20_non_const_s_zm;
#line 453 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509803_8_non_const_d;
#line 454 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509804_8_non_const_X1;
#line 455 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509805_8_non_const_Y1;
#line 457 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509807_8_non_const_p;
#line 436 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509786_6_non_const_blockSize = 512;
#line 437 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509787_6_non_const_spot_number = ((int)(blockIdx.x));
#line 438 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509788_6_non_const_tid = ((int)(threadIdx.x));
#line 439 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509789_6_non_const_i = __cuda_local_var_509788_6_non_const_tid;
#line 446 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509791_31_non_const_s_Vre)[__cuda_local_var_509788_6_non_const_tid]) = (0.0F);
#line 447 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509792_31_non_const_s_Vim)[__cuda_local_var_509788_6_non_const_tid]) = (0.0F);
#line 449 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509794_8_non_const_s_xm = (g_x[__cuda_local_var_509787_6_non_const_spot_number]);
#line 450 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509794_14_non_const_s_ym = (g_y[__cuda_local_var_509787_6_non_const_spot_number]);
#line 451 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509794_20_non_const_s_zm = (g_z[__cuda_local_var_509787_6_non_const_spot_number]);
#line 453 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509803_8_non_const_d = (0.001953125F);
#line 454 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509804_8_non_const_X1 = (__cuda_local_var_509803_8_non_const_d * ((float)(__cuda_local_var_509788_6_non_const_tid - 256)));
#line 455 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509805_8_non_const_Y1 = ((-__cuda_local_var_509803_8_non_const_d) * (256.0F));
#line 459 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_509789_6_non_const_i < n)
#line 460 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 461 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509807_8_non_const_p = ((g_pSLM2pi[__cuda_local_var_509789_6_non_const_i]) - ((3.141592741F) * ((__cuda_local_var_509794_20_non_const_s_zm * ((__cuda_local_var_509804_8_non_const_X1 * __cuda_local_var_509804_8_non_const_X1) + (__cuda_local_var_509805_8_non_const_Y1 * __cuda_local_var_509805_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_509804_8_non_const_X1 * __cuda_local_var_509794_8_non_const_s_xm) + (__cuda_local_var_509805_8_non_const_Y1 * __cuda_local_var_509794_14_non_const_s_ym))))));
#line 463 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509791_31_non_const_s_Vre)[__cuda_local_var_509788_6_non_const_tid]) += (cosf(__cuda_local_var_509807_8_non_const_p));
#line 464 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509792_31_non_const_s_Vim)[__cuda_local_var_509788_6_non_const_tid]) += (sinf(__cuda_local_var_509807_8_non_const_p));
#line 466 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509789_6_non_const_i += __cuda_local_var_509786_6_non_const_blockSize;
#line 467 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509805_8_non_const_Y1 += __cuda_local_var_509803_8_non_const_d;
#line 468 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 469 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 471 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509788_6_non_const_tid < 256)
#line 472 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 473 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509791_31_non_const_s_Vre)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509791_31_non_const_s_Vre)[(__cuda_local_var_509788_6_non_const_tid + 256)]);
#line 474 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509792_31_non_const_s_Vim)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509792_31_non_const_s_Vim)[(__cuda_local_var_509788_6_non_const_tid + 256)]);
#line 475 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 476 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 478 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509788_6_non_const_tid < 128)
#line 479 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 480 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509791_31_non_const_s_Vre)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509791_31_non_const_s_Vre)[(__cuda_local_var_509788_6_non_const_tid + 128)]);
#line 481 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509792_31_non_const_s_Vim)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509792_31_non_const_s_Vim)[(__cuda_local_var_509788_6_non_const_tid + 128)]);
#line 482 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 483 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 485 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509788_6_non_const_tid < 64)
#line 486 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 487 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509791_31_non_const_s_Vre)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509791_31_non_const_s_Vre)[(__cuda_local_var_509788_6_non_const_tid + 64)]);
#line 488 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509792_31_non_const_s_Vim)[__cuda_local_var_509788_6_non_const_tid]) += ((__cuda_local_var_509792_31_non_const_s_Vim)[(__cuda_local_var_509788_6_non_const_tid + 64)]);
#line 489 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 490 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 493 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509788_6_non_const_tid < 32)
#line 493 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 494 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_509791_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_509792_31_non_const_s_Vim)), __cuda_local_var_509788_6_non_const_tid);
#line 494 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 496 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509788_6_non_const_tid == 0)
#line 497 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 498 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_Vre[__cuda_local_var_509787_6_non_const_spot_number]) = ((float)(fdividef(((double)((__cuda_local_var_509791_31_non_const_s_Vre)[0])), (262144.0))));
#line 499 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_Vim[__cuda_local_var_509787_6_non_const_spot_number]) = ((float)(fdividef(((double)((__cuda_local_var_509792_31_non_const_s_Vim)[0])), (262144.0))));
#line 500 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 501 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 501 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii(
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSLM_cc, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_desiredAmp, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_obtainedPhase, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_weights, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *obtainedI, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int iteration, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int n, 
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 509 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 510 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509860_6_non_const_blockSize;
#line 511 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509861_6_non_const_spot_number;
#line 512 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509862_6_non_const_tid;
#line 513 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509863_6_non_const_i;
#line 515 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509865_31_non_const_s_Vre[512];
#line 516 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509866_31_non_const_s_Vim[512];
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509868_8_non_const_s_xm;
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509868_14_non_const_s_ym;
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509868_20_non_const_s_zm;
#line 527 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509877_8_non_const_d;
#line 528 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509878_8_non_const_X1;
#line 529 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509879_8_non_const_Y1;
#line 531 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509881_8_non_const_p;
#line 533 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509883_6_non_const_index;
#line 510 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509860_6_non_const_blockSize = 512;
#line 511 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509861_6_non_const_spot_number = ((int)(blockIdx.x));
#line 512 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509862_6_non_const_tid = ((int)(threadIdx.x));
#line 513 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509863_6_non_const_i = __cuda_local_var_509862_6_non_const_tid;
#line 520 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509865_31_non_const_s_Vre)[__cuda_local_var_509862_6_non_const_tid]) = (0.0F);
#line 521 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509866_31_non_const_s_Vim)[__cuda_local_var_509862_6_non_const_tid]) = (0.0F);
#line 523 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509868_8_non_const_s_xm = (g_x[__cuda_local_var_509861_6_non_const_spot_number]);
#line 524 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509868_14_non_const_s_ym = (g_y[__cuda_local_var_509861_6_non_const_spot_number]);
#line 525 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509868_20_non_const_s_zm = (g_z[__cuda_local_var_509861_6_non_const_spot_number]);
#line 527 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509877_8_non_const_d = (0.001953125F);
#line 528 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509878_8_non_const_X1 = (__cuda_local_var_509877_8_non_const_d * ((float)(__cuda_local_var_509862_6_non_const_tid - 256)));
#line 529 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509879_8_non_const_Y1 = ((-__cuda_local_var_509877_8_non_const_d) * (256.0F));
#line 534 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_509863_6_non_const_i < n)
#line 535 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 536 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509883_6_non_const_index = (_Z8fftshiftii(__cuda_local_var_509863_6_non_const_i, 512));
#line 537 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509881_8_non_const_p = ((atan2f(((g_cSLM_cc[__cuda_local_var_509883_6_non_const_index]).y), ((g_cSLM_cc[__cuda_local_var_509883_6_non_const_index]).x))) - ((3.141592741F) * ((__cuda_local_var_509868_20_non_const_s_zm * ((__cuda_local_var_509878_8_non_const_X1 * __cuda_local_var_509878_8_non_const_X1) + (__cuda_local_var_509879_8_non_const_Y1 * __cuda_local_var_509879_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_509878_8_non_const_X1 * __cuda_local_var_509868_8_non_const_s_xm) + (__cuda_local_var_509879_8_non_const_Y1 * __cuda_local_var_509868_14_non_const_s_ym))))));
#line 539 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509865_31_non_const_s_Vre)[__cuda_local_var_509862_6_non_const_tid]) += (cosf(__cuda_local_var_509881_8_non_const_p));
#line 540 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509866_31_non_const_s_Vim)[__cuda_local_var_509862_6_non_const_tid]) += (sinf(__cuda_local_var_509881_8_non_const_p));
#line 542 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509863_6_non_const_i += 512;
#line 543 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509879_8_non_const_Y1 += __cuda_local_var_509877_8_non_const_d;
#line 544 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 545 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 547 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509862_6_non_const_tid < 256)
#line 548 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 549 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509865_31_non_const_s_Vre)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509865_31_non_const_s_Vre)[(__cuda_local_var_509862_6_non_const_tid + 256)]);
#line 550 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509866_31_non_const_s_Vim)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509866_31_non_const_s_Vim)[(__cuda_local_var_509862_6_non_const_tid + 256)]);
#line 551 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 552 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 554 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509862_6_non_const_tid < 128)
#line 555 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 556 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509865_31_non_const_s_Vre)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509865_31_non_const_s_Vre)[(__cuda_local_var_509862_6_non_const_tid + 128)]);
#line 557 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509866_31_non_const_s_Vim)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509866_31_non_const_s_Vim)[(__cuda_local_var_509862_6_non_const_tid + 128)]);
#line 558 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 559 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 561 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509862_6_non_const_tid < 64)
#line 562 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 563 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509865_31_non_const_s_Vre)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509865_31_non_const_s_Vre)[(__cuda_local_var_509862_6_non_const_tid + 64)]);
#line 564 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509866_31_non_const_s_Vim)[__cuda_local_var_509862_6_non_const_tid]) += ((__cuda_local_var_509866_31_non_const_s_Vim)[(__cuda_local_var_509862_6_non_const_tid + 64)]);
#line 565 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 566 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 569 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509862_6_non_const_tid < 32)
#line 569 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 570 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_509865_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_509866_31_non_const_s_Vim)), __cuda_local_var_509862_6_non_const_tid);
#line 570 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 572 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509862_6_non_const_tid == 0)
#line 573 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 575 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509925_9_non_const_obtainedAmp;
#line 578 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509928_9_non_const_desiredAmp;
#line 574 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_obtainedPhase[__cuda_local_var_509861_6_non_const_spot_number]) = (atan2f(((__cuda_local_var_509866_31_non_const_s_Vim)[0]), ((__cuda_local_var_509865_31_non_const_s_Vre)[0])));
#line 575 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509925_9_non_const_obtainedAmp = (hypotf(((__cuda_local_var_509865_31_non_const_s_Vre)[0]), ((__cuda_local_var_509866_31_non_const_s_Vim)[0])));
#line 578 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509928_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_509861_6_non_const_spot_number]);
#line 579 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 580 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 581 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[(__cuda_local_var_509861_6_non_const_spot_number + (N_spots * iteration))]) = ((g_weights[(__cuda_local_var_509861_6_non_const_spot_number + (N_spots * (iteration - 1)))]) * ((float)(fdividef(((double)__cuda_local_var_509928_9_non_const_desiredAmp), ((double)__cuda_local_var_509925_9_non_const_obtainedAmp)))));
#line 582 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 584 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 584 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 586 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[__cuda_local_var_509861_6_non_const_spot_number]) = ((float)(fdividef(((double)__cuda_local_var_509928_9_non_const_desiredAmp), (262144.0))));
#line 587 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 588 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(obtainedI[(__cuda_local_var_509861_6_non_const_spot_number + (N_spots * iteration))]) = ((float)(fdividef(((double)(__cuda_local_var_509925_9_non_const_obtainedAmp * __cuda_local_var_509925_9_non_const_obtainedAmp)), (68719476736.0))));
#line 589 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 590 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 590 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib(
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_desiredAmp, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_cSpotAmpRe, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_cSpotAmpIm, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSLM2pi, 
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_pixels, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_weights, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int iteration, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSLMstart, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float RPC, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_amps, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool getpSLM255, 
#line 598 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_pSLM255_uc, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_LUT, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool ApplyLUT_b, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseAberrationCorr_b, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_AberrationCorr_f, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseLUTPol_b, 
#line 599 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_LUTPolCoeff_f, 
#line 600 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_PolCoeff, 
#line 600 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool saveAmps){
#line 600 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 601 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 602 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509952_6_non_const_idx;
#line 603 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_509953_6_non_const_tid;
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509954_31_non_const_s_aSpot[256];
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509954_45_non_const_s_aSpotsMean;
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509954_59_non_const_s_weight[256];
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509954_74_non_const_s_pSpot[256];
#line 605 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509955_31_non_const_s_xm[256];
#line 606 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509956_31_non_const_s_ym[256];
#line 607 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_509957_31_non_const_s_zm[256];
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509958_8_non_const_reSLM;
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509958_19_non_const_imSLM;
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509958_30_non_const_pSLM2pi_f;
#line 602 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509952_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 603 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509953_6_non_const_tid = ((int)(threadIdx.x));
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_8_non_const_reSLM = (0.0F);
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_19_non_const_imSLM = (0.0F);
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_30_non_const_pSLM2pi_f = (0.0F);
#line 610 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509952_6_non_const_idx < N_pixels)
#line 611 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 656 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510006_9_non_const_d;
#line 657 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510007_10_non_const_X;
#line 658 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510008_10_non_const_Y;
#line 612 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509953_6_non_const_tid < N_spots)
#line 613 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 614 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509964_10_non_const_desiredAmp;
#line 615 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509965_10_non_const_cSpotAmpRe;
#line 616 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509966_10_non_const_cSpotAmpIm;
#line 614 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509964_10_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_509953_6_non_const_tid]);
#line 615 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509965_10_non_const_cSpotAmpRe = (g_cSpotAmpRe[__cuda_local_var_509953_6_non_const_tid]);
#line 616 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509966_10_non_const_cSpotAmpIm = (g_cSpotAmpIm[__cuda_local_var_509953_6_non_const_tid]);
#line 617 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_74_non_const_s_pSpot)[__cuda_local_var_509953_6_non_const_tid]) = (atan2f(__cuda_local_var_509966_10_non_const_cSpotAmpIm, __cuda_local_var_509965_10_non_const_cSpotAmpRe));
#line 618 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid]) = ((float)(fdividef(((double)(hypotf(__cuda_local_var_509965_10_non_const_cSpotAmpRe, __cuda_local_var_509966_10_non_const_cSpotAmpIm))), ((double)__cuda_local_var_509964_10_non_const_desiredAmp))));
#line 619 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 619 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 620 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_59_non_const_s_weight)[__cuda_local_var_509953_6_non_const_tid]) = (g_weights[(__cuda_local_var_509953_6_non_const_tid + (iteration * N_spots))]);
#line 620 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 622 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 622 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 623 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid]) = ((((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid]) < (0.5F)) ? (0.5F) : ((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid]));
#line 624 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_59_non_const_s_weight)[__cuda_local_var_509953_6_non_const_tid]) = __cuda_local_var_509964_10_non_const_desiredAmp;
#line 625 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 626 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509955_31_non_const_s_xm)[__cuda_local_var_509953_6_non_const_tid]) = (g_x[__cuda_local_var_509953_6_non_const_tid]);
#line 627 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509956_31_non_const_s_ym)[__cuda_local_var_509953_6_non_const_tid]) = (g_y[__cuda_local_var_509953_6_non_const_tid]);
#line 628 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509957_31_non_const_s_zm)[__cuda_local_var_509953_6_non_const_tid]) = (g_z[__cuda_local_var_509953_6_non_const_tid]);
#line 629 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 630 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 633 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509953_6_non_const_tid == 0)
#line 634 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 635 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_509985_10_non_const_s_aSpot_sum;
#line 635 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509985_10_non_const_s_aSpot_sum = (0.0F);
#line 635 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 636 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int jj;
#line 636 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
jj = 0;
#line 636 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
for (; (jj < N_spots); jj++)
#line 637 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 638 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509985_10_non_const_s_aSpot_sum += ((__cuda_local_var_509954_31_non_const_s_aSpot)[jj]);
#line 639 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 639 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 640 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509954_45_non_const_s_aSpotsMean = ((float)(fdividef(((double)__cuda_local_var_509985_10_non_const_s_aSpot_sum), ((double)((float)N_spots)))));
#line 641 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 642 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 644 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509953_6_non_const_tid < N_spots)
#line 645 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 646 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_509954_59_non_const_s_weight)[__cuda_local_var_509953_6_non_const_tid]) = ((float)(fdividef(((double)(((__cuda_local_var_509954_59_non_const_s_weight)[__cuda_local_var_509953_6_non_const_tid]) * __cuda_local_var_509954_45_non_const_s_aSpotsMean)), ((double)((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid])))));
#line 647 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (!(getpSLM255))
#line 647 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 648 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[(__cuda_local_var_509953_6_non_const_tid + (N_spots * (iteration + 1)))]) = ((__cuda_local_var_509954_59_non_const_s_weight)[__cuda_local_var_509953_6_non_const_tid]);
#line 648 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 651 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (saveAmps)
#line 651 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 652 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amps[(__cuda_local_var_509953_6_non_const_tid + (N_spots * iteration))]) = ((__cuda_local_var_509954_31_non_const_s_aSpot)[__cuda_local_var_509953_6_non_const_tid]);
#line 652 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 653 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 654 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 656 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510006_9_non_const_d = (0.001953125F);
#line 657 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510007_10_non_const_X = (__cuda_local_var_510006_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 658 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510008_10_non_const_Y = (__cuda_local_var_510006_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
#line 658 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 665 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int k;
#line 665 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
k = 0;
#line 665 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
for (; (k < N_spots); k++)
#line 666 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 667 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510017_10_non_const_delta;
#line 667 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510017_10_non_const_delta = ((((3.141592741F) * ((__cuda_local_var_509957_31_non_const_s_zm)[k])) * ((__cuda_local_var_510007_10_non_const_X * __cuda_local_var_510007_10_non_const_X) + (__cuda_local_var_510008_10_non_const_Y * __cuda_local_var_510008_10_non_const_Y))) + ((6.283185482F) * ((__cuda_local_var_510007_10_non_const_X * ((__cuda_local_var_509955_31_non_const_s_xm)[k])) + (__cuda_local_var_510008_10_non_const_Y * ((__cuda_local_var_509956_31_non_const_s_ym)[k])))));
#line 668 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_8_non_const_reSLM += (((__cuda_local_var_509954_59_non_const_s_weight)[k]) * (cosf((((__cuda_local_var_509954_74_non_const_s_pSpot)[k]) + __cuda_local_var_510017_10_non_const_delta))));
#line 669 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_19_non_const_imSLM += (((__cuda_local_var_509954_59_non_const_s_weight)[k]) * (sinf((((__cuda_local_var_509954_74_non_const_s_pSpot)[k]) + __cuda_local_var_510017_10_non_const_delta))));
#line 670 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 670 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 671 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_30_non_const_pSLM2pi_f = (atan2f(__cuda_local_var_509958_19_non_const_imSLM, __cuda_local_var_509958_8_non_const_reSLM));
#line 674 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 675 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 675 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T23;
#line 676 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510026_10_non_const_pSLMstart;
#line 676 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510026_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_509952_6_non_const_idx]);
#line 677 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T23 = (__cuda_local_var_509958_30_non_const_pSLM2pi_f - __cuda_local_var_510026_10_non_const_pSLMstart)) , (fabsf(__T23))) > RPC)
#line 677 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 678 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_30_non_const_pSLM2pi_f = __cuda_local_var_510026_10_non_const_pSLMstart;
#line 678 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 679 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 679 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 680 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_509952_6_non_const_idx]) = __cuda_local_var_509958_30_non_const_pSLM2pi_f;
#line 680 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 681 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 683 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 684 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 685 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 685 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 686 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_509958_30_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_509958_30_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_509952_6_non_const_idx])));
#line 686 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 688 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 689 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 690 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510040_34_non_const_s_LUTcoeff[120];
#line 691 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509953_6_non_const_tid < N_PolCoeff)
#line 691 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 692 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510040_34_non_const_s_LUTcoeff)[__cuda_local_var_509953_6_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_509953_6_non_const_tid]);
#line 692 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 693 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 694 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_509952_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_509958_30_non_const_pSLM2pi_f, __cuda_local_var_510007_10_non_const_X, __cuda_local_var_510008_10_non_const_Y, (__cuda_local_var_510040_34_non_const_s_LUTcoeff), N_PolCoeff));
#line 695 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 695 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 695 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 696 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (ApplyLUT_b)
#line 697 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 698 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_510048_42_non_const_s_LUT[256];
#line 699 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_509953_6_non_const_tid < 256)
#line 699 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 700 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510048_42_non_const_s_LUT)[__cuda_local_var_509953_6_non_const_tid]) = (g_LUT[__cuda_local_var_509953_6_non_const_tid]);
#line 700 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 701 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 702 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_509952_6_non_const_idx]) = ((__cuda_local_var_510048_42_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_509958_30_non_const_pSLM2pi_f))]);
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 705 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_509952_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_509958_30_non_const_pSLM2pi_f));
#line 705 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 705 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 706 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 706 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 706 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 708 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM2pi[__cuda_local_var_509952_6_non_const_idx]) = __cuda_local_var_509958_30_non_const_pSLM2pi_f;
#line 708 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 709 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 710 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 710 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib(
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_z, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSpot, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_wSpot, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSLM_cc, 
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_pixels, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int iteration, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSLMstart, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float RPC, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool getpSLM255, 
#line 717 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_pSLM255_uc, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_LUT, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool ApplyLUT_b, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseAberrationCorr_b, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_AberrationCorr_f, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseLUTPol_b, 
#line 718 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_LUTPolCoeff_f, 
#line 719 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_PolCoeff, 
#line 719 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool saveAmps){
#line 719 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 720 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 721 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510071_6_non_const_idx;
#line 722 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510072_6_non_const_tid;
#line 723 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510073_31_non_const_s_weight[256];
#line 723 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510073_46_non_const_s_pSpot[256];
#line 724 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510074_31_non_const_s_xm[256];
#line 725 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510075_31_non_const_s_ym[256];
#line 726 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510076_31_non_const_s_zm[256];
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510077_8_non_const_reSLM;
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510077_19_non_const_imSLM;
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510077_30_non_const_pSLM2pi_f;
#line 721 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510071_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 722 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510072_6_non_const_tid = ((int)(threadIdx.x));
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_8_non_const_reSLM = (0.0F);
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_19_non_const_imSLM = (0.0F);
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_30_non_const_pSLM2pi_f = (0.0F);
#line 729 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510071_6_non_const_idx < N_pixels)
#line 730 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 743 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510093_9_non_const_d;
#line 744 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510094_10_non_const_X;
#line 745 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510095_10_non_const_Y;
#line 759 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510109_7_non_const_shiftedidx;
#line 731 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510072_6_non_const_tid < N_spots)
#line 732 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 733 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510073_46_non_const_s_pSpot)[__cuda_local_var_510072_6_non_const_tid]) = (g_pSpot[__cuda_local_var_510072_6_non_const_tid]);
#line 734 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510073_31_non_const_s_weight)[__cuda_local_var_510072_6_non_const_tid]) = (g_wSpot[(__cuda_local_var_510072_6_non_const_tid + (N_spots * iteration))]);
#line 736 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510074_31_non_const_s_xm)[__cuda_local_var_510072_6_non_const_tid]) = (g_x[__cuda_local_var_510072_6_non_const_tid]);
#line 737 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510075_31_non_const_s_ym)[__cuda_local_var_510072_6_non_const_tid]) = (g_y[__cuda_local_var_510072_6_non_const_tid]);
#line 738 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510076_31_non_const_s_zm)[__cuda_local_var_510072_6_non_const_tid]) = (g_z[__cuda_local_var_510072_6_non_const_tid]);
#line 739 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 740 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 743 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510093_9_non_const_d = (0.001953125F);
#line 744 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510094_10_non_const_X = (__cuda_local_var_510093_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 745 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510095_10_non_const_Y = (__cuda_local_var_510093_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
#line 745 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 752 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int k;
#line 752 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
k = 0;
#line 752 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
for (; (k < N_spots); k++)
#line 753 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 754 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510104_10_non_const_delta;
#line 754 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510104_10_non_const_delta = ((((3.141592741F) * ((__cuda_local_var_510076_31_non_const_s_zm)[k])) * ((__cuda_local_var_510094_10_non_const_X * __cuda_local_var_510094_10_non_const_X) + (__cuda_local_var_510095_10_non_const_Y * __cuda_local_var_510095_10_non_const_Y))) + ((6.283185482F) * ((__cuda_local_var_510094_10_non_const_X * ((__cuda_local_var_510074_31_non_const_s_xm)[k])) + (__cuda_local_var_510095_10_non_const_Y * ((__cuda_local_var_510075_31_non_const_s_ym)[k])))));
#line 755 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_8_non_const_reSLM += (((__cuda_local_var_510073_31_non_const_s_weight)[k]) * (cosf((((__cuda_local_var_510073_46_non_const_s_pSpot)[k]) + __cuda_local_var_510104_10_non_const_delta))));
#line 756 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_19_non_const_imSLM += (((__cuda_local_var_510073_31_non_const_s_weight)[k]) * (sinf((((__cuda_local_var_510073_46_non_const_s_pSpot)[k]) + __cuda_local_var_510104_10_non_const_delta))));
#line 757 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 757 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 759 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510109_7_non_const_shiftedidx = (_Z8fftshiftii(__cuda_local_var_510071_6_non_const_idx, 512));
#line 760 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_8_non_const_reSLM += ((float)(fdividef(((double)((g_cSLM_cc[__cuda_local_var_510109_7_non_const_shiftedidx]).x)), (262144.0))));
#line 761 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_19_non_const_imSLM += ((float)(fdividef(((double)((g_cSLM_cc[__cuda_local_var_510109_7_non_const_shiftedidx]).y)), (262144.0))));
#line 763 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_30_non_const_pSLM2pi_f = (atan2f(__cuda_local_var_510077_19_non_const_imSLM, __cuda_local_var_510077_8_non_const_reSLM));
#line 765 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 766 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 766 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T24;
#line 767 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510117_10_non_const_pSLMstart;
#line 767 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510117_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_510109_7_non_const_shiftedidx]);
#line 768 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T24 = (__cuda_local_var_510077_30_non_const_pSLM2pi_f - __cuda_local_var_510117_10_non_const_pSLMstart)) , (fabsf(__T24))) > RPC)
#line 768 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 769 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_30_non_const_pSLM2pi_f = __cuda_local_var_510117_10_non_const_pSLMstart;
#line 769 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 770 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 770 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 771 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_510109_7_non_const_shiftedidx]) = __cuda_local_var_510077_30_non_const_pSLM2pi_f;
#line 771 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 772 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 774 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 775 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 776 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 776 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 777 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510077_30_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_510077_30_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_510071_6_non_const_idx])));
#line 777 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 778 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 779 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 780 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510130_34_non_const_s_LUTcoeff[120];
#line 781 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510072_6_non_const_tid < N_PolCoeff)
#line 781 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 782 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510130_34_non_const_s_LUTcoeff)[__cuda_local_var_510072_6_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_510072_6_non_const_tid]);
#line 782 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 783 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 784 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510071_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_510077_30_non_const_pSLM2pi_f, __cuda_local_var_510094_10_non_const_X, __cuda_local_var_510095_10_non_const_Y, (__cuda_local_var_510130_34_non_const_s_LUTcoeff), N_PolCoeff));
#line 785 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 785 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 785 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 786 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (ApplyLUT_b)
#line 787 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 788 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_510138_42_non_const_s_LUT[256];
#line 789 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510072_6_non_const_tid < 256)
#line 789 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 790 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510138_42_non_const_s_LUT)[__cuda_local_var_510072_6_non_const_tid]) = (g_LUT[__cuda_local_var_510072_6_non_const_tid]);
#line 790 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 791 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 792 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510071_6_non_const_idx]) = ((__cuda_local_var_510138_42_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_510077_30_non_const_pSLM2pi_f))]);
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510071_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_510077_30_non_const_pSLM2pi_f));
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 802 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 803 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSLM_cc[__cuda_local_var_510109_7_non_const_shiftedidx]).x) = (cosf(__cuda_local_var_510077_30_non_const_pSLM2pi_f));
#line 804 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSLM_cc[__cuda_local_var_510109_7_non_const_shiftedidx]).y) = (sinf(__cuda_local_var_510077_30_non_const_pSLM2pi_f));
#line 805 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 806 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 806 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z21setActiveRegionToZeroP6float2i(
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_Farfield_cc, 
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int borderWidth){
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 808 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 809 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510159_6_non_const_tid;
#line 810 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510160_6_non_const_bid;
#line 811 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510161_6_non_const_idx;
#line 809 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510159_6_non_const_tid = ((int)(threadIdx.x));
#line 810 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510160_6_non_const_bid = ((int)(blockIdx.x));
#line 811 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510161_6_non_const_idx = ((int)((((unsigned)__cuda_local_var_510160_6_non_const_bid) * (blockDim.x)) + ((unsigned)__cuda_local_var_510159_6_non_const_tid)));
#line 812 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__cuda_local_var_510159_6_non_const_tid < (256 - borderWidth)) || (__cuda_local_var_510159_6_non_const_tid > (255 + borderWidth))) && ((__cuda_local_var_510160_6_non_const_bid < (256 - borderWidth)) || (__cuda_local_var_510160_6_non_const_bid > (255 + borderWidth))))
#line 813 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 814 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_Farfield_cc[__cuda_local_var_510161_6_non_const_idx]).x) = (0.0F);
#line 815 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_Farfield_cc[__cuda_local_var_510161_6_non_const_idx]).y) = (0.0F);
#line 816 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 817 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 817 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z4uc2fPfPhi(
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *f, 
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *uc, 
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N){
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 823 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 824 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510174_6_non_const_idx;
#line 824 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510174_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 825 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510174_6_non_const_idx < N)
#line 826 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 827 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(f[__cuda_local_var_510174_6_non_const_idx]) = (((float)(fdividef(((double)((((float)(uc[__cuda_local_var_510174_6_non_const_idx])) * (2.0F)) * (3.141592741F))), (256.0)))) - (3.141592741F));
#line 828 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 829 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 829 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z3p2cP6float2Pfi(
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_p, 
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 834 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 835 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510185_6_non_const_idx;
#line 835 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510185_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 836 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510185_6_non_const_idx < M)
#line 837 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 838 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510188_9_non_const_pSpot;
#line 838 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510188_9_non_const_pSpot = (g_p[__cuda_local_var_510185_6_non_const_idx]);
#line 839 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_c[__cuda_local_var_510185_6_non_const_idx]).x) = (cosf(__cuda_local_var_510188_9_non_const_pSpot));
#line 840 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_c[__cuda_local_var_510185_6_non_const_idx]).y) = (sinf(__cuda_local_var_510188_9_non_const_pSpot));
#line 841 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 842 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 843 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 843 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z8c_cc2a_fPfP6float2i(
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_a, 
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 849 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 850 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510200_6_non_const_idx;
#line 850 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510200_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 851 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510200_6_non_const_idx < M)
#line 852 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 853 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_a[__cuda_local_var_510200_6_non_const_idx]) = (hypotf(((g_c[__cuda_local_var_510200_6_non_const_idx]).x), ((g_c[__cuda_local_var_510200_6_non_const_idx]).y)));
#line 854 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 855 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 856 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 856 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z9c_cc2p_ccP6float2S0_i(
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_p, 
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 861 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 862 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510212_6_non_const_idx;
#line 862 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510212_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 863 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510212_6_non_const_idx < M)
#line 864 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 865 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_p[__cuda_local_var_510212_6_non_const_idx]).x) = (atan2f(((g_c[__cuda_local_var_510212_6_non_const_idx]).y), ((g_c[__cuda_local_var_510212_6_non_const_idx]).x)));
#line 866 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_p[__cuda_local_var_510212_6_non_const_idx]).y) = (0.0F);
#line 867 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 868 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 869 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 869 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z8c_cc2p_fPfP6float2i(
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_p, 
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 874 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 875 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510225_6_non_const_idx;
#line 875 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510225_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 876 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510225_6_non_const_idx < M)
#line 877 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 878 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_510225_6_non_const_idx]) = (atan2f(((g_c[__cuda_local_var_510225_6_non_const_idx]).y), ((g_c[__cuda_local_var_510225_6_non_const_idx]).x)));
#line 879 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 880 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 881 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 881 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z9c_cc2re_fPfP6float2i(
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_p, 
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 887 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 888 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510238_6_non_const_idx;
#line 888 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510238_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 889 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510238_6_non_const_idx < M)
#line 890 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 891 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_510238_6_non_const_idx]) = ((g_c[__cuda_local_var_510238_6_non_const_idx]).x);
#line 892 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 893 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 894 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 894 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z9c_cc2im_fPfP6float2i(
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_p, 
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_c, 
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int M){
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 900 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 901 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510251_6_non_const_idx;
#line 901 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510251_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 902 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510251_6_non_const_idx < M)
#line 903 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 904 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_510251_6_non_const_idx]) = ((g_c[__cuda_local_var_510251_6_non_const_idx]).y);
#line 905 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 906 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 907 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 907 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i(
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_aLaser, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cAmp, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_pSLMstart, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_pixels, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float RPC, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool getpSLM255, 
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_pSLM255_uc, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
unsigned char *g_LUT, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool ApplyLUT_b, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseAberrationCorr_b, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_AberrationCorr_f, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool UseLUTPol_b, 
#line 913 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_LUTPolCoeff_f, 
#line 914 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_PolCoeff){
#line 914 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 915 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 916 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510266_6_non_const_idx;
#line 916 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510266_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 918 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510266_6_non_const_idx < N_pixels)
#line 919 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 920 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510270_9_non_const_aLaser;
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_510272_16_non_const_cAmp;
#line 923 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510273_10_non_const_pSLM2pi_f;
#line 920 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510270_9_non_const_aLaser = (1.0F);
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510272_16_non_const_cAmp = (g_cAmp[__cuda_local_var_510266_6_non_const_idx]);
#line 923 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510273_10_non_const_pSLM2pi_f = (atan2f((__cuda_local_var_510272_16_non_const_cAmp.y), (__cuda_local_var_510272_16_non_const_cAmp.x)));
#line 925 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 926 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 926 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T25;
#line 927 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510277_10_non_const_pSLMstart;
#line 927 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510277_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_510266_6_non_const_idx]);
#line 928 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T25 = (__cuda_local_var_510273_10_non_const_pSLM2pi_f - __cuda_local_var_510277_10_non_const_pSLMstart)) , (fabsf(__T25))) > RPC)
#line 928 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 929 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510273_10_non_const_pSLM2pi_f = __cuda_local_var_510277_10_non_const_pSLMstart;
#line 929 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 930 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 932 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 933 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 937 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510287_8_non_const_idxShifted;
#line 938 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510288_8_non_const_X_shifted;
#line 938 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510288_19_non_const_Y_shifted;
#line 939 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510289_8_non_const_data_w;
#line 943 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510293_10_non_const_N;
#line 944 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510294_8_non_const_half_w;
#line 945 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510295_8_non_const_logN;
#line 947 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510297_8_non_const_X;
#line 948 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510298_8_non_const_Y;
#line 949 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510299_10_non_const_d;
#line 934 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 934 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 935 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_510266_6_non_const_idx]) = __cuda_local_var_510273_10_non_const_pSLM2pi_f;
#line 935 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 939 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510289_8_non_const_data_w = 512;
#line 943 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510293_10_non_const_N = ((float)__cuda_local_var_510289_8_non_const_data_w);
#line 944 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510294_8_non_const_half_w = (__cuda_local_var_510289_8_non_const_data_w >> 1);
#line 945 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510295_8_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_510293_10_non_const_N)))))));
#line 947 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510297_8_non_const_X = (__cuda_local_var_510266_6_non_const_idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_510293_10_non_const_N - (1.0F))))))));
#line 948 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510298_8_non_const_Y = ((__cuda_local_var_510266_6_non_const_idx - __cuda_local_var_510297_8_non_const_X) >> __cuda_local_var_510295_8_non_const_logN);
#line 949 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510299_10_non_const_d = (0.001953125F);
#line 953 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510297_8_non_const_X < __cuda_local_var_510294_8_non_const_half_w)
#line 954 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 955 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_8_non_const_X_shifted = __cuda_local_var_510297_8_non_const_X;
#line 956 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510298_8_non_const_Y < __cuda_local_var_510294_8_non_const_half_w)
#line 957 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 958 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_19_non_const_Y_shifted = (__cuda_local_var_510298_8_non_const_Y + __cuda_local_var_510294_8_non_const_half_w);
#line 959 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510287_8_non_const_idxShifted = ((__cuda_local_var_510266_6_non_const_idx + (__cuda_local_var_510289_8_non_const_data_w * __cuda_local_var_510294_8_non_const_half_w)) + __cuda_local_var_510294_8_non_const_half_w);
#line 960 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 962 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 962 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 963 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_19_non_const_Y_shifted = (__cuda_local_var_510298_8_non_const_Y - __cuda_local_var_510289_8_non_const_data_w);
#line 964 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510287_8_non_const_idxShifted = ((__cuda_local_var_510266_6_non_const_idx - (__cuda_local_var_510289_8_non_const_data_w * __cuda_local_var_510294_8_non_const_half_w)) + __cuda_local_var_510294_8_non_const_half_w);
#line 965 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 966 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 968 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 968 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 969 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_8_non_const_X_shifted = (__cuda_local_var_510297_8_non_const_X - __cuda_local_var_510289_8_non_const_data_w);
#line 970 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510298_8_non_const_Y < __cuda_local_var_510294_8_non_const_half_w)
#line 971 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 972 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_19_non_const_Y_shifted = __cuda_local_var_510298_8_non_const_Y;
#line 973 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510287_8_non_const_idxShifted = ((__cuda_local_var_510266_6_non_const_idx + (__cuda_local_var_510289_8_non_const_data_w * __cuda_local_var_510294_8_non_const_half_w)) - __cuda_local_var_510294_8_non_const_half_w);
#line 974 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 976 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 976 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 977 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510288_19_non_const_Y_shifted = (__cuda_local_var_510298_8_non_const_Y - __cuda_local_var_510289_8_non_const_data_w);
#line 978 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510287_8_non_const_idxShifted = ((__cuda_local_var_510266_6_non_const_idx - (__cuda_local_var_510289_8_non_const_data_w * __cuda_local_var_510294_8_non_const_half_w)) - __cuda_local_var_510294_8_non_const_half_w);
#line 979 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 980 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 982 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 982 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 983 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510273_10_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_510273_10_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_510287_8_non_const_idxShifted])));
#line 983 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 985 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 986 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 987 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510337_9_non_const_tid;
#line 988 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510338_34_non_const_s_LUTcoeff[120];
#line 987 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510337_9_non_const_tid = ((int)(threadIdx.x));
#line 989 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510337_9_non_const_tid < N_PolCoeff)
#line 989 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 990 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510338_34_non_const_s_LUTcoeff)[__cuda_local_var_510337_9_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_510337_9_non_const_tid]);
#line 990 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 991 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 992 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510287_8_non_const_idxShifted]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_510273_10_non_const_pSLM2pi_f, (__cuda_local_var_510299_10_non_const_d * ((float)__cuda_local_var_510288_8_non_const_X_shifted)), (__cuda_local_var_510299_10_non_const_d * ((float)__cuda_local_var_510288_19_non_const_Y_shifted)), (__cuda_local_var_510338_34_non_const_s_LUTcoeff), N_PolCoeff));
#line 993 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 993 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 993 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 994 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (ApplyLUT_b)
#line 995 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 996 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510346_9_non_const_tid;
#line 996 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510346_9_non_const_tid = ((int)(threadIdx.x));
#line 997 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (!(UseLUTPol_b))
#line 998 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 999 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_510349_43_non_const_s_LUT[256];
#line 1000 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510346_9_non_const_tid < 256)
#line 1000 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1001 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510349_43_non_const_s_LUT)[__cuda_local_var_510346_9_non_const_tid]) = (g_LUT[__cuda_local_var_510346_9_non_const_tid]);
#line 1001 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1002 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1003 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510287_8_non_const_idxShifted]) = ((__cuda_local_var_510349_43_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_510273_10_non_const_pSLM2pi_f))]);
#line 1004 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_510287_8_non_const_idxShifted]) = (_Z8phase2ucf(__cuda_local_var_510273_10_non_const_pSLM2pi_f));
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1008 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1009 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cAmp[__cuda_local_var_510266_6_non_const_idx]).x) = (__cuda_local_var_510270_9_non_const_aLaser * (cosf(__cuda_local_var_510273_10_non_const_pSLM2pi_f)));
#line 1010 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cAmp[__cuda_local_var_510266_6_non_const_idx]).y) = (__cuda_local_var_510270_9_non_const_aLaser * (sinf(__cuda_local_var_510273_10_non_const_pSLM2pi_f)));
#line 1011 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1012 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1013 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 1013 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb(
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSpotAmp_cc, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSpotAmpNew_cc, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int *g_spotIndex, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int iteration, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_amplitude, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_weight, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_desiredAmp, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool last_iteration, 
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool save_amps){
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1019 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1020 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510370_6_non_const_tid;
#line 1021 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510371_6_non_const_spotIndex;
#line 1022 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510372_8_non_const_pSpot;
#line 1023 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510373_31_non_const_s_aSpot[256];
#line 1023 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_510373_45_non_const_s_ISpotsMeanSq;
#line 1024 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510374_8_non_const_weight;
#line 1025 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_510375_15_non_const_cSpotAmp_cc;
#line 1020 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510370_6_non_const_tid = ((int)(threadIdx.x));
#line 1027 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510370_6_non_const_tid < N_spots)
#line 1028 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1029 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510379_9_non_const_desiredAmp;
#line 1029 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510379_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_510370_6_non_const_tid]);
#line 1030 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510371_6_non_const_spotIndex = (g_spotIndex[__cuda_local_var_510370_6_non_const_tid]);
#line 1031 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510375_15_non_const_cSpotAmp_cc = (g_cSpotAmp_cc[__cuda_local_var_510371_6_non_const_spotIndex]);
#line 1032 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510372_8_non_const_pSpot = (atan2f((__cuda_local_var_510375_15_non_const_cSpotAmp_cc.y), (__cuda_local_var_510375_15_non_const_cSpotAmp_cc.x)));
#line 1033 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid]) = ((float)(fdividef(((double)(hypotf((__cuda_local_var_510375_15_non_const_cSpotAmp_cc.x), (__cuda_local_var_510375_15_non_const_cSpotAmp_cc.y)))), ((double)((262144.0F) * __cuda_local_var_510379_9_non_const_desiredAmp)))));
#line 1034 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 1034 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1035 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510374_8_non_const_weight = (g_weight[(__cuda_local_var_510370_6_non_const_tid + (iteration * N_spots))]);
#line 1035 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1037 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1037 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1038 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid]) = ((((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid]) < (0.5F)) ? (0.5F) : ((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid]));
#line 1039 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510374_8_non_const_weight = __cuda_local_var_510379_9_non_const_desiredAmp;
#line 1040 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1041 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1042 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1045 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510370_6_non_const_tid == 0)
#line 1046 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1047 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510397_9_non_const_ISpot_sum;
#line 1047 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510397_9_non_const_ISpot_sum = (0.0F);
#line 1047 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1048 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int jj;
#line 1048 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
jj = 0;
#line 1048 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
for (; (jj < N_spots); jj++)
#line 1049 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1050 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510397_9_non_const_ISpot_sum += (((__cuda_local_var_510373_31_non_const_s_aSpot)[jj]) * ((__cuda_local_var_510373_31_non_const_s_aSpot)[jj]));
#line 1051 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1051 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1052 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510373_45_non_const_s_ISpotsMeanSq = (sqrtf(((float)(fdividef(((double)__cuda_local_var_510397_9_non_const_ISpot_sum), ((double)((float)N_spots)))))));
#line 1053 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1054 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1055 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510370_6_non_const_tid < N_spots)
#line 1056 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1057 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510374_8_non_const_weight = ((float)(fdividef(((double)(__cuda_local_var_510374_8_non_const_weight * __cuda_local_var_510373_45_non_const_s_ISpotsMeanSq)), ((double)((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid])))));
#line 1058 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_510375_15_non_const_cSpotAmp_cc.x) = ((cosf(__cuda_local_var_510372_8_non_const_pSpot)) * __cuda_local_var_510374_8_non_const_weight);
#line 1059 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_510375_15_non_const_cSpotAmp_cc.y) = ((sinf(__cuda_local_var_510372_8_non_const_pSpot)) * __cuda_local_var_510374_8_non_const_weight);
#line 1060 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_cSpotAmpNew_cc[__cuda_local_var_510371_6_non_const_spotIndex]) = __cuda_local_var_510375_15_non_const_cSpotAmp_cc;
#line 1062 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (last_iteration)
#line 1062 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[__cuda_local_var_510370_6_non_const_tid]) = __cuda_local_var_510374_8_non_const_weight;
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1065 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[((N_spots * (iteration + 1)) + __cuda_local_var_510370_6_non_const_tid)]) = __cuda_local_var_510374_8_non_const_weight;
#line 1065 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1066 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (save_amps)
#line 1066 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1067 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amplitude[((N_spots * iteration) + __cuda_local_var_510370_6_non_const_tid)]) = ((__cuda_local_var_510373_31_non_const_s_aSpot)[__cuda_local_var_510370_6_non_const_tid]);
#line 1067 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1068 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1069 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 1069 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z9XYtoIndexPfS_Piii(
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_x, 
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_y, 
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int *g_spot_index, 
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1074 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1075 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510425_6_non_const_i;
#line 1075 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510425_6_non_const_i = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 1077 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510425_6_non_const_i < N_spots)
#line 1077 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1078 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_spot_index[__cuda_local_var_510425_6_non_const_i]) = ((((int)(__float2int_rz(((double)(g_x[__cuda_local_var_510425_6_non_const_i]))))) & (data_w - 1)) + ((((int)(__float2int_rz(((double)(g_y[__cuda_local_var_510425_6_non_const_i]))))) & (data_w - 1)) * data_w));
#line 1078 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1080 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1081 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 1081 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__attribute__((global)) __attribute__((__used__)) void _Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi(
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSpotAmp_cc, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
cufftComplex *g_cSpotAmpNew_cc, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int *g_spotIndex, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int N_spots, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int iteration, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_amplitude, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_weight, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
float *g_desiredAmp, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool last_iteration, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__nv_bool save_amps, 
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1220 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1221 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510571_6_non_const_idx;
#line 1223 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510573_6_non_const_spotIndex;
#line 1224 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510574_8_non_const_pSpot;
#line 1226 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510576_8_non_const_weight;
#line 1227 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_510577_15_non_const_cSpotAmp_cc;
#line 1281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510631_8_non_const_N;
#line 1282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510632_6_non_const_half_w;
#line 1283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510633_6_non_const_logN;
#line 1285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510635_6_non_const_X;
#line 1286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_510636_6_non_const_Y;
#line 1221 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510571_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 1228 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510574_8_non_const_pSpot = ((constData)[0]);
#line 1229 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_510571_6_non_const_idx < N_spots)
#line 1230 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1231 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510581_9_non_const_desiredAmp;
#line 1235 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_510585_9_non_const_aSpot;
#line 1231 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510581_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_510571_6_non_const_idx]);
#line 1232 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510573_6_non_const_spotIndex = (g_spotIndex[__cuda_local_var_510571_6_non_const_idx]);
#line 1233 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510577_15_non_const_cSpotAmp_cc = (g_cSpotAmp_cc[__cuda_local_var_510573_6_non_const_spotIndex]);
#line 1234 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510574_8_non_const_pSpot = (atan2f((__cuda_local_var_510577_15_non_const_cSpotAmp_cc.y), (__cuda_local_var_510577_15_non_const_cSpotAmp_cc.x)));
#line 1235 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510585_9_non_const_aSpot = ((float)(fdividef(((double)(hypotf((__cuda_local_var_510577_15_non_const_cSpotAmp_cc.x), (__cuda_local_var_510577_15_non_const_cSpotAmp_cc.y)))), ((double)__cuda_local_var_510581_9_non_const_desiredAmp))));
#line 1236 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 1236 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1237 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510576_8_non_const_weight = (g_weight[(__cuda_local_var_510571_6_non_const_idx + (iteration * N_spots))]);
#line 1237 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1239 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1239 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1240 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510585_9_non_const_aSpot = ((__cuda_local_var_510585_9_non_const_aSpot < (0.5F)) ? (0.5F) : __cuda_local_var_510585_9_non_const_aSpot);
#line 1241 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510576_8_non_const_weight = ((float)(fdividef(((double)__cuda_local_var_510581_9_non_const_desiredAmp), (262144.0))));
#line 1242 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1243 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510576_8_non_const_weight = ((float)(fdividef(((double)__cuda_local_var_510576_8_non_const_weight), ((double)__cuda_local_var_510585_9_non_const_aSpot))));
#line 1244 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_510577_15_non_const_cSpotAmp_cc.x) = ((cosf(__cuda_local_var_510574_8_non_const_pSpot)) * __cuda_local_var_510576_8_non_const_weight);
#line 1245 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_510577_15_non_const_cSpotAmp_cc.y) = ((sinf(__cuda_local_var_510574_8_non_const_pSpot)) * __cuda_local_var_510576_8_non_const_weight);
#line 1246 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_cSpotAmpNew_cc[__cuda_local_var_510573_6_non_const_spotIndex]) = __cuda_local_var_510577_15_non_const_cSpotAmp_cc;
#line 1247 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (last_iteration)
#line 1247 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[__cuda_local_var_510571_6_non_const_idx]) = __cuda_local_var_510576_8_non_const_weight;
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1250 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[((N_spots * (iteration + 1)) + __cuda_local_var_510571_6_non_const_idx)]) = __cuda_local_var_510576_8_non_const_weight;
#line 1250 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1251 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (save_amps)
#line 1251 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1252 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amplitude[((N_spots * iteration) + __cuda_local_var_510571_6_non_const_idx)]) = __cuda_local_var_510585_9_non_const_aSpot;
#line 1252 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1253 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1254 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510631_8_non_const_N = ((float)data_w);
#line 1282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510632_6_non_const_half_w = (data_w >> 1);
#line 1283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510633_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_510631_8_non_const_N)))))));
#line 1285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510635_6_non_const_X = (__cuda_local_var_510571_6_non_const_idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_510631_8_non_const_N - (1.0F))))))));
#line 1286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_510636_6_non_const_Y = ((__cuda_local_var_510571_6_non_const_idx - __cuda_local_var_510635_6_non_const_X) >> __cuda_local_var_510633_6_non_const_logN);
#line 1287 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__cuda_local_var_510635_6_non_const_X > 200) && (__cuda_local_var_510635_6_non_const_X < 312)) || ((__cuda_local_var_510636_6_non_const_Y > 200) && (__cuda_local_var_510636_6_non_const_Y < 312)))
#line 1288 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1289 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSpotAmpNew_cc[__cuda_local_var_510571_6_non_const_idx]).x) = ((float)(fdividef(((double)((g_cSpotAmp_cc[__cuda_local_var_510571_6_non_const_idx]).x)), (262144.0))));
#line 1290 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSpotAmpNew_cc[__cuda_local_var_510571_6_non_const_idx]).y) = ((float)(fdividef(((double)((g_cSpotAmp_cc[__cuda_local_var_510571_6_non_const_idx]).y)), (262144.0))));
#line 1291 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}

