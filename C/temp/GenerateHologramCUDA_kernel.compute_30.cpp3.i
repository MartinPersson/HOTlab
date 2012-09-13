#line 1 "GenerateHologramCUDA_kernel.compute_30.cudafe2.gpu"
#line 1 "GenerateHologramCUDA_kernel.compute_30.cudafe1.gpu"
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





typedef  unsigned long long __texture_type__;
typedef  unsigned long long __surface_type__;



#line 50 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\crt/device_runtime.h"













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
extern  unsigned char _Z8phase2ucf(float);
#line 30 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
extern  int _Z11phase2int32f(float);
#line 34 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
extern  float _Z25ApplyAberrationCorrectionff(float, float);
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
extern  int _Z8fftshiftii(int, int);
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
extern  unsigned char _Z11applyPolLUTfffPfi(float, float, float, float *, int);
#line 256 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
extern  void _Z11warpReduceCPVfS0_i(volatile float *, volatile float *, int);
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



























































































#line 93 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_constants.h"
















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








#line 1334 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"



static __inline__ __attribute__((always_inline)) double fdivide(double a, double b)
{
  return a / b;
}

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

  unsigned int expo, f;
  float res, y, h, l, e, aa;
  const float half = 0.5f;

  aa = a;
  if (fabsf(aa) < 1.175494351e-38f) {
    a = a * 16777216.0f;  
  }
  expo = (__float_as_int (a) >> 23) & 0x1ff;
  f = expo - 1;

  if (f <= 0xFD) {
    if (fabsf(aa) < 1.175494351e-38f) {
      expo = expo - 24;
    }
    a = __int_as_float ((__float_as_int (a) & 0x00ffffff) | 0x3f000000);
    asm ("rsqrt.approx.ftz.f32 %0, %1;" : "=f"(y) : "f"(a));
    
    h = y * y;
    l = __fmaf_rn (y, y, -h);
    e = __fmaf_rn (l, -a, __fmaf_rn (h, -a, 1.0f));
    
    y = __fmaf_rn (__fmaf_rn (0.375f, e, half), e * y, y);
    
    res = __int_as_float (__float_as_int (y) + (((127 - expo) & ~1) << 22));
  } else {
    asm ("rsqrt.approx.ftz.f32 %0, %1;" : "=f"(res) : "f"(a));
  }
  return res;




































#line 1460 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
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


extern uchar1     __surf1Dreadc1(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf1Dreadc2(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf1Dreadc4(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf1Dreads1(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf1Dreads2(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf1Dreads4(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf1Dreadu1(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf1Dreadu2(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf1Dreadu4(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf1Dreadl1(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf1Dreadl2(unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf2Dreadc1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf2Dreadc2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf2Dreadc4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf2Dreads1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf2Dreads2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf2Dreads4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf2Dreadu1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf2Dreadu2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf2Dreadu4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf2Dreadl1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf2Dreadl2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf3Dreadc1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf3Dreadc2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf3Dreadc4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf3Dreads1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf3Dreads2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf3Dreads4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf3Dreadu1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf3Dreadu2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf3Dreadu4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf3Dreadl1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf3Dreadl2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf1DLayeredreadc1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf1DLayeredreadc2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf1DLayeredreadc4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf1DLayeredreads1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf1DLayeredreads2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf1DLayeredreads4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf1DLayeredreadu1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf1DLayeredreadu2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf1DLayeredreadu4(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf1DLayeredreadl1(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf1DLayeredreadl2(unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern uchar1     __surf2DLayeredreadc1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2     __surf2DLayeredreadc2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4     __surf2DLayeredreadc4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1    __surf2DLayeredreads1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2    __surf2DLayeredreads2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4    __surf2DLayeredreads4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint1      __surf2DLayeredreadu1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint2      __surf2DLayeredreadu2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern uint4      __surf2DLayeredreadu4(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf2DLayeredreadl1(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf2DLayeredreadl2(unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec1(    uchar1, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec2(    uchar2, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritec4(    uchar4, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites1(   ushort1, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites2(   ushort2, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwrites4(   ushort4, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu1(     uint1, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu2(     uint2, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwriteu4(     uint4, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritel1(ulonglong1, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1Dwritel2(ulonglong2, unsigned long long, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec1(    uchar1, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec2(    uchar2, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritec4(    uchar4, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites1(   ushort1, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites2(   ushort2, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwrites4(   ushort4, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu1(     uint1, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu2(     uint2, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwriteu4(     uint4, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritel1(ulonglong1, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2Dwritel2(ulonglong2, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec1(    uchar1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec2(    uchar2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritec4(    uchar4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites1(   ushort1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites2(   ushort2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwrites4(   ushort4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu1(     uint1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu2(     uint2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwriteu4(     uint4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritel1(ulonglong1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf3Dwritel2(ulonglong2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec1(    uchar1 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec2(    uchar2 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritec4(    uchar4 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites1(   ushort1 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites2(   ushort2 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwrites4(   ushort4 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu1(     uint1 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu2(     uint2 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwriteu4(     uint4 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritel1(ulonglong1 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf1DLayeredwritel2(ulonglong2 val, unsigned long long, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec1(    uchar1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec2(    uchar2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritec4(    uchar4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites1(   ushort1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites2(   ushort2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwrites4(   ushort4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu1(     uint1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu2(     uint2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwriteu4(     uint4 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritel1(ulonglong1 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);
extern void       __surf2DLayeredwritel2(ulonglong2 val, unsigned long long, int, int, int, enum cudaSurfaceBoundaryMode);















































































































#line 4710 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"
















































#line 4759 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"

#line 4761 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\surface_functions.h"

#line 3509 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\device_functions.h"
#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"







































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 3689 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


extern  uint4 __utexfetchi1D(unsigned long long, int4);
extern   int4 __itexfetchi1D(unsigned long long, int4);
extern float4 __ftexfetchi1D(unsigned long long, int4);
extern  uint4 __utexfetch1D(unsigned long long, float4);
extern   int4 __itexfetch1D(unsigned long long, float4);
extern float4 __ftexfetch1D(unsigned long long, float4);
extern  uint4 __utexfetch2D(unsigned long long, float4);
extern   int4 __itexfetch2D(unsigned long long, float4);
extern float4 __ftexfetch2D(unsigned long long, float4);
extern  uint4 __utexfetch3D(unsigned long long, float4);
extern   int4 __itexfetch3D(unsigned long long, float4);
extern float4 __ftexfetch3D(unsigned long long, float4);
extern  uint4 __utexfetchcube(unsigned long long, float4);
extern   int4 __itexfetchcube(unsigned long long, float4);
extern float4 __ftexfetchcube(unsigned long long, float4);
extern  uint4 __utexfetchl1D(unsigned long long, float4, int);
extern   int4 __itexfetchl1D(unsigned long long, float4, int);
extern float4 __ftexfetchl1D(unsigned long long, float4, int);
extern  uint4 __utexfetchl2D(unsigned long long, float4, int);
extern   int4 __itexfetchl2D(unsigned long long, float4, int);
extern float4 __ftexfetchl2D(unsigned long long, float4, int);
extern  uint4 __utexfetchlcube(unsigned long long, float4, int);
extern   int4 __itexfetchlcube(unsigned long long, float4, int);
extern float4 __ftexfetchlcube(unsigned long long, float4, int);

























#line 3741 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"
































#line 3774 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 9529 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\texture_fetch_functions.h"


extern  uint4 __utex2Dgather0(unsigned long long, float2);
extern  uint4 __utex2Dgather1(unsigned long long, float2);
extern  uint4 __utex2Dgather2(unsigned long long, float2);
extern  uint4 __utex2Dgather3(unsigned long long, float2);
extern   int4 __itex2Dgather0(unsigned long long, float2);
extern   int4 __itex2Dgather1(unsigned long long, float2);
extern   int4 __itex2Dgather2(unsigned long long, float2);
extern   int4 __itex2Dgather3(unsigned long long, float2);
extern float4 __ftex2Dgather0(unsigned long long, float2);
extern float4 __ftex2Dgather1(unsigned long long, float2);
extern float4 __ftex2Dgather2(unsigned long long, float2);
extern float4 __ftex2Dgather3(unsigned long long, float2);

extern  uint4 __utexfetchlod1D(unsigned long long, float4, float);
extern   int4 __itexfetchlod1D(unsigned long long, float4, float);
extern float4 __ftexfetchlod1D(unsigned long long, float4, float);
extern  uint4 __utexfetchlod2D(unsigned long long, float4, float);
extern   int4 __itexfetchlod2D(unsigned long long, float4, float);
extern float4 __ftexfetchlod2D(unsigned long long, float4, float);
extern  uint4 __utexfetchlod3D(unsigned long long, float4, float);
extern   int4 __itexfetchlod3D(unsigned long long, float4, float);
extern float4 __ftexfetchlod3D(unsigned long long, float4, float);
extern  uint4 __utexfetchlodcube(unsigned long long, float4, float);
extern   int4 __itexfetchlodcube(unsigned long long, float4, float);
extern float4 __ftexfetchlodcube(unsigned long long, float4, float);
extern  uint4 __utexfetchlodl1D(unsigned long long, float4, int, float);
extern   int4 __itexfetchlodl1D(unsigned long long, float4, int, float);
extern float4 __ftexfetchlodl1D(unsigned long long, float4, int, float);
extern  uint4 __utexfetchlodl2D(unsigned long long, float4, int, float);
extern   int4 __itexfetchlodl2D(unsigned long long, float4, int, float);
extern float4 __ftexfetchlodl2D(unsigned long long, float4, int, float);
extern  uint4 __utexfetchlodlcube(unsigned long long, float4, int, float);
extern   int4 __itexfetchlodlcube(unsigned long long, float4, int, float);
extern float4 __ftexfetchlodlcube(unsigned long long, float4, int, float);

extern  uint4 __utexfetchgrad1D(unsigned long long, float4, float4, float4);
extern   int4 __itexfetchgrad1D(unsigned long long, float4, float4, float4);
extern float4 __ftexfetchgrad1D(unsigned long long, float4, float4, float4);
extern  uint4 __utexfetchgrad2D(unsigned long long, float4, float4, float4);
extern   int4 __itexfetchgrad2D(unsigned long long, float4, float4, float4);
extern float4 __ftexfetchgrad2D(unsigned long long, float4, float4, float4);
extern  uint4 __utexfetchgrad3D(unsigned long long, float4, float4, float4);
extern   int4 __itexfetchgrad3D(unsigned long long, float4, float4, float4);
extern float4 __ftexfetchgrad3D(unsigned long long, float4, float4, float4);
extern  uint4 __utexfetchgradl1D(unsigned long long, float4, int, float4, float4);
extern   int4 __itexfetchgradl1D(unsigned long long, float4, int, float4, float4);
extern float4 __ftexfetchgradl1D(unsigned long long, float4, int, float4, float4);
extern  uint4 __utexfetchgradl2D(unsigned long long, float4, int, float4, float4);
extern   int4 __itexfetchgradl2D(unsigned long long, float4, int, float4, float4);
extern float4 __ftexfetchgradl2D(unsigned long long, float4, int, float4, float4);














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

  return __fmaf_rn (a, b, c);




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












#line 3415 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
    float up, mh, ml;
    ml = __fmul_rn (x.y, y.y);
    mh = __fmaf_rn (x.y, y.y, -ml);
    mh = __fmaf_rn (x.y, y.x, mh);
    mh = __fmaf_rn (x.x, y.y, mh);
    z.y = up = __fadd_rn (ml, mh);
    z.x = __fadd_rn(__fadd_rn(ml, -up), mh);
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

  
  t = __fmaf_rn (-j, 1.5707962512969971e+000f, a);
  t = __fmaf_rn (-j, 7.5497894158615964e-008f, t);
  t = __fmaf_rn (-j, 5.3903029534742384e-015f, t);





#line 3527 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  if (fabsf(a) > 105615.0f) {
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

  z  = __internal_fmad (z, x2,  0.0f);


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

  float x2, z;
  x2 = __fmul_rn (x, x);
  if (i & 1) {
    z  =                          2.44331571e-5f;
    z  = __internal_fmad (z, x2, -1.38873163e-3f);
  } else {
    z  =                         -1.95152959e-4f;
    z  = __internal_fmad (z, x2,  8.33216087e-3f);
  }
  if (i & 1) {
    z  = __internal_fmad (z, x2,  4.16666457e-2f);
    z  = __internal_fmad (z, x2, -5.00000000e-1f);
  } else {
    z  = __internal_fmad (z, x2, -1.66666546e-1f);
    z  = __internal_fmad (z, x2,  0.0f);
  }
  x = __internal_fmad (z, x, x);
  if (i & 1) x = __internal_fmad (z, x2, 1.0f);
  if (i & 2) x = __internal_fmad (x, -1.0f, 0.0f);









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

  z = __fmaf_rn (z, 3.141592503e+00f, z * 1.509958025e-07f);


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

  z = __fmaf_rn (z, 3.141592503e+00f, z * 1.509958025e-07f);


#line 3881 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  i++;
  z = __internal_sin_cos_kernel (z, i);
  return z;
}

static __inline__ __attribute__((always_inline)) void sincospif(float a, float *sptr, float *cptr)
{


#line 3891 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
  float s, c;
  float t;
  int i;

  t = rintf (a + a);
  i = (int)t;
  t = __internal_fmad (-t, 0.5f, a);

  t = __fmaf_rn (t, 3.141592503e+00f, t * 1.509958025e-07f);


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


  s = __fmaf_rn (a, -a, 1.0f);




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

  







  
  float t1, t2, t3, t4;  
   
   
  t1 = a - 4.0f; 
  t2 = a + 4.0f; 
  t2 = __internal_fast_rcpf (t2);
  t3 = __fmul_rn (t1, t2); 
  t1 = __fmaf_rn (-4.0f, t3 + 1.0f, a); 
  t1 = __fmaf_rn (-t3, a, t1); 
  t2 = __fmaf_rn (t2, t1, t3); 
     
  t1 =                     8.9121708796596137E-004f;
  t1 = __fmaf_rn (t1, t2,  7.0457882096080539E-003f);
  t1 = __fmaf_rn (t1, t2, -1.5866896179569826E-002f);
  t1 = __fmaf_rn (t1, t2,  3.6429623548273796E-002f);
  t1 = __fmaf_rn (t1, t2, -6.6643431826764105E-002f);
  t1 = __fmaf_rn (t1, t2,  9.3814531408377352E-002f);
  t1 = __fmaf_rn (t1, t2, -1.0099056031741439E-001f);
  t1 = __fmaf_rn (t1, t2,  6.8094000865639340E-002f);
  t1 = __fmaf_rn (t1, t2,  1.5377387724225955E-002f);
  t1 = __fmaf_rn (t1, t2, -1.3962107929750070E-001f);
  t1 = __fmaf_rn (t1, t2,  1.2329951349050698E+000f);
    
  t2 = __fmaf_rn (2.0f, a, 1.0f);  
  t2 = __internal_fast_rcpf (t2);
  t3 = __fmul_rn (t1, t2); 
  t4 = __fmaf_rn (a, -2.0f*t3, t1); 
  t4 = t4 - t3; 
  t1 = __fmaf_rn (t4, t2, t3); 
  return t1;























#line 4867 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float erfcf(float a)
{

  float x, t1, t2, t3;
  x = fabsf(a); 
  t1 = __internal_erfcxf_kernel (x);
    
  t2 = -x * x;  
  t3 = __internal_expf_kernel (t2, 0.0f);  
  t2 = __fmaf_rn (-x, x, -t2);  
  t2 = __fmaf_rn (t3, t2, t3);  
  t1 = t1 * t2;  
  if (x > 10.055f) t1 = 0.0f;  
  return (a < 0.0f) ? (2.0f - t1) : t1; 























#line 4907 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
}

static __inline__ __attribute__((always_inline)) float erfcxf(float a)
{

  float x, t1, t2, t3;
  x = fabsf(a); 
  if (x < 10.055f) {
    t1 =  __internal_erfcxf_kernel(x);
  } else {
    
    t2 = __fdividef (0.25f, 0.25f * x);
    t3 = t2 * t2;
    t1 =                    +6.5625f;
    t1 = __fmaf_rn (t1, t3, -1.875f);
    t1 = __fmaf_rn (t1, t3, +0.75f);
    t1 = __fmaf_rn (t1, t3, -0.5f);
    t1 = __fmaf_rn (t1, t3, +1.0f);
    t2 = t2 * 5.6418958354775628e-001f;
    t1 = t1 * t2;
  }
  if (a < 0.0f) {
    
    t2 = __fmul_rz (x, x);  
    t3 = __fmaf_rn (x, x, -t2);
    t2 = __internal_accurate_expf(t2);
    t2 = t2 + t2;
    t3 = __fmaf_rn (t2, t3, t2);
    t1 = t3 - t1;
    if (t2 == __int_as_float(0x7f800000)) t1 = t2;
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

    t = __fmaf_rn (t, -a, t);


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

  t1 = __fmul_rn (a, -0.707106781f);
  t2 = __fmaf_rn (a, -0.707106781f, -t1);
  t2 = __fmaf_rn (a, -1.210161749e-08f, t2);










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





#line 7935 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"



#line 1 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"






























































static __inline__ __attribute__((always_inline)) double rint(double a)
{
  return __builtin_round(a);
}

static __inline__ __attribute__((always_inline)) long int lrint(double a)
{


#line 73 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
  return (long int)__double2int_rn(a);
#line 75 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
}

static __inline__ __attribute__((always_inline)) long long int llrint(double a)
{
  return __double2ll_rn(a);
}

static __inline__ __attribute__((always_inline)) double nearbyint(double a)
{
  return __builtin_round(a);
}







static __inline__ __attribute__((always_inline)) int __signbitd(double a)
{
  return (int)((unsigned int)__double2hiint(a) >> 31);
}

static __inline__ __attribute__((always_inline)) int __isfinited(double a)
{
  return fabs(a) < __longlong_as_double(0x7ff0000000000000ULL);
}

static __inline__ __attribute__((always_inline)) int __isinfd(double a)
{
  return fabs(a) == __longlong_as_double(0x7ff0000000000000ULL);
}

static __inline__ __attribute__((always_inline)) int __isnand(double a)
{
  return !(fabs(a) <= __longlong_as_double(0x7ff0000000000000ULL));
}























#line 136 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"

static __inline__ __attribute__((always_inline)) int __signbit(double a)
{
  return __signbitd(a);
}

static __inline__ __attribute__((always_inline)) int __signbitl(double a)
{
  return __signbit((double)a);
}

static __inline__ __attribute__((always_inline)) int __finite(double a)
{
  return __isfinited(a);
}

static __inline__ __attribute__((always_inline)) int __finitel(double a)
{
  return __finite((double)a);
}

static __inline__ __attribute__((always_inline)) int __isinf(double a)
{
  return __isinfd(a);
}

static __inline__ __attribute__((always_inline)) int __isinfl(double a)
{
  return __isinf((double)a);
}

static __inline__ __attribute__((always_inline)) int __isnan(double a)
{
  return __isnand(a);
}

static __inline__ __attribute__((always_inline)) int __isnanl(double a)
{
  return __isnan((double)a);
}

#line 178 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"

static __inline__ __attribute__((always_inline)) double copysign(double a, double b)
{
  int alo, ahi, bhi;

  bhi = __double2hiint(b);
  alo = __double2loint(a);
  ahi = __double2hiint(a);
  ahi = (bhi & 0x80000000) | (ahi & ~0x80000000);
  return __hiloint2double(ahi, alo);
}


static __inline__ __attribute__((always_inline)) double __internal_copysign_pos(double a, double b)
{
  int alo, ahi, bhi;

  bhi = __double2hiint(b);
  alo = __double2loint(a);
  ahi = __double2hiint(a);
  ahi = (bhi & 0x80000000) | ahi;
  return __hiloint2double(ahi, alo);
}

static __inline__ __attribute__((always_inline)) double __internal_fast_rcp(double a) 
{ 
  double e, y; 
  float x; 
  asm ("cvt.f32.f64.rn     %0,%1;" : "=f"(x) : "d"(a)); 
  asm ("rcp.approx.f32.ftz %0,%1;" : "=f"(x) : "f"(x)); 
  asm ("cvt.f64.f32        %0,%1;" : "=d"(y) : "f"(x)); 
  e = __fma_rn (-a, y, 1.0); 
  e = __fma_rn ( e, e,   e); 
  y = __fma_rn ( e, y,   y); 
  return y; 
} 

static __inline__ __attribute__((always_inline)) double __internal_fast_rsqrt(double a) 
{
  double x, e, t;
  float f;
  asm ("cvt.f32.f64.rn       %0, %1;" : "=f"(f) : "d"(a));
  asm ("rsqrt.approx.f32.ftz %0, %1;" : "=f"(f) : "f"(f));
  asm ("cvt.f64.f32          %0, %1;" : "=d"(x) : "f"(f));
  t = __dmul_rn (x, -x);
  e = __fma_rn (t, a, 1.0);
  t = __dmul_rn (0.75, e);
  t = __fma_rn (t, e, e);
  t = __hiloint2double (__double2hiint(t) - 0x00100000, __double2loint(t));
  t = __fma_rn (t, x, x);
  return t;
}


static __attribute__((constant)) unsigned long long int __cudart_i2opi_d [] = {
  0x6bfb5fb11f8d5d08ULL,
  0x3d0739f78a5292eaULL,
  0x7527bac7ebe5f17bULL,
  0x4f463f669e5fea2dULL,
  0x6d367ecf27cb09b7ULL,
  0xef2f118b5a0a6d1fULL,
  0x1ff897ffde05980fULL,
  0x9c845f8bbdf9283bULL,
  0x3991d639835339f4ULL,
  0xe99c7026b45f7e41ULL,
  0xe88235f52ebb4484ULL,
  0xfe1deb1cb129a73eULL,
  0x06492eea09d1921cULL,
  0xb7246e3a424dd2e0ULL,
  0xfe5163abdebbc561ULL,
  0xdb6295993c439041ULL,
  0xfc2757d1f534ddc0ULL,
  0xa2f9836e4e441529ULL,
};


static

__attribute__((noinline))


#line 260 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
double __internal_trig_reduction_slowpathd(double a, int *quadrant)
{
  unsigned long long int ia;
  unsigned long long int s;
  unsigned long long int result[5];
  unsigned long long int phi, plo;
  unsigned long long int hi, lo;
  unsigned int e;
  int idx;
  int q;
  ia = __double_as_longlong(a);
  s = ia & 0x8000000000000000ULL;
  e = (unsigned int)(((ia >> 52) & 0x7ff) - 1024);
  ia = (ia << 11) | 0x8000000000000000ULL;
  
  idx = 16 - (e >> 6);
  hi = 0;
#pragma unroll 1
  for (q = (idx-1); q < min(18,idx+3); q++) {
    plo = __cudart_i2opi_d[q] * ia;
    phi = __umul64hi (__cudart_i2opi_d[q], ia);
    lo = hi + plo;
    hi = phi + (lo < plo);
    result[q-(idx-1)] = lo;
  }
  result[q-(idx-1)] = hi;
  e = e & 63;
  


  hi = result[3];
  lo = result[2];
  if (e) {
    q = 64 - e;
    hi = (hi << e) | (lo >> q);
    lo = (lo << e) | (result[1] >> q);
  }
  q = (int)(hi >> 62);
  
  hi = (hi << 2) | (lo >> 62);
  lo = (lo << 2);
  e = hi >> 63; 
  q += e;
  if (s) q = -q;
  *quadrant = q;
  if (e) {
    unsigned long long int t;
    hi = ~hi;
    lo = -(long long int)lo;
    t = (lo == 0ULL);
    hi += t;
    s = s ^ 0x8000000000000000ULL;
  }
  
  e = __clzll(hi);
  if (e) {
    hi = (hi << e) | (lo >> (64 - e)); 
  }
  lo = hi * 0xC90FDAA22168C235ULL;
  hi = __umul64hi (hi, 0xC90FDAA22168C235ULL);
  if ((long long int)hi > 0) {
    hi = (hi << 1) | (lo >> 63);
    e++;
  }
  ia = s | ((((unsigned long long int)(1022 - e)) << 52) + 
            ((((hi + 1) >> 10) + 1) >> 1));
  return __longlong_as_double(ia);
}

static __inline__ __attribute__((always_inline)) double __internal_trig_reduction_kerneld(double a, int *quadrant)
{
  double j, t;
  int q;
  
  q = __double2int_rn (a * 6.3661977236758138e-1);
  j = (double)q;
  



  t = __fma_rn (-j, 1.5707963267948966e+000, a);
  t = __fma_rn (-j, 6.1232339957367574e-017, t);
  t = __fma_rn (-j, 8.4784276603688985e-032, t);
  if (fabs(a) > 2147483648.0) {
    t = __internal_trig_reduction_slowpathd (a, &q);
  }
  *quadrant = q;
  return t;
}

static __attribute__((constant)) double __sin_cos_coeffs[16] =
{
   1.590307857061102704e-10,  
  -2.505091138364548653e-08,  
   2.755731498463002875e-06,  
  -1.984126983447703004e-04,  
   8.333333333329348558e-03,  
  -1.666666666666666297e-01,  
   0.00000000000000000,       
   0.00000000000000000,       
  -1.136781730462628422e-11,  
   2.087588337859780049e-09,  
  -2.755731554299955694e-07,  
   2.480158729361868326e-05,  
  -1.388888888888066683e-03,  
   4.166666666666663660e-02,  
  -5.000000000000000000e-01,  
   1.000000000000000000e+00,  
};

static __inline__ __attribute__((always_inline)) double __internal_sin_cos_kerneld(double x, int i)
{    
  const double *coeff = __sin_cos_coeffs + 8 * (i & 1);
  double x2, z;
  x2 = __dmul_rn(x, x);
  z  = (i & 1) ? -1.136781730462628422e-11 :  1.590307857061102704e-10;
  z  = __fma_rn (z, x2, coeff[1]);
  z  = __fma_rn (z, x2, coeff[2]);
  z  = __fma_rn (z, x2, coeff[3]);
  z  = __fma_rn (z, x2, coeff[4]);
  z  = __fma_rn (z, x2, coeff[5]);
  z  = __fma_rn (z, x2, coeff[6]);
  x  = __fma_rn (z, x, x);
  if (i & 1) x = __fma_rn (z, x2, 1.0);
  if (i & 2) x = __fma_rn (x, -1.0, 0.0);
  return x;
}


static __inline__ __attribute__((always_inline)) double __internal_sin_kerneld(double x)
{
  double x2, z;
  x2 = __dmul_rn(x, x);
  z  =                   1.590307857061102704e-10;
  z  = __fma_rn (z, x2, -2.505091138364548653e-08);
  z  = __fma_rn (z, x2,  2.755731498463002875e-06);
  z  = __fma_rn (z, x2, -1.984126983447703004e-04);
  z  = __fma_rn (z, x2,  8.333333333329348558e-03);
  z  = __fma_rn (z, x2, -1.666666666666666297e-01);
  z  = __fma_rn (z, x2,  0.0);
  z  = __fma_rn (z, x, x);
  return z;
}


static __inline__ __attribute__((always_inline)) double __internal_cos_kerneld(double x)
{
  double x2, z;
  x2 = __dmul_rn(x, x);
  z  =                  -1.136781730462628422e-11;   
  z  = __fma_rn (z, x2,  2.087588337859780049e-09);
  z  = __fma_rn (z, x2, -2.755731554299955694e-07);
  z  = __fma_rn (z, x2,  2.480158729361868326e-05);
  z  = __fma_rn (z, x2, -1.388888888888066683e-03);
  z  = __fma_rn (z, x2,  4.166666666666663660e-02);
  z  = __fma_rn (z, x2, -5.000000000000000000e-01);
  z  = __fma_rn (z, x2,  1.000000000000000000e+00);
  return z;
}


static __inline__ __attribute__((always_inline)) double __internal_tan_kerneld(double x, int i)
{
  double x2, z, q;
  x2 = x * x;
  z =                   9.8006287203286300E-006;
  z = __fma_rn (z, x2, -2.4279526494179897E-005);
  z = __fma_rn (z, x2,  4.8644173130937162E-005);
  z = __fma_rn (z, x2, -2.5640012693782273E-005);
  z = __fma_rn (z, x2,  6.7223984330880073E-005);
  z = __fma_rn (z, x2,  8.3559287318211639E-005);
  z = __fma_rn (z, x2,  2.4375039850848564E-004);
  z = __fma_rn (z, x2,  5.8886487754856672E-004);
  z = __fma_rn (z, x2,  1.4560454844672040E-003);
  z = __fma_rn (z, x2,  3.5921008885857180E-003);
  z = __fma_rn (z, x2,  8.8632379218613715E-003);
  z = __fma_rn (z, x2,  2.1869488399337889E-002);
  z = __fma_rn (z, x2,  5.3968253972902704E-002);
  z = __fma_rn (z, x2,  1.3333333333325342E-001);
  z = __fma_rn (z, x2,  3.3333333333333381E-001);
  z = z * x2;
  q = __fma_rn (z, x, x);
  if (i) {
    double s = q - x; 
    double w = __fma_rn (z, x, -s); 
    z = __internal_fast_rcp (q);
    z = -z;
    s = __fma_rn (q, z, 1.0);
    q = __fma_rn (__fma_rn (z, w, s), z, z);
  }           
  return q;
}


static __inline__ __attribute__((always_inline)) double __internal_expm1_kernel (double a)
{
  double t;
  t =                 2.08842685477913050E-009;
  t = __fma_rn (t, a, 2.51366409033551950E-008);
  t = __fma_rn (t, a, 2.75574612072447230E-007);
  t = __fma_rn (t, a, 2.75571539284473460E-006);
  t = __fma_rn (t, a, 2.48015869443077950E-005);
  t = __fma_rn (t, a, 1.98412699878799470E-004);
  t = __fma_rn (t, a, 1.38888888892029890E-003);
  t = __fma_rn (t, a, 8.33333333327662860E-003);
  t = __fma_rn (t, a, 4.16666666666656370E-002);
  t = __fma_rn (t, a, 1.66666666666667380E-001);
  t = __fma_rn (t, a, 5.00000000000000000E-001);
  t = t * a;
  t = __fma_rn (t, a, a);
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_atanh_kernel (double a_1, double a_2)
{
  double a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;
  t =                  7.597322383488143E-002/65536.0;
  t = __fma_rn (t, a2, 6.457518383364042E-002/16384.0);          
  t = __fma_rn (t, a2, 7.705685707267146E-002/4096.0);
  t = __fma_rn (t, a2, 9.090417561104036E-002/1024.0);
  t = __fma_rn (t, a2, 1.111112158368149E-001/256.0);
  t = __fma_rn (t, a2, 1.428571416261528E-001/64.0);
  t = __fma_rn (t, a2, 2.000000000069858E-001/16.0);
  t = __fma_rn (t, a2, 3.333333333333198E-001/4.0);
  t = t * a2;
  t = __fma_rn (t, a, a_2);
  t = t + a_1;
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_fast_log(double a)
{
  int hi, lo;
  double m, u2, t, f, g, u, e;

  
  hi = __double2hiint(a);
  lo = __double2loint(a);
  e = (double)((hi >> 20) & 0x7fe) - 1022;
  m = __hiloint2double ((hi & 0x801fffff) + 0x3fe00000, lo);
  
  f = m - 1.0;
  g = m + 1.0;
  g = __internal_fast_rcp(g);
  u = f * g;
  t = __fma_rn (-2.0, u, f);
  t = __fma_rn (-u, f, t);
  u = __fma_rn (t, g, u);
  
  u2 = u * u;
  t =                  8.5048800515742276E-002;
  t = __fma_rn (t, u2, 4.1724849126860759E-002);
  t = __fma_rn (t, u2, 6.0524726220470643E-002);
  t = __fma_rn (t, u2, 6.6505606704187079E-002);
  t = __fma_rn (t, u2, 7.6932741976622004E-002);
  t = __fma_rn (t, u2, 9.0908722394788727E-002);
  t = __fma_rn (t, u2, 1.1111111976824838E-001);
  t = __fma_rn (t, u2, 1.4285714274058975E-001);
  t = __fma_rn (t, u2, 2.0000000000077559E-001);
  t = __fma_rn (t, u2, 3.3333333333333154E-001);
  t = t * u2;
  t = __fma_rn (t, u, u);
  t = t + t;
  
  t = __fma_rn (e, 6.93147180559945290e-001, t);
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_exp2i_kernel(int b)
{
  return __hiloint2double((b + 1023) << 20, 0);
}

static __inline__ __attribute__((always_inline)) double __internal_half(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi - 0x00100000, ilo);
}

static __inline__ __attribute__((always_inline)) double __internal_twice(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi + 0x00100000, ilo);
}

static __inline__ __attribute__((always_inline)) double sin(double a)
{
  double z;
  int i;
  if (__isinfd(a)) {
    a = __dmul_rn (a, 0.0);
  }
  z = __internal_trig_reduction_kerneld (a, &i);
  
  z = __internal_sin_cos_kerneld (z, i);
  return z;
}

static __inline__ __attribute__((always_inline)) double cos(double a)
{
  double z;
  int i;
  if (__isinfd(a)) {
    a = __dmul_rn (a, 0.0);
  }
  z = __internal_trig_reduction_kerneld(a, &i);
  
  i++;
  z = __internal_sin_cos_kerneld (z, i);
  return z;
}

static __inline__ __attribute__((always_inline)) double sinpi(double a)
{
  double z;
  long long int l;
  int i;
 
  z = rint (__internal_twice(a));
  l = (long long)z;
  i = (int)l;
  z = __fma_rn (-z, 0.5, a);
  z = __fma_rn (z, 3.1415926535897931e+0, z * 1.2246467991473532e-16);
  z = __internal_sin_cos_kerneld (z, i);
  if (a == trunc(a)) {
    z = __dmul_rn (a, 0.0);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double cospi(double a)
{
  double z;
  long long int l;
  int i;
 
  if (fabs(a) > 9007199254740992.0) {
    a = __dmul_rn (a, 0.0);
  }
  z = rint (__internal_twice(a));
  l = (long long)z;
  i = (int)l;
  z = __fma_rn (-z, 0.5, a);
  z = __fma_rn (z, 3.1415926535897931e+0, z * 1.2246467991473532e-16);
  i++;
  z = __internal_sin_cos_kerneld (z, i);
  return z;
}

static __inline__ __attribute__((always_inline)) void sincospi(double a, double *sptr, double *cptr)
{
  double s, c;
  double t;
  long long int l;
  int i;
 
  if (fabs(a) > 9007199254740992.0) {
    a = __dmul_rn (a, 0.0);
  }
  t = rint (__internal_twice(a));
  l = (long long)t;
  i = (int)l;
  t = __fma_rn (-t, 0.5, a);
  t = __fma_rn (t, 3.1415926535897931e+0, t * 1.2246467991473532e-16);
  c = __internal_cos_kerneld(t);
  s = __internal_sin_kerneld(t);
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
    c = __fma_rn (c, -1.0, 0.0);
  }
  if (a == trunc(a)) {
    s = __dmul_rn(a, 0.0);
  }
  *sptr = s;
  *cptr = c;
}





static __inline__ __attribute__((always_inline)) double __cos_offset(double a, double offset)
{
  double z;
  int i;

  z = __internal_trig_reduction_kerneld(a, &i);
  a = z + offset + (i & 3) * 1.5707963267948966e+0;
  return cos(a);
}


static __inline__ __attribute__((always_inline)) void sincos(double a, double *sptr, double *cptr)
{
  double s, c;
  double t;
  int i;
  
  if (__isinfd(a)) {
    a = __dmul_rn (a, 0.0); 
  }
  a = __internal_trig_reduction_kerneld(a, &i);
  c = __internal_cos_kerneld(a);
  s = __internal_sin_kerneld(a);
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
    c = -c;
  }
  *sptr = s;
  *cptr = c;
}

static __inline__ __attribute__((always_inline)) double tan(double a)
{
  double z;
  int i;

  if (__isinfd(a)) {
    a = __dmul_rn (a, 0.0); 
  }
  z = __internal_trig_reduction_kerneld(a, &i);
  
  z = __internal_tan_kerneld(z, i & 1);
  return z;
}

static __inline__ __attribute__((always_inline)) double log(double a)
{
  double m, f, g, u, v, tmp, q, ulo, log_lo, log_hi;
  int ihi, ilo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);

  if ((a > 0.0) && (a < __longlong_as_double(0x7ff0000000000000ULL))) {
    int e = -1023;
    
    if ((unsigned)ihi < (unsigned)0x00100000) {
      a = a * 18014398509481984.0;
      e -= 54;
      ihi = __double2hiint(a);
      ilo = __double2loint(a);
    }
    


    e += (ihi >> 20);
    ihi = (ihi & 0x800fffff) | 0x3ff00000;
    m = __hiloint2double (ihi, ilo);
    if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
      m = __internal_half(m);
      e = e + 1;
    }
    
    f = m - 1.0;
    g = m + 1.0;
    g = __internal_fast_rcp(g);
    u = f * g;
    u = u + u;  
    
    v = u * u;
    q =                 6.7261411553826339E-2/65536.0;
    q = __fma_rn (q, v, 6.6133829643643394E-2/16384.0);
    q = __fma_rn (q, v, 7.6940931149150890E-2/4096.0);
    q = __fma_rn (q, v, 9.0908745692137444E-2/1024.0);
    q = __fma_rn (q, v, 1.1111111499059706E-1/256.0);
    q = __fma_rn (q, v, 1.4285714283305975E-1/64.0);
    q = __fma_rn (q, v, 2.0000000000007223E-1/16.0);
    q = __fma_rn (q, v, 3.3333333333333326E-1/4.0);
    tmp = 2.0 * (f - u);
    tmp = __fma_rn (-u, f, tmp); 
    ulo = g * tmp;               
    
    q = q * v;
     
    log_hi = u;
    log_lo = __fma_rn (q, u, ulo);
    
    q   = __fma_rn ( e, 6.9314718055994529e-1, log_hi);
    tmp = __fma_rn (-e, 6.9314718055994529e-1, q);
    tmp = tmp - log_hi;
    log_hi = q;
    log_lo = log_lo - tmp;
    log_lo = __fma_rn (e, 2.3190468138462996e-17, log_lo);
    q = log_hi + log_lo;
  } else if (__isnand(a)) {
    q = a + a;
  } else if (a == 0) {          
    q = -__longlong_as_double(0x7ff0000000000000ULL);
  } else if (a == __longlong_as_double(0x7ff0000000000000ULL)) { 
    q = a;
  } else {  
    q = __longlong_as_double(0xfff8000000000000ULL);
  }
  return q;
}


static __inline__ __attribute__((always_inline)) double2 __internal_ddadd_xgty (double2 x, double2 y)
{
  double2 z;
  double r, s, e;
  r = x.y + y.y;
  e = x.y - r;
  s = ((e + y.y) + y.x) + x.x;
  z.y = e = r + s;
  z.x = (r - e) + s;
  return z;
}


static __inline__ __attribute__((always_inline)) double2 __internal_ddmul (double2 x, double2 y)
{
  double e;
  double2 t, z;
  t.y = __dmul_rn (x.y, y.y);       
  t.x = __fma_rn (x.y, y.y, -t.y);
  t.x = __fma_rn (x.y, y.x, t.x);
  t.x = __fma_rn (x.x, y.y, t.x);
  z.y = e = t.y + t.x;
  z.x = (t.y - e) + t.x;
  return z;
}

static __inline__ __attribute__((always_inline)) double2 __internal_log_ext_prec(double a)
{
  double2 res;
  double2 qq, cc, uu, tt;
  double f, g, u, v, q, ulo, tmp, m;
  int ilo, ihi, expo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);
  expo = (ihi >> 20) & 0x7ff;
  
  if (expo == 0) {
    a *= 18014398509481984.0;
    ihi = __double2hiint(a);
    ilo = __double2loint(a);
    expo = (ihi >> 20) & 0x7ff;
    expo -= 54;
  }  
  expo -= 1023;
  



  ihi = (ihi & 0x800fffff) | 0x3ff00000;
  m = __hiloint2double (ihi, ilo);
  if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
    m = __internal_half(m);
    expo = expo + 1;
  }
  




  f = m - 1.0;
  g = m + 1.0;
  g = __internal_fast_rcp(g);
  u = f * g;
  u = u + u;  
  
  v = u * u;
  q =                 6.6253631649203309E-2/65536.0;
  q = __fma_rn (q, v, 6.6250935587260612E-2/16384.0);
  q = __fma_rn (q, v, 7.6935437806732829E-2/4096.0);
  q = __fma_rn (q, v, 9.0908878711093280E-2/1024.0);
  q = __fma_rn (q, v, 1.1111111322892790E-1/256.0);
  q = __fma_rn (q, v, 1.4285714284546502E-1/64.0);
  q = __fma_rn (q, v, 2.0000000000003113E-1/16.0);
  q = q * v;
  
  tmp = 2.0 * (f - u);
  tmp = __fma_rn (-u, f, tmp); 
  ulo = g * tmp;               
  
  qq.y = q;
  qq.x = 0.0;
  uu.y = u;
  uu.x = ulo;
  cc.y =  3.3333333333333331E-1/4.0;
  cc.x = -9.8201492846582465E-18/4.0;
  qq = __internal_ddadd_xgty (cc, qq);
  
  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  uu = __internal_ddadd_xgty (uu, qq);
  u   = uu.y;
  ulo = uu.x;
  
  tt.y = __dmul_rn(expo, 6.9314718055966296e-01); 
  tt.x = __dmul_rn(expo, 2.8235290563031577e-13);
  
  res = __internal_ddadd_xgty (tt, uu);
  return res;
}

static __inline__ __attribute__((always_inline)) double log2(double a)
{
  double t;
  t = log(a);
  return __fma_rn (t, 1.4426950408889634e+0, t * 2.0355273740931033e-17);
}

static __inline__ __attribute__((always_inline)) double log10(double a)
{
  double t;
  t = log(a);
  return __fma_rn (t, 4.3429448190325182e-1, t * 1.09831965021676510e-17);
}

static __inline__ __attribute__((always_inline)) double log1p(double a)
{
  double t;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x3fe55555) || ((int)i < (int)0xbfd99999)) {
    
    t = a + 2.0;
    t = a / t;
    t = -a * t;
    t = __internal_atanh_kernel(a, t);
  } else {
    t = log (a + 1.0);
  }
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_exp_poly(double a)
{
  double t;

  t =                 2.5052097064908941E-008;
  t = __fma_rn (t, a, 2.7626262793835868E-007);
  t = __fma_rn (t, a, 2.7557414788000726E-006);
  t = __fma_rn (t, a, 2.4801504602132958E-005);
  t = __fma_rn (t, a, 1.9841269707468915E-004);
  t = __fma_rn (t, a, 1.3888888932258898E-003);
  t = __fma_rn (t, a, 8.3333333333978320E-003);
  t = __fma_rn (t, a, 4.1666666666573905E-002);
  t = __fma_rn (t, a, 1.6666666666666563E-001);
  t = __fma_rn (t, a, 5.0000000000000056E-001);
  t = __fma_rn (t, a, 1.0000000000000000E+000);
  t = __fma_rn (t, a, 1.0000000000000000E+000);
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_exp_scale(double a, int i)
{
  double z;
  int j, k;

  k = (i << 20) + (1023 << 20);
  if (abs(i) < 1021) {
    z = __hiloint2double (k, 0);
    z = z * a;
  } else {
    j = 0x40000000;
    if (i < 0) {
      k += (55 << 20);
      j -= (55 << 20);
    }
    k = k - (1 << 20);
    z = __hiloint2double (j, 0); 
    a = a * z;
    z = __hiloint2double (k, 0);
    z = a * z;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double __internal_exp_kernel(double a, int scale)
{ 
  double t, z;
  int i;

  t = rint (a * 1.4426950408889634e+0);
  i = (int)t;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  t = __internal_exp_poly (z);
  z = __internal_exp_scale (t, i + scale); 
  return z;
}   

static __inline__ __attribute__((always_inline)) double __internal_old_exp_kernel(double a, int scale)
{ 
  double t, z;
  int i, j, k;

  t = rint (a * 1.4426950408889634e+0);
  i = (int)t;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  t = __internal_expm1_kernel (z);
  k = ((i + scale) << 20) + (1023 << 20);
  if (abs(i) < 1021) {
    z = __hiloint2double (k, 0);
    z = __fma_rn (t, z, z);
  } else {
    j = 0x40000000;
    if (i < 0) {
      k += (55 << 20);
      j -= (55 << 20);
    }
    k = k - (1 << 20);
    z = __hiloint2double (j, 0); 
    t = __fma_rn (t, z, z);
    z = __hiloint2double (k, 0);
    z = t * z;
  }
  return z;
}   

static __inline__ __attribute__((always_inline)) double exp(double a)
{
  double t;
  int i;
  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40862e43) || ((int)i < (int)0xC0874911)) {
    t = __internal_exp_kernel(a, 0);
  } else {
    t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
    if (__isnand(a)) {
      t = a + a;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double exp2(double a)
{
  double t, z;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40900000) || ((int)i < (int)0xc090cc00)) {
    t = rint (a);
    z = a - t;
    i = (int)t;
    
    z = __fma_rn (z, 6.9314718055994529e-1, z * 2.3190468138462996e-17);
    t = __internal_exp_poly (z);
    t = __internal_exp_scale (t, i); 
  } else {
    t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
    if (__isnand(a)) {
      t = a + a;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double exp10(double a)
{
  double z;
  double t;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40734414) || ((int)i < (int)0xc07439b8)) {
    t = rint (a * 3.3219280948873622e+0);
    i = (int)t;
    z = __fma_rn (t, -3.0102999566398120e-1, a);
    z = __fma_rn (t, -(-2.8037281277851704e-18), z);
    
    z = __fma_rn (z, 2.3025850929940459e+0, z * (-2.1707562233822494e-16));
    t = __internal_exp_poly (z);
    t = __internal_exp_scale (t, i); 
  } else {
    t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
    if (__isnand(a)) {
      t = a + a;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_expm1_scaled(double a, int scale)
{ 
  double t, z, u;
  int i, j, k;
  k = __double2hiint(a);
  t = rint (a * 1.4426950408889634e+0);
  i = (int)t + scale;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  k = k + k;
  if ((unsigned)k < (unsigned)0x7fb3e647) {
    z = a;
    i = 0;
  }
  t = __internal_expm1_kernel(z);
  j = i;
  if (i == 1024) j--;
  u = __internal_exp2i_kernel(j);
  a = __hiloint2double(0x3ff00000 + (scale << 20), 0);
  a = u - a;
  t = __fma_rn (t, u, a);
  if (i == 1024) t = t + t;
  if (k == 0) t = z;              
  return t;
}   

static __inline__ __attribute__((always_inline)) double expm1(double a)
{
  double t;
  int k;

  k = __double2hiint(a);
  if (((unsigned)k < (unsigned)0x40862e43) || ((int)k < (int)0xc04a8000)) {
    t = __internal_expm1_scaled(a, 0);
  } else {
    t = (k < 0) ? -1.0 : __longlong_as_double(0x7ff0000000000000ULL);
    if (__isnand(a)) {
      t = a + a;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double cosh(double a)
{
  double t, z;
  int i;

  z = fabs(a);
  i = __double2hiint(z);
  if ((unsigned)i < (unsigned)0x408633cf) {
    z = __internal_exp_kernel(z, -2);
    t = __internal_fast_rcp (z);
    z = __fma_rn(2.0, z, 0.125 * t);
  } else {
    if (z > 0.0) a = __int_as_float(0x7f800000);
    z = a + a;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double sinh(double a)
{
  double s, z;
  s = a;
  a = fabs(a);
  if (__double2hiint(a) < 0x3ff00000) { 
    double a2 = a * a;
    
    z =                  1.632386098183803E-010;
    z = __fma_rn (z, a2, 2.504854501385687E-008);
    z = __fma_rn (z, a2, 2.755734274788706E-006);
    z = __fma_rn (z, a2, 1.984126976294102E-004);
    z = __fma_rn (z, a2, 8.333333333452911E-003);
    z = __fma_rn (z, a2, 1.666666666666606E-001);
    z = z * a2;
    z = __fma_rn (z, a, a);
  } else {
    z = __internal_expm1_scaled (a, -1);
    z = z + z / __fma_rn (2.0, z, 1.0);
    if (a >= 7.1047586007394398e+2) {
      z = __longlong_as_double(0x7ff0000000000000ULL);     
    }
  } 
  z = __internal_copysign_pos(z, s);
  return z;
}

static __inline__ __attribute__((always_inline)) double tanh(double a)
{
  double t;
  t = fabs(a);
  if (t >= 0.55) {
    double s;
    s = __internal_fast_rcp (__internal_old_exp_kernel (2.0 * t, 0) + 1.0);
    s = __fma_rn (2.0, -s, 1.0);
    if (t > 350.0) {
      s = 1.0;       
    }
    a = __internal_copysign_pos(s, a);
  } else {
    double a2;
    a2 = a * a;
    t =                   5.102147717274194E-005;
    t = __fma_rn (t, a2, -2.103023983278533E-004);
    t = __fma_rn (t, a2,  5.791370145050539E-004);
    t = __fma_rn (t, a2, -1.453216755611004E-003);
    t = __fma_rn (t, a2,  3.591719696944118E-003);
    t = __fma_rn (t, a2, -8.863194503940334E-003);
    t = __fma_rn (t, a2,  2.186948597477980E-002);
    t = __fma_rn (t, a2, -5.396825387607743E-002);
    t = __fma_rn (t, a2,  1.333333333316870E-001);
    t = __fma_rn (t, a2, -3.333333333333232E-001);
    t = t * a2;
    t = __fma_rn (t, a, a);
    a = __internal_copysign_pos(t, a);
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double __internal_atan_kernel(double a)
{
  double t, a2;
  a2 = a * a;
  t =                  -2.0258553044438358E-005 ;
  t = __fma_rn (t, a2,  2.2302240345758510E-004);
  t = __fma_rn (t, a2, -1.1640717779930576E-003);
  t = __fma_rn (t, a2,  3.8559749383629918E-003);
  t = __fma_rn (t, a2, -9.1845592187165485E-003);
  t = __fma_rn (t, a2,  1.6978035834597331E-002);
  t = __fma_rn (t, a2, -2.5826796814495994E-002);
  t = __fma_rn (t, a2,  3.4067811082715123E-002);
  t = __fma_rn (t, a2, -4.0926382420509971E-002);
  t = __fma_rn (t, a2,  4.6739496199157994E-002);
  t = __fma_rn (t, a2, -5.2392330054601317E-002);
  t = __fma_rn (t, a2,  5.8773077721790849E-002);
  t = __fma_rn (t, a2, -6.6658603633512573E-002);
  t = __fma_rn (t, a2,  7.6922129305867837E-002);
  t = __fma_rn (t, a2, -9.0909012354005225E-002);
  t = __fma_rn (t, a2,  1.1111110678749424E-001);
  t = __fma_rn (t, a2, -1.4285714271334815E-001);
  t = __fma_rn (t, a2,  1.9999999999755019E-001);
  t = __fma_rn (t, a2, -3.3333333333331860E-001);
  t = t * a2;
  t = __fma_rn (t, a, a);
  return t;
}

static __inline__ __attribute__((always_inline)) double atan2(double a, double b)
{
  double t0, t1, t3;
  if (__isnand(a) || __isnand(b)) {
    return a + b;
  }
  t3 = fabs(b);
  t1 = fabs(a);
  if (t3 == 0.0 && t1 == 0.0) {
    t3 = (__double2hiint(b) < 0) ? 3.1415926535897931e+0 : 0;
  } else if (__isinfd(t3) && __isinfd(t1)) {
    t3 = (__double2hiint(b) < 0) ? 2.3561944901923448e+0 : 7.8539816339744828e-1;
  } else {
    t0 = fmax (t1, t3);
    t1 = fmin (t1, t3);
    t3 = t1 / t0;
    t3 = __internal_atan_kernel(t3);
    
    if (fabs(a) > fabs(b)) t3 = 1.5707963267948966e+0 - t3;
    if (b < 0.0)           t3 = 3.1415926535897931e+0 - t3;
  }
  t3 = __internal_copysign_pos(t3, a);
  return t3;
}

static __inline__ __attribute__((always_inline)) double atan(double a)
{
  double t0, t1;
  
  t0 = fabs(a);
  t1 = t0;
  if (t0 > 1.0) {
    t1 = __internal_fast_rcp (t1);
    if (t0 == __longlong_as_double(0x7ff0000000000000ULL)) t1 = 0.0;
  }
  
  t1 = __internal_atan_kernel(t1);
  
  if (t0 > 1.0) {
    t1 = 1.5707963267948966e+0 - t1;
  }
  return __internal_copysign_pos(t1, a);
}

static __inline__ __attribute__((always_inline)) double __internal_asin_kernel(double a)
{
  double r;
  r =                  6.259798167646803E-002;
  r = __fma_rn (r, a, -7.620591484676952E-002);
  r = __fma_rn (r, a,  6.686894879337643E-002);
  r = __fma_rn (r, a, -1.787828218369301E-002); 
  r = __fma_rn (r, a,  1.745227928732326E-002);
  r = __fma_rn (r, a,  1.000422754245580E-002);
  r = __fma_rn (r, a,  1.418108777515123E-002);
  r = __fma_rn (r, a,  1.733194598980628E-002);
  r = __fma_rn (r, a,  2.237350511593569E-002);
  r = __fma_rn (r, a,  3.038188875134962E-002);
  r = __fma_rn (r, a,  4.464285849810986E-002);
  r = __fma_rn (r, a,  7.499999998342270E-002);
  r = __fma_rn (r, a,  1.666666666667375E-001);
  r = r * a;
  return r;
}

static __inline__ __attribute__((always_inline)) double asin(double a)
{
  double fa, t0, t1;
  int ihi, ahi;
  ahi = __double2hiint(a);
  fa  = fabs(a);
  ihi = __double2hiint(fa);
  if (ihi < 0x3fe26666) {
    t1 = fa * fa;
    t1 = __internal_asin_kernel (t1);
    t1 = __fma_rn (t1, fa, fa);
    t1 = __internal_copysign_pos(t1, a);
  } else {
    t1 = __fma_rn (-0.5, fa, 0.5);
    t0 = sqrt (t1);
    t1 = __internal_asin_kernel (t1);
    t0 = -2.0 * t0;
    t1 = __fma_rn (t0, t1, 6.1232339957367660e-17);
    t0 = t0 + 7.8539816339744828e-1;
    t1 = t0 + t1;
    t1 = t1 + 7.8539816339744828e-1;
    if (ahi < 0x3ff00000) {
      t1 = __internal_copysign_pos(t1, a);
    }
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) double acos(double a)
{
  double t0, t1;
  int ihi, ahi;

  ahi = __double2hiint(a);
  t0 = fabs (a);
  ihi = __double2hiint(t0);
  if (ihi < 0x3fe26666) {  
    t1 = t0 * t0;
    t1 = __internal_asin_kernel (t1);
    t0 = __fma_rn (t1, t0, t0);
    if (ahi < 0) {
      t0 = __dadd_rn (t0, +6.1232339957367660e-17);
      t0 = __dadd_rn (1.5707963267948966e+0, +t0);
    } else {
      t0 = __dadd_rn (t0, -6.1232339957367660e-17);
      t0 = __dadd_rn (1.5707963267948966e+0, -t0);
    }
  } else {
    t1 = __fma_rn (-0.5, t0, 0.5);
    t0 = sqrt (t1);
    t1 = __internal_asin_kernel (t1);
    t0 = __fma_rn (t1, t0, t0);
    t0 = 2.0 * t0;
    if (ahi < 0) {    
      t0 = __dadd_rn (t0, -1.2246467991473532e-16);
      t0 = __dadd_rn (3.1415926535897931e+0, -t0);
    }
  } 
  return t0;
}

static __inline__ __attribute__((always_inline)) double acosh(double a)
{
  double t;
  t = a - 1.0;
  if (fabs(t) > 4503599627370496.0) {
    
    t = 6.9314718055994529e-1 + log(a);
  } else {
    t = t + sqrt(__fma_rn(a, t, t));
    t = log1p(t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double asinh(double a)
{
  double fa, t;
  fa = fabs(a);
  if (__double2hiint(fa) >= 0x5ff00000) { 
    t = 6.9314718055994529e-1 + log(fa);
  } else {
    t = fa * fa;
    t = log1p (fa + t / (1.0 + sqrt(1.0 + t)));
  }
  return __internal_copysign_pos(t, a);  
}

static __inline__ __attribute__((always_inline)) double atanh(double a)
{
  double fa, t;
  fa = fabs(a);
  t = (2.0 * fa) / (1.0 - fa);
  t = 0.5 * log1p(t);
  if (__double2hiint(a) < 0) {
    t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double hypot(double a, double b)
{
  double v, w, t, fa, fb;

  fa = fabs(a);
  fb = fabs(b);
  v = fmax(fa, fb);
  w = fmin(fa, fb);
  t = w / v;
  t = __fma_rn (t, t, 1.0);
  t = v * sqrt(t);
  if (v == 0.0) {
    t = v + w;         
  }
  if ((!(fa <= __longlong_as_double(0x7ff0000000000000ULL))) || (!(fb <= __longlong_as_double(0x7ff0000000000000ULL)))) {
    t = a + b;         
  }
  if (v == __longlong_as_double(0x7ff0000000000000ULL)) {
    t = v + w;         
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double cbrt(double a)
{
  float s;
  double t, r;
  int ilo, ihi, expo, nexpo, denorm;

  if ((a == 0.0) || !(__isfinited(a))) {
    t = a + a;
  } else {
    t = fabs(a);
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
    denorm = 0;
    if (expo == 0) {
      
      t = t * 18014398509481984.0;
      denorm = 18;
      ilo = __double2loint(t);
      ihi = __double2hiint(t);
      expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
    }
    
    nexpo = __float2int_rn(0.333333333f * (float)(expo - 1022));
    ihi -= (3 * nexpo) << 20;
    r = __hiloint2double(ihi, ilo);
    
    s = (float)r;
    t = exp2f(-0.333333333f * __log2f(s));    
    t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);
    t = r * t * t;                                        
    t = __fma_rn(t - (r / (t * t)), -3.3333333333333333e-1, t);         
    
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    ihi += (nexpo - denorm) << 20;
    t = __hiloint2double(ihi, ilo);
    if (__double2hiint(a) < 0) {
        t = -t;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double rcbrt(double a)
{
  float s;
  double t, r;
  int ilo, ihi, expo, nexpo, denorm;

  if ((a == 0.0) || !(__isfinited(a))) {
    t = (a == 0.0) ? __longlong_as_double(0x7ff0000000000000ULL) : 0.0;
    if (__isnand(a)) {
      t = a + a;
    }
    t = __internal_copysign_pos (t, a);
  } else {
    t = fabs(a);
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
    denorm = 0;
    if (expo == 0) {
      
      t = t * 18014398509481984.0;
      denorm = 18;
      ilo = __double2loint(t);
      ihi = __double2hiint(t);
      expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
    }
    
    nexpo = __float2int_rn(0.333333333f * (float)(expo - 1022));
    ihi -= (3 * nexpo) << 20;
    r = __hiloint2double(ihi, ilo);
    
    s = (float)r;
    t = exp2f(-0.333333333f * __log2f(s));    
    t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);
    t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);
    
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    ihi += (-(nexpo - denorm)) << 20;
    t = __hiloint2double(ihi, ilo);
    if (__double2hiint(a) < 0) {
      t = -t;
    }
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_accurate_pow(double a, double b)
{
  double2 loga;
  double2 prod;
  double t_hi, t_lo;
  double tmp;
  double e;

  
  loga = __internal_log_ext_prec(a);

  
  if (fabs(b) > 1e304) b *= 1.220703125e-4;
  
  t_hi = __dmul_rn (loga.y, b);   
  t_lo = __fma_rn (loga.y, b, -t_hi);
  t_lo = __fma_rn (loga.x, b, t_lo);
  prod.y = e = t_hi + t_lo;
  prod.x = (t_hi - e) + t_lo;

  
  tmp = exp(prod.y);
  
  if (!__isinfd(tmp)) {
    


    tmp = __fma_rn (tmp, prod.x, tmp);
  }
  return tmp;
}

static __inline__ __attribute__((always_inline)) double pow(double a, double b)
{
  int bIsOddInteger;
  double t;

  if (a == 1.0 || b == 0.0) {
    return 1.0;
  } 
  if (__isnand(a) || __isnand(b)) {
    return a + b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
    return (__double2hiint(b) < 0) ?  0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  }
  if (__isinfd(b)) {
    if (a == -1.0) {
      return 1.0;
    }
    t = fabs(a) > 1.0 ? __longlong_as_double(0x7ff0000000000000ULL) : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  }
  bIsOddInteger = fabs(b - (2.0 * trunc(0.5 * b))) == 1.0;
  if (a == 0.0) {
    t = bIsOddInteger ? a : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  } 
  if (a == -__longlong_as_double(0x7ff0000000000000ULL)) {
    t = (b < 0.0) ? -1.0/a : -a;
    if (bIsOddInteger) {
      t = __longlong_as_double(__double_as_longlong(t)^0x8000000000000000ULL);
    }
    return t;
  } 
  if ((a < 0.0) && (b != trunc(b))) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } 
  t = fabs(a);
  t = __internal_accurate_pow(t, b);
  if ((a < 0.0) && bIsOddInteger) {
    t = __longlong_as_double(__double_as_longlong(t) ^ 0x8000000000000000ULL); 
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double j0(double a)
{
  double t, r, x;
  r = 0.0;
  t = fabs(a);
  if (t <= 3.962451833991041709e0) {
    x = ((t - 2.404825557695772886e0) - -1.176691651530894036e-16);
    r = -4.668055296522885552e-16;
    r = __fma_rn(r, x, -6.433200527258554127e-15);
    r = __fma_rn(r, x, 1.125154785441239563e-13);
    r = __fma_rn(r, x, 1.639521934089839047e-12);
    r = __fma_rn(r, x, -2.534199601670673987e-11);
    r = __fma_rn(r, x, -3.166660834754117150e-10);
    r = __fma_rn(r, x, 4.326570922239416813e-9);
    r = __fma_rn(r, x, 4.470057037570427580e-8);
    r = __fma_rn(r, x, -5.304914441394479122e-7);
    r = __fma_rn(r, x, -4.338826303234108986e-6);
    r = __fma_rn(r, x, 4.372919273219640746e-5);
    r = __fma_rn(r, x, 2.643770367619977359e-4);
    r = __fma_rn(r, x, -2.194200359017061189e-3);
    r = __fma_rn(r, x, -8.657669593307546971e-3);
    r = __fma_rn(r, x, 5.660177443794636720e-2);
    r = __fma_rn(r, x, 1.079387017549203048e-1);
    r = __fma_rn(r, x, -5.191474972894667417e-1);
    r *= x;
  } else if (t <= 7.086903011598661433e0) {
    x = ((t - 5.520078110286310569e0) - 8.088597146146722332e-17);
    r = 3.981548125960367572e-16;
    r = __fma_rn(r, x, 5.384425646000319613e-15);
    r = __fma_rn(r, x, -1.208169028319422770e-13);
    r = __fma_rn(r, x, -1.379791615846302261e-12);
    r = __fma_rn(r, x, 2.745222536512400531e-11);
    r = __fma_rn(r, x, 2.592191169087820231e-10);
    r = __fma_rn(r, x, -4.683395694900245463e-9);
    r = __fma_rn(r, x, -3.511535752914609294e-8);
    r = __fma_rn(r, x, 5.716490702257101151e-7);
    r = __fma_rn(r, x, 3.199786905053059080e-6);
    r = __fma_rn(r, x, -4.652109073941537520e-5);
    r = __fma_rn(r, x, -1.751857289934499263e-4);
    r = __fma_rn(r, x, 2.257440229032805189e-3);
    r = __fma_rn(r, x, 4.631042145907517116e-3);
    r = __fma_rn(r, x, -5.298855286760461442e-2);
    r = __fma_rn(r, x, -3.082065142559364118e-2);
    r = __fma_rn(r, x, 3.402648065583681602e-1);
    r *= x;
  } else if (t <= 1.022263117596264692e1) {
    x = ((t - 8.653727912911012510e0) - -2.928126073207789799e-16);
    r = -4.124304662099804879e-16;
    r = __fma_rn(r, x, -4.596716020545263225e-15);
    r = __fma_rn(r, x, 1.243104269818899322e-13);
    r = __fma_rn(r, x, 1.149516171925282771e-12);
    r = __fma_rn(r, x, -2.806255120718408997e-11);
    r = __fma_rn(r, x, -2.086671689271728758e-10);
    r = __fma_rn(r, x, 4.736806709085623724e-9);
    r = __fma_rn(r, x, 2.694156819104033891e-8);
    r = __fma_rn(r, x, -5.679379510457043302e-7);
    r = __fma_rn(r, x, -2.288391007218622664e-6);
    r = __fma_rn(r, x, 4.482303544494819955e-5);
    r = __fma_rn(r, x, 1.124348678929902644e-4);
    r = __fma_rn(r, x, -2.060335155125843105e-3);
    r = __fma_rn(r, x, -2.509302227210569083e-3);
    r = __fma_rn(r, x, 4.403377496341183417e-2);
    r = __fma_rn(r, x, 1.568412496095387618e-2);
    r = __fma_rn(r, x, -2.714522999283819349e-1);
    r *= x;
  } else if (!__isinfd(t)) {
    double y = __internal_fast_rcp(t);
    double y2 = y * y;
    double f, arg;
    f = -1.749518042413318545e4;
    f = __fma_rn(f, y2, 1.609818826277744392e3);
    f = __fma_rn(f, y2, -9.327297929346906358e1);
    f = __fma_rn(f, y2, 5.754657357710742716e0);
    f = __fma_rn(f, y2, -5.424139391385890407e-1);
    f = __fma_rn(f, y2, 1.035143619926359032e-1);
    f = __fma_rn(f, y2, -6.249999788858900951e-2);
    f = __fma_rn(f, y2, 9.999999999984622301e-1);
    arg = -2.885116220349355482e6;
    arg = __fma_rn(arg, y2, 2.523286424277686747e5);
    arg = __fma_rn(arg, y2, -1.210196952664123455e4);
    arg = __fma_rn(arg, y2, 4.916296687065029687e2);
    arg = __fma_rn(arg, y2, -2.323271029624128303e1);
    arg = __fma_rn(arg, y2, 1.637144946408570334e0);
    arg = __fma_rn(arg, y2, -2.095680312729443495e-1);
    arg = __fma_rn(arg, y2, 6.510416335987831427e-2);
    arg = __fma_rn(arg, y2, -1.249999999978858578e-1);
    arg = __fma_rn(arg, y, t);
    r = rsqrt(t) * 7.9788456080286536e-1 * f * __cos_offset(arg, -7.8539816339744831e-1);
  } else {
  
    r = 0.0;
  }
  return r;
}

static __inline__ __attribute__((always_inline)) double j1(double a)
{
  double t, r, x;
  r = 0.0;
  t = fabs(a);
  if (t <= 2.415852985103756012e0) {
    x = ((t - 0.000000000000000000e-1) - 0.000000000000000000e-1);
    r = 8.018399195792647872e-15;
    r = __fma_rn(r, x, -2.118695440834766210e-13);
    r = __fma_rn(r, x, 2.986477477755093929e-13);
    r = __fma_rn(r, x, 3.264658690505054749e-11);
    r = __fma_rn(r, x, 2.365918244990000764e-12);
    r = __fma_rn(r, x, -5.655535980321211576e-9);
    r = __fma_rn(r, x, 5.337726421910612559e-12);
    r = __fma_rn(r, x, 6.781633105423295953e-7);
    r = __fma_rn(r, x, 3.551463066921223471e-12);
    r = __fma_rn(r, x, -5.425347399642436942e-5);
    r = __fma_rn(r, x, 6.141520947159623346e-13);
    r = __fma_rn(r, x, 2.604166666526797937e-3);
    r = __fma_rn(r, x, 1.929721653824376829e-14);
    r = __fma_rn(r, x, -6.250000000000140166e-2);
    r = __fma_rn(r, x, 4.018089105880317857e-17);
    r = __fma_rn(r, x, 5.000000000000000000e-1);
    r *= x;
  } else if (t <= 5.423646320011565535e0) {
    x = ((t - 3.831705970207512468e0) - -1.526918409008806686e-16);
    r = -5.512780891825248469e-15;
    r = __fma_rn(r, x, 1.208228522598007249e-13);
    r = __fma_rn(r, x, 1.250828223475420523e-12);
    r = __fma_rn(r, x, -2.797792344085172005e-11);
    r = __fma_rn(r, x, -2.362345221426392649e-10);
    r = __fma_rn(r, x, 4.735362223346154893e-9);
    r = __fma_rn(r, x, 3.248288715654640665e-8);
    r = __fma_rn(r, x, -5.727805561466869718e-7);
    r = __fma_rn(r, x, -3.036863401211637746e-6);
    r = __fma_rn(r, x, 4.620870128840665444e-5);
    r = __fma_rn(r, x, 1.746642907294104828e-4);
    r = __fma_rn(r, x, -2.233125339145115504e-3);
    r = __fma_rn(r, x, -5.179719245640395341e-3);
    r = __fma_rn(r, x, 5.341044413272456881e-2);
    r = __fma_rn(r, x, 5.255614585697734181e-2);
    r = __fma_rn(r, x, -4.027593957025529803e-1);
    r *= x;
  } else if (t <= 8.594527402439170415e0) {
    x = ((t - 7.015586669815618848e0) - -9.414165653410388908e-17);
    r = 4.423133061281035160e-15;
    r = __fma_rn(r, x, -1.201320120922480112e-13);
    r = __fma_rn(r, x, -1.120851060072903875e-12);
    r = __fma_rn(r, x, 2.798783538427610697e-11);
    r = __fma_rn(r, x, 2.065329706440647244e-10);
    r = __fma_rn(r, x, -4.720444222309518119e-9);
    r = __fma_rn(r, x, -2.727342515669842039e-8);
    r = __fma_rn(r, x, 5.665269543584226731e-7);
    r = __fma_rn(r, x, 2.401580794492155375e-6);
    r = __fma_rn(r, x, -4.499147527210508836e-5);
    r = __fma_rn(r, x, -1.255079095508101735e-4);
    r = __fma_rn(r, x, 2.105587143238240189e-3);
    r = __fma_rn(r, x, 3.130291726048001991e-3);
    r = __fma_rn(r, x, -4.697047894974023391e-2);
    r = __fma_rn(r, x, -2.138921280934158106e-2);
    r = __fma_rn(r, x, 3.001157525261325398e-1);
    r *= x;
  } else if (!__isinfd(t)) {
    double y = __internal_fast_rcp(t);
    double y2 = y * y;
    double f, arg;
    f = 1.485383005325836814e4;
    f = __fma_rn(f, y2, -1.648096811830575007e3);
    f = __fma_rn(f, y2, 1.101438783774615899e2);
    f = __fma_rn(f, y2, -7.551889723469123794e0);
    f = __fma_rn(f, y2, 8.042591538676234775e-1);
    f = __fma_rn(f, y2, -1.933557706160460576e-1);
    f = __fma_rn(f, y2, 1.874999929278536315e-1);
    f = __fma_rn(f, y2, 1.000000000005957013e0);
    arg = -6.214794014836998139e7;
    arg = __fma_rn(arg, y2, 6.865585630355566740e6);
    arg = __fma_rn(arg, y2, -3.832405418387809768e5);
    arg = __fma_rn(arg, y2, 1.571235974698157042e4);
    arg = __fma_rn(arg, y2, -6.181902458868638632e2);
    arg = __fma_rn(arg, y2, 3.039697998508859911e1);
    arg = __fma_rn(arg, y2, -2.368515193214345782e0);
    arg = __fma_rn(arg, y2, 3.708961732933458433e-1);
    arg = __fma_rn(arg, y2, -1.640624965735098806e-1);
    arg = __fma_rn(arg, y2, 3.749999999976813547e-1);
    arg = __fma_rn(arg, y, t);
    r = rsqrt(t) * 7.9788456080286536e-1 * f * __cos_offset(arg, -2.3561944901923449e0); 
  } else {
  
    r = 0.0;
  }
  if (a < 0.0) {
    r = -r;
  }
  if (t < 1e-30) {
    r = a * 0.5;
  }
  return r;
}

static __inline__ __attribute__((always_inline)) double y0(double a)
{
  double t, r, x;
  r = 0.0;
  t = fabs(a);
  if (t <= 7.967884831395837253e-1) {
    x = t * t;
    r = 5.374806887266719984e-17;
    r = __fma_rn(r, x, -1.690851667879507126e-14);
    r = __fma_rn(r, x, 4.136256698488524230e-12);
    r = __fma_rn(r, x, -7.675202391864751950e-10);
    r = __fma_rn(r, x, 1.032530269160133847e-7);
    r = __fma_rn(r, x, -9.450377743948014966e-6);
    r = __fma_rn(r, x, 5.345180760328465709e-4);
    r = __fma_rn(r, x, -1.584294153256949819e-2);
    r = __fma_rn(r, x, 1.707584669151278045e-1);
    r *= (x - 4.322145581245422363e-1) - -1.259433890510308629e-9;
    r += 6.3661977236758138e-1 * log(t) * j0(t);
  } else if (t <= 2.025627692797012713e0) {
    x = ((t - 8.935769662791674950e-1) - 2.659623153972038487e-17);
    r = -3.316256912072560202e-5;
    r = __fma_rn(r, x, 4.428203736344834521e-4);
    r = __fma_rn(r, x, -2.789856306341642004e-3);
    r = __fma_rn(r, x, 1.105846367024121250e-2);
    r = __fma_rn(r, x, -3.107223394960596102e-2);
    r = __fma_rn(r, x, 6.626287772780777019e-2);
    r = __fma_rn(r, x, -1.125221809100773462e-1);
    r = __fma_rn(r, x, 1.584073414576677719e-1);
    r = __fma_rn(r, x, -1.922273494240156200e-1);
    r = __fma_rn(r, x, 2.093393446684197468e-1);
    r = __fma_rn(r, x, -2.129333765401472400e-1);
    r = __fma_rn(r, x, 2.093702358334368907e-1);
    r = __fma_rn(r, x, -2.037455528835861451e-1);
    r = __fma_rn(r, x, 1.986558106005199553e-1);
    r = __fma_rn(r, x, -1.950678188917356060e-1);
    r = __fma_rn(r, x, 1.933768292594399973e-1);
    r = __fma_rn(r, x, -1.939501240454329922e-1);
    r = __fma_rn(r, x, 1.973356651370720138e-1);
    r = __fma_rn(r, x, -2.048771973714162697e-1);
    r = __fma_rn(r, x, 2.189484270119261000e-1);
    r = __fma_rn(r, x, -2.261217135462367245e-1);
    r = __fma_rn(r, x, 2.205528284817022400e-1);
    r = __fma_rn(r, x, -4.920789342629753871e-1);
    r = __fma_rn(r, x, 8.794208024971947868e-1);
    r *= x;
  } else if (t <= 5.521864739808315283e0) {
    x = ((t - 3.957678419314857976e0) - -1.076434069756270603e-16);
    r = -1.494114173821677059e-15;
    r = __fma_rn(r, x, -1.013791156119442377e-15);
    r = __fma_rn(r, x, 1.577311216240784649e-14);
    r = __fma_rn(r, x, 3.461700831703228390e-14);
    r = __fma_rn(r, x, -1.390049111128330285e-13);
    r = __fma_rn(r, x, -2.651585913591809710e-14);
    r = __fma_rn(r, x, -2.563422432591884445e-13);
    r = __fma_rn(r, x, 3.152125074327968061e-12);
    r = __fma_rn(r, x, -1.135177389965644664e-11);
    r = __fma_rn(r, x, 4.326378313976470202e-11);
    r = __fma_rn(r, x, -1.850879474448778845e-10);
    r = __fma_rn(r, x, 7.689088938316559034e-10);
    r = __fma_rn(r, x, -3.657694558233732877e-9);
    r = __fma_rn(r, x, 1.892629263079880039e-8);
    r = __fma_rn(r, x, -2.185282420222553349e-8);
    r = __fma_rn(r, x, -2.934871156586473999e-7);
    r = __fma_rn(r, x, -4.893369556967850888e-6);
    r = __fma_rn(r, x, 5.092291346093084947e-5);
    r = __fma_rn(r, x, 1.952694025023884918e-4);
    r = __fma_rn(r, x, -2.183518873989655565e-3);
    r = __fma_rn(r, x, -6.852566677116652717e-3);
    r = __fma_rn(r, x, 5.852382210516620525e-2);
    r = __fma_rn(r, x, 5.085590959215843115e-2);
    r = __fma_rn(r, x, -4.025426717750241745e-1);
    r *= x;
  } else if (t <= 8.654198051899094858e0) {
    x = ((t - 7.086051060301772786e0) - -8.835285723085408128e-17);
    r = 3.951031695740590034e-15;
    r = __fma_rn(r, x, -1.110810503294961990e-13);
    r = __fma_rn(r, x, -1.310829469053465703e-12);
    r = __fma_rn(r, x, 2.824621267525193929e-11);
    r = __fma_rn(r, x, 2.302923649674420956e-10);
    r = __fma_rn(r, x, -4.717174021172401832e-9);
    r = __fma_rn(r, x, -3.098470041689314533e-8);
    r = __fma_rn(r, x, 5.749349008560620678e-7);
    r = __fma_rn(r, x, 2.701363791846417715e-6);
    r = __fma_rn(r, x, -4.595140667075523833e-5);
    r = __fma_rn(r, x, -1.406025977407872123e-4);
    r = __fma_rn(r, x, 2.175984016431612746e-3);
    r = __fma_rn(r, x, 3.318348268895694383e-3);
    r = __fma_rn(r, x, -4.802407007625847379e-2);
    r = __fma_rn(r, x, -2.117523655676954025e-2);
    r = __fma_rn(r, x, 3.000976149104751523e-1);
    r *= x;
  } else if (!__isinfd(t)) {
    double y = __internal_fast_rcp(t);
    double y2 = y * y;
    double f, arg;
    f = -1.121823763318965797e4;
    f = __fma_rn(f, y2, 1.277353533221286625e3);
    f = __fma_rn(f, y2, -8.579416608392857313e1);
    f = __fma_rn(f, y2, 5.662125060937317933e0);
    f = __fma_rn(f, y2, -5.417345171533867187e-1);
    f = __fma_rn(f, y2, 1.035114040728313117e-1);
    f = __fma_rn(f, y2, -6.249999082419847168e-2);
    f = __fma_rn(f, y2, 9.999999999913266047e-1);
    arg = 5.562900148486682495e7;
    arg = __fma_rn(arg, y2, -6.039326416769045405e6);
    arg = __fma_rn(arg, y2, 3.303804467797655961e5);
    arg = __fma_rn(arg, y2, -1.320780106166394580e4);
    arg = __fma_rn(arg, y2, 5.015151566589033791e2);
    arg = __fma_rn(arg, y2, -2.329056718317451669e1);
    arg = __fma_rn(arg, y2, 1.637366947135598716e0);
    arg = __fma_rn(arg, y2, -2.095685710525915790e-1);
    arg = __fma_rn(arg, y2, 6.510416411708590256e-2);
    arg = __fma_rn(arg, y2, -1.249999999983588544e-1);
    arg = __fma_rn(arg, y, t);
    r = rsqrt(t) * 7.9788456080286536e-1 * f * __cos_offset(arg, -2.356194490192344929e0);
  } else {
    
    r = 0.0;
  }
  if (a < 0.0) {
    r = __longlong_as_double(0xfff8000000000000ULL);
  }
  return r;
}

static __inline__ __attribute__((always_inline)) double y1(double a)
{
  double t, r, x;
  r = 0.0;
  t = fabs(a);
  if (t < 1e-308) {
    
    r = -6.3661977236758138e-1 / t;
  } else if (t <= 1.298570663015508497e0) {
    x = t * t;
    r = 2.599016977114429789e-13;
    r = __fma_rn(r, x, -5.646936040707309767e-11);
    r = __fma_rn(r, x, 8.931867331036295581e-9);
    r = __fma_rn(r, x, -9.926740542145188722e-7);
    r = __fma_rn(r, x, 7.164268749708438400e-5);
    r = __fma_rn(r, x, -2.955305336079382290e-3);
    r = __fma_rn(r, x, 5.434868816051021539e-2);
    r = __fma_rn(r, x, -1.960570906462389407e-1);
    r *= t;
    r += 6.3661977236758138e-1 * (log(t) * j1(t) - 1.0 / t);
  } else if (t <= 3.213411183412576033e0) {
    x = ((t - 2.197141326031017083e0) - -4.825983587645496567e-17);
    r = -3.204918540045980739e-9;
    r = __fma_rn(r, x, 1.126985362938592444e-8);
    r = __fma_rn(r, x, -9.725182107962382221e-9);
    r = __fma_rn(r, x, 1.083612003186428926e-9);
    r = __fma_rn(r, x, -3.318806432859500986e-8);
    r = __fma_rn(r, x, 1.152009920780307640e-7);
    r = __fma_rn(r, x, -2.165762322547769634e-7);
    r = __fma_rn(r, x, 4.248883280005704350e-7);
    r = __fma_rn(r, x, -9.597291015128258274e-7);
    r = __fma_rn(r, x, 2.143651955073189370e-6);
    r = __fma_rn(r, x, -4.688317848511307222e-6);
    r = __fma_rn(r, x, 1.026066296099274397e-5);
    r = __fma_rn(r, x, -2.248872084380127776e-5);
    r = __fma_rn(r, x, 4.924499594496305443e-5);
    r = __fma_rn(r, x, -1.077609598179235436e-4);
    r = __fma_rn(r, x, 2.358698833633901006e-4);
    r = __fma_rn(r, x, -5.096012361553002188e-4);
    r = __fma_rn(r, x, 1.066853008500809634e-3);
    r = __fma_rn(r, x, -2.595241693183597629e-3);
    r = __fma_rn(r, x, 7.422553332334889779e-3);
    r = __fma_rn(r, x, -4.797811669942416563e-3);
    r = __fma_rn(r, x, -3.285739740527982705e-2);
    r = __fma_rn(r, x, -1.185145457490981991e-1);
    r = __fma_rn(r, x, 5.207864124022675290e-1);
    r *= x;
  } else if (t <= 7.012843454562652030e0) {
    x = ((t - 5.429681040794134717e0) - 4.162514026670377007e-16);
    r = 3.641000824697897087e-16;
    r = __fma_rn(r, x, 6.273399595774693961e-16);
    r = __fma_rn(r, x, -1.656717829265264444e-15);
    r = __fma_rn(r, x, -1.793477656341538960e-14);
    r = __fma_rn(r, x, 4.410546816390020042e-14);
    r = __fma_rn(r, x, -1.387851333205382620e-13);
    r = __fma_rn(r, x, 1.170075916815038820e-12);
    r = __fma_rn(r, x, -4.612886656846937267e-12);
    r = __fma_rn(r, x, 2.222126653072601592e-12);
    r = __fma_rn(r, x, -3.852562731318657049e-10);
    r = __fma_rn(r, x, 5.598172933325135304e-9);
    r = __fma_rn(r, x, 2.550481704211604017e-8);
    r = __fma_rn(r, x, -5.464422265470442015e-7);
    r = __fma_rn(r, x, -2.863862325810848798e-6);
    r = __fma_rn(r, x, 4.645867915733586050e-5);
    r = __fma_rn(r, x, 1.466208928172848137e-4);
    r = __fma_rn(r, x, -2.165998751115648553e-3);
    r = __fma_rn(r, x, -4.160115934377754676e-3);
    r = __fma_rn(r, x, 5.094793974342303605e-2);
    r = __fma_rn(r, x, 3.133867744408601330e-2);
    r = __fma_rn(r, x, -3.403180455234405821e-1);
    r *= x;
  } else if (t <= 9.172580349585524928e0) {
    x = ((t - 8.596005868331168642e0) - 2.841583834006366401e-16);
    r = 2.305446091542135639e-16;
    r = __fma_rn(r, x, -1.372616651279859895e-13);
    r = __fma_rn(r, x, -1.067085198258553687e-12);
    r = __fma_rn(r, x, 2.797080742350623921e-11);
    r = __fma_rn(r, x, 1.883663311130206595e-10);
    r = __fma_rn(r, x, -4.684316504597157100e-9);
    r = __fma_rn(r, x, -2.441923258474869187e-8);
    r = __fma_rn(r, x, 5.586530988420728856e-7);
    r = __fma_rn(r, x, 2.081926450587367740e-6);
    r = __fma_rn(r, x, -4.380739676566903498e-5);
    r = __fma_rn(r, x, -1.042014850604930338e-4);
    r = __fma_rn(r, x, 2.011492014389694005e-3);
    r = __fma_rn(r, x, 2.417956732829416259e-3);
    r = __fma_rn(r, x, -4.340642670740071929e-2);
    r = __fma_rn(r, x, -1.578988436429690570e-2);
    r = __fma_rn(r, x, 2.714598773115335373e-1);
    r *= x;
  } else if (!__isinfd(t)) {
    double y = __internal_fast_rcp(t);
    double y2 = y * y;
    double f, arg;
    f = 1.765479925082250655e4;
    f = __fma_rn(f, y2, -1.801727125254790963e3);
    f = __fma_rn(f, y2, 1.136675500338510290e2);
    f = __fma_rn(f, y2, -7.595622833654403827e0);
    f = __fma_rn(f, y2, 8.045758488114477247e-1);
    f = __fma_rn(f, y2, -1.933571068757167499e-1);
    f = __fma_rn(f, y2, 1.874999959666924232e-1);
    f = __fma_rn(f, y2, 1.000000000003085088e0);
    arg = -8.471357607824940103e7;
    arg = __fma_rn(arg, y2, 8.464204863822212443e6);
    arg = __fma_rn(arg, y2, -4.326694608144371887e5);
    arg = __fma_rn(arg, y2, 1.658700399613585250e4);
    arg = __fma_rn(arg, y2, -6.279420695465894369e2);
    arg = __fma_rn(arg, y2, 3.046796375066591622e1);
    arg = __fma_rn(arg, y2, -2.368852258237428732e0);
    arg = __fma_rn(arg, y2, 3.708971794716567350e-1);
    arg = __fma_rn(arg, y2, -1.640624982860321990e-1);
    arg = __fma_rn(arg, y2, 3.749999999989471755e-1);
    arg = __fma_rn(arg, y, t);
    r = rsqrt(t) * 7.9788456080286536e-1 * f * __cos_offset(arg, -3.926990816987241548e0);
  } else {
    r = 0.0;
  }
  if (a <= 0.0) {
    if (a == 0.0) {
      r = -__longlong_as_double(0x7ff0000000000000ULL);
    } else {
      r = __longlong_as_double(0xfff8000000000000ULL);
    }
  }
  return r;
}





static __inline__ __attribute__((always_inline)) double yn(int n, double a)
{
  double yip1; 
  double yi = y1(a); 
  double yim1 = y0(a); 
  double two_over_a;
  int i;
  if(n == 0) {
    return y0(a);
  }
  if(n == 1) {
    return y1(a);
  }
  if(n < 0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  if(!(a >= 0.0)) {
    
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  if (fabs(a) < 1e-308) {
    
    return -6.3661977236758138e-1 / a;
  }
  two_over_a = 2.0 / a;
  for(i = 1; i < n; i++) {
    
    yip1 = __fma_rn(i * two_over_a,  yi, -yim1);
    yim1 = yi;
    yi = yip1;
  }
  if(__isnand(yip1)) {
    
    return -__longlong_as_double(0x7ff0000000000000ULL);
  }
  return yip1;
}








static __inline__ __attribute__((always_inline)) double jn(int n, double a)
{
  double jip1 = 0.0; 
  double ji = 1.0; 
  double jim1; 
  double lambda = 0.0;
  double sum = 0.0;
  int i;
  if(n == 0) {
    return y0(a);
  }
  if(n == 1) {
    return y1(a);
  }
  if(n < 0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  if(fabs(a) > (double)n - 1.0) {
    
    double two_over_a = 2.0 / a;
    double ji = j1(a); 
    double jim1 = j0(a); 
    for(i = 1; i < n; i++) {
      jip1 = __fma_rn(i * two_over_a, ji, -jim1);
      jim1 = ji;
      ji = jip1;
    }
    return jip1;
  } else {
    


    double two_over_a = 2.0 / a;
    int m = n + (int)sqrt(n * 60);
    m = (m >> 1) << 1;
    for(i = m; i >= 1; --i) {
      
      jim1 = __fma_rn(i * two_over_a, ji, -jip1);
      jip1 = ji;
      
      if(fabsf(jim1) > 1e15) {
        jim1 *= 1e-15;
        jip1 *= 1e-15;
        lambda *= 1e-15;
        sum *= 1e-15;
      }
      ji = jim1;
      if(i - 1 == n) {
        lambda = ji;
      }
      if(i & 1) {
        sum += 2.0 * ji;
      }
    }
    sum -= ji;
    return lambda / sum;
  }
}


static __inline__ __attribute__((always_inline)) double erf(double a)
{
  double t, r, q;

  t = fabs(a);
  if (t >= 1.0) {
    r =                 -1.28836351230756500E-019;
    r = __fma_rn (r, t,  1.30597472161093370E-017);
    r = __fma_rn (r, t, -6.33924401259620500E-016);
    r = __fma_rn (r, t,  1.96231865908940140E-014);
    r = __fma_rn (r, t, -4.35272243559990750E-013);
    r = __fma_rn (r, t,  7.37083927929352150E-012);
    r = __fma_rn (r, t, -9.91402142550461630E-011);
    r = __fma_rn (r, t,  1.08817017167760820E-009);
    r = __fma_rn (r, t, -9.93918713097634620E-009);
    r = __fma_rn (r, t,  7.66739923255145500E-008);
    r = __fma_rn (r, t, -5.05440278302806720E-007);
    r = __fma_rn (r, t,  2.87474157099000620E-006);
    r = __fma_rn (r, t, -1.42246725399722510E-005);
    r = __fma_rn (r, t,  6.16994555079419460E-005);
    r = __fma_rn (r, t, -2.36305221938908790E-004);
    r = __fma_rn (r, t,  8.05032844055371070E-004);
    r = __fma_rn (r, t, -2.45833366629108140E-003);
    r = __fma_rn (r, t,  6.78340988296706120E-003);
    r = __fma_rn (r, t, -1.70509103597554640E-002);
    r = __fma_rn (r, t,  3.93322852515666300E-002);
    r = __fma_rn (r, t, -8.37271292613764040E-002);
    r = __fma_rn (r, t,  1.64870423707623280E-001);
    r = __fma_rn (r, t, -2.99729521787681470E-001);
    r = __fma_rn (r, t,  4.99394435612628580E-001);
    r = __fma_rn (r, t, -7.52014596480123030E-001);
    r = __fma_rn (r, t,  9.99933138314926250E-001);
    r = __fma_rn (r, t, -1.12836725321102670E+000);
    r = __fma_rn (r, t,  9.99998988715182450E-001);
    q = __internal_exp_kernel(-t * t, 0);
    r = __fma_rn (r, -q, 1.0);
    if (t >= 6.5) {
      r = 1.0;
    }    
    a = __internal_copysign_pos(r, a);
  } else {
    q = a * a;
    r =                 -7.77946848895991420E-010;
    r = __fma_rn (r, q,  1.37109803980285950E-008);
    r = __fma_rn (r, q, -1.62063137584932240E-007);
    r = __fma_rn (r, q,  1.64471315712790040E-006);
    r = __fma_rn (r, q, -1.49247123020098620E-005);
    r = __fma_rn (r, q,  1.20552935769006260E-004);
    r = __fma_rn (r, q, -8.54832592931448980E-004);
    r = __fma_rn (r, q,  5.22397760611847340E-003);
    r = __fma_rn (r, q, -2.68661706431114690E-002);
    r = __fma_rn (r, q,  1.12837916709441850E-001);
    r = __fma_rn (r, q, -3.76126389031835210E-001);
    r = __fma_rn (r, q,  1.12837916709551260E+000);
    a = r * a;
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double __internal_erfinv_polyd(double a)
{
  double r, t;
  t = a - 3.125;
  r =                 -3.6444120640178197e-21;
  r = __fma_rn (r, t, -1.6850591381820166e-19);
  r = __fma_rn (r, t,  1.2858480715256400e-18);
  r = __fma_rn (r, t,  1.1157877678025181e-17);
  r = __fma_rn (r, t, -1.3331716628546209e-16);
  r = __fma_rn (r, t,  2.0972767875968562e-17);
  r = __fma_rn (r, t,  6.6376381343583238e-15);
  r = __fma_rn (r, t, -4.0545662729752069e-14);
  r = __fma_rn (r, t, -8.1519341976054722e-14);
  r = __fma_rn (r, t,  2.6335093153082323e-12);
  r = __fma_rn (r, t, -1.2975133253453532e-11);
  r = __fma_rn (r, t, -5.4154120542946279e-11);
  r = __fma_rn (r, t,  1.0512122733215323e-09);
  r = __fma_rn (r, t, -4.1126339803469837e-09);
  r = __fma_rn (r, t, -2.9070369957882005e-08);
  r = __fma_rn (r, t,  4.2347877827932404e-07);
  r = __fma_rn (r, t, -1.3654692000834679e-06);
  r = __fma_rn (r, t, -1.3882523362786469e-05);
  r = __fma_rn (r, t,  1.8673420803405714e-04);
  r = __fma_rn (r, t, -7.4070253416626698e-04);
  r = __fma_rn (r, t, -6.0336708714301491e-03);
  r = __fma_rn (r, t,  2.4015818242558962e-01);
  r = __fma_rn (r, t,  1.6536545626831027e+00);
  return r;
}






static __inline__ __attribute__((always_inline)) double erfinv(double a)
{
  double t, r;

  if (fabs(a) < 1.0) {
    t = __fma_rn (a, -a, 1.0);
    t = - __internal_fast_log (t);
    if (t < 6.25) {
      r = __internal_erfinv_polyd (t);
    } else {
      t = sqrt(t);
      if (t < 4.0) {
        t = t - 3.25;
        r =                  2.2137376921775787e-09;
        r = __fma_rn (r, t,  9.0756561938885391e-08);
        r = __fma_rn (r, t, -2.7517406297064545e-07);
        r = __fma_rn (r, t,  1.8239629214389228e-08);
        r = __fma_rn (r, t,  1.5027403968909828e-06);
        r = __fma_rn (r, t, -4.0138675269815460e-06);
        r = __fma_rn (r, t,  2.9234449089955446e-06);
        r = __fma_rn (r, t,  1.2475304481671779e-05);
        r = __fma_rn (r, t, -4.7318229009055734e-05);
        r = __fma_rn (r, t,  6.8284851459573175e-05);
        r = __fma_rn (r, t,  2.4031110387097894e-05);
        r = __fma_rn (r, t, -3.5503752036284748e-04);
        r = __fma_rn (r, t,  9.5328937973738050e-04);
        r = __fma_rn (r, t, -1.6882755560235047e-03);
        r = __fma_rn (r, t,  2.4914420961078508e-03);
        r = __fma_rn (r, t, -3.7512085075692412e-03);
        r = __fma_rn (r, t,  5.3709145535900636e-03);
        r = __fma_rn (r, t,  1.0052589676941592e+00);
        r = __fma_rn (r, t,  3.0838856104922208e+00);
      } else {
        t = t - 5.0;
        r =                 -2.7109920616438573e-11;
        r = __fma_rn (r, t, -2.5556418169965252e-10);
        r = __fma_rn (r, t,  1.5076572693500548e-09);
        r = __fma_rn (r, t, -3.7894654401267370e-09);
        r = __fma_rn (r, t,  7.6157012080783394e-09);
        r = __fma_rn (r, t, -1.4960026627149240e-08);
        r = __fma_rn (r, t,  2.9147953450901081e-08);
        r = __fma_rn (r, t, -6.7711997758452339e-08);
        r = __fma_rn (r, t,  2.2900482228026655e-07);
        r = __fma_rn (r, t, -9.9298272942317003e-07);
        r = __fma_rn (r, t,  4.5260625972231537e-06);
        r = __fma_rn (r, t, -1.9681778105531671e-05);
        r = __fma_rn (r, t,  7.5995277030017761e-05);
        r = __fma_rn (r, t, -2.1503011930044477e-04);
        r = __fma_rn (r, t, -1.3871931833623122e-04);
        r = __fma_rn (r, t,  1.0103004648645344e+00);
        r = __fma_rn (r, t,  4.8499064014085844e+00);
      }
    }
    r =  r * a;
  } else {
    if (__isnand(a)) {
      r = a + a;
    } else if (fabs(a) == 1.0) {
      r = a * __longlong_as_double(0x7ff0000000000000ULL);
    } else {
      r = __longlong_as_double(0xfff8000000000000ULL);
    }
  }
  return r;
}

static __inline__ __attribute__((always_inline)) double erfcinv(double a)
{
  double p, q, r;
  double t = __dadd_rn (2.0, -a);
  if ((a >= 9.6569334993691083e-4) && (a <= 1.9990343066500631e+0)) {
    t = __dmul_rn (t, a);
    t = __internal_fast_log (t);
    t = __internal_erfinv_polyd (-t);
    t = __fma_rn (t, -a, t);
  } else {
    p = a;
    if (a > 1.0) p = t;
    if (p >= 1e-100) {
      



      t = __internal_fast_log (p);
      t = __internal_fast_rsqrt (-t);
      p =                 2.7834010353747001060e-3;
      p = __fma_rn (p, t, 8.6030097526280260580e-1);
      p = __fma_rn (p, t, 2.1371214997265515515e+0);
      p = __fma_rn (p, t, 3.1598519601132090206e+0);
      p = __fma_rn (p, t, 3.5780402569085996758e+0);
      p = __fma_rn (p, t, 1.5335297523989890804e+0);
      p = __fma_rn (p, t, 3.4839207139657522572e-1);
      p = __fma_rn (p, t, 5.3644861147153648366e-2);
      p = __fma_rn (p, t, 4.3836709877126095665e-3);
      p = __fma_rn (p, t, 1.3858518113496718808e-4);
      p = __fma_rn (p, t, 1.1738352509991666680e-6);
      q =              t+ 2.2859981272422905412e+0;
      q = __fma_rn (q, t, 4.3859045256449554654e+0);
      q = __fma_rn (q, t, 4.6632960348736635331e+0);
      q = __fma_rn (q, t, 3.9846608184671757296e+0);
      q = __fma_rn (q, t, 1.6068377709719017609e+0);
      q = __fma_rn (q, t, 3.5609087305900265560e-1);
      q = __fma_rn (q, t, 5.3963550303200816744e-2);
      q = __fma_rn (q, t, 4.3873424022706935023e-3);
      q = __fma_rn (q, t, 1.3858762165532246059e-4);
      q = __fma_rn (q, t, 1.1738313872397777529e-6);
      t = p / (q * t);
    } else {
      



      t = log (p);
      t = rsqrt (-t);
      p =                 6.9952990607058154858e-1;
      p = __fma_rn (p, t, 1.9507620287580568829e+0);
      p = __fma_rn (p, t, 8.2810030904462690216e-1);
      p = __fma_rn (p, t, 1.1279046353630280005e-1);
      p = __fma_rn (p, t, 6.0537914739162189689e-3);
      p = __fma_rn (p, t, 1.3714329569665128933e-4);
      p = __fma_rn (p, t, 1.2964481560643197452e-6);
      p = __fma_rn (p, t, 4.6156006321345332510e-9);
      p = __fma_rn (p, t, 4.5344689563209398450e-12);
      q =              t+ 1.5771922386662040546e+0;
      q = __fma_rn (q, t, 2.1238242087454993542e+0);
      q = __fma_rn (q, t, 8.4001814918178042919e-1);
      q = __fma_rn (q, t, 1.1311889334355782065e-1);
      q = __fma_rn (q, t, 6.0574830550097140404e-3);
      q = __fma_rn (q, t, 1.3715891988350205065e-4);
      q = __fma_rn (q, t, 1.2964671850944981713e-6);
      q = __fma_rn (q, t, 4.6156017600933592558e-9);
      q = __fma_rn (q, t, 4.5344687377088206783e-12);
      t = p / (q * t);
    }
    if (a > 1.0) t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double normcdfinv(double a)
{
  double z = erfcinv (a + a);
  return __fma_rn (-1.4142135623730949, z, -1.2537167179050217e-16 * z);
}

static __inline__ __attribute__((always_inline)) double __internal_erfcx_kernel (double a)
{
  







  
  double t1, t2, t3, t4;  
   
  
  t1 = a - 4.0; 
  t2 = a + 4.0; 
  t2 = __internal_fast_rcp(t2);
  t3 = t1 * t2;
  t4 = __dadd_rn (t3, 1.0);         
  t1 = __fma_rn (-4.0, t4, a); 
  t1 = __fma_rn (-t3, a, t1); 
  t2 = __fma_rn (t2, t1, t3); 
     
  t1 =                   -3.5602694826817400E-010; 
  t1 = __fma_rn (t1, t2, -9.7239122591447274E-009); 
  t1 = __fma_rn (t1, t2, -8.9350224851649119E-009); 
  t1 = __fma_rn (t1, t2,  1.0404430921625484E-007); 
  t1 = __fma_rn (t1, t2,  5.8806698585341259E-008); 
  t1 = __fma_rn (t1, t2, -8.2147414929116908E-007); 
  t1 = __fma_rn (t1, t2,  3.0956409853306241E-007); 
  t1 = __fma_rn (t1, t2,  5.7087871844325649E-006); 
  t1 = __fma_rn (t1, t2, -1.1231787437600085E-005); 
  t1 = __fma_rn (t1, t2, -2.4399558857200190E-005); 
  t1 = __fma_rn (t1, t2,  1.5062557169571788E-004); 
  t1 = __fma_rn (t1, t2, -1.9925637684786154E-004); 
  t1 = __fma_rn (t1, t2, -7.5777429182785833E-004); 
  t1 = __fma_rn (t1, t2,  5.0319698792599572E-003); 
  t1 = __fma_rn (t1, t2, -1.6197733895953217E-002); 
  t1 = __fma_rn (t1, t2,  3.7167515553018733E-002); 
  t1 = __fma_rn (t1, t2, -6.6330365827532434E-002); 
  t1 = __fma_rn (t1, t2,  9.3732834997115544E-002); 
  t1 = __fma_rn (t1, t2, -1.0103906603555676E-001); 
  t1 = __fma_rn (t1, t2,  6.8097054254735140E-002); 
  t1 = __fma_rn (t1, t2,  1.5379652102605428E-002); 
  t1 = __fma_rn (t1, t2, -1.3962111684056291E-001); 
  t1 = __fma_rn (t1, t2,  1.2329951186255526E+000); 
  
  t2 = __fma_rn (2.0, a, 1.0);  
  t2 = __internal_fast_rcp(t2);
  t3 = t1 * t2; 
  t4 = __fma_rn (a, -2.0*t3, t1); 
  t4 = __dadd_rn (t4, -t3);         
  t1 = __fma_rn (t4, t2, t3); 
  return t1;
}

static __inline__ __attribute__((always_inline)) double erfc(double a)  
{  
  double x, t1, t2, t3;  

  if (!__isnand(a)) {
    x = fabs(a);
    t1 = __internal_erfcx_kernel (x);
    
    t2 = -x * x;
    t3 = __internal_exp_kernel (t2, 0);
    t2 = __fma_rn (-x, x, -t2);
    t2 = __fma_rn (t3, t2, t3);
    t1 = t1 * t2;
    if (__double2hiint(x) > 0x403b4000) t1 = 0.0;
    t1 = (__double2hiint(a) < 0) ? (2.0 - t1) : t1;
  } else {
    t1 = a + a;
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) double erfcx(double a)  
{
  double x, t1, t2, t3;
  x = fabs(a); 
  if ((unsigned)__double2hiint(x) < (unsigned)0x40400000) {
    t1 = __internal_erfcx_kernel(x);
  } else {
    
    t2 = 1.0 / x;
    t3 = t2 * t2;
    t1 =                   -29.53125;
    t1 = __fma_rn (t1, t3, +6.5625);
    t1 = __fma_rn (t1, t3, -1.875);
    t1 = __fma_rn (t1, t3, +0.75);
    t1 = __fma_rn (t1, t3, -0.5);
    t1 = __fma_rn (t1, t3, +1.0);
    t2 = t2 * 5.6418958354775628e-001;
    t1 = t1 * t2;
  }
  if (__double2hiint(a) < 0) {
    
    t2 = x * x;
    t3 = __fma_rn (x, x, -t2);
    t2 = exp (t2);
    t2 = t2 + t2;
    t3 = __fma_rn (t2, t3, t2);
    t1 = t3 - t1;
    if (t2 == __longlong_as_double(0x7ff0000000000000ULL)) t1 = t2;
  }
  return t1;
}





static __inline__ __attribute__((always_inline)) double normcdf(double a)
{
  double ah, al, t1, t2, z;
  if (fabs (a) > 38.5) a = copysign (38.5, a);
  t1 = __dmul_rn (a, -7.0710678118654757e-1);
  t2 = __fma_rn (a, -7.0710678118654757e-1, -t1);
  t2 = __fma_rn (a, -(-4.8336466567264567e-17), t2);
  ah = __dadd_rn (t1, t2);
  z = erfc(ah);
  if (a < -1.0) {
    al = __dadd_rn (t1 - ah, t2);
    t1 = -2.0 * ah * z;       
    z = __fma_rn (t1, al, z);
  }
  return 0.5 * z;
}


static __inline__ __attribute__((always_inline)) double __internal_tgamma_kernel(double a)
{
  double t;
  t =                 -4.42689340712524750E-010;
  t = __fma_rn (t, a, -2.02665918466589540E-007);
  t = __fma_rn (t, a,  1.13812117211195270E-006);
  t = __fma_rn (t, a, -1.25077348166307480E-006);
  t = __fma_rn (t, a, -2.01365017404087710E-005);
  t = __fma_rn (t, a,  1.28050126073544860E-004);
  t = __fma_rn (t, a, -2.15241408115274180E-004);
  t = __fma_rn (t, a, -1.16516754597046040E-003);
  t = __fma_rn (t, a,  7.21894322484663810E-003);
  t = __fma_rn (t, a, -9.62197153268626320E-003);
  t = __fma_rn (t, a, -4.21977345547223940E-002);
  t = __fma_rn (t, a,  1.66538611382503560E-001);
  t = __fma_rn (t, a, -4.20026350341054440E-002);
  t = __fma_rn (t, a, -6.55878071520257120E-001);
  t = __fma_rn (t, a,  5.77215664901532870E-001);
  t = __fma_rn (t, a,  1.00000000000000000E+000);
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_stirling_poly(double a)
{
  double x = __internal_fast_rcp(a);
  double z = 0.0;
  z = __fma_rn (z, x,  8.3949872067208726e-004);
  z = __fma_rn (z, x, -5.1717909082605919e-005);
  z = __fma_rn (z, x, -5.9216643735369393e-004);
  z = __fma_rn (z, x,  6.9728137583658571e-005);
  z = __fma_rn (z, x,  7.8403922172006662e-004);
  z = __fma_rn (z, x, -2.2947209362139917e-004);
  z = __fma_rn (z, x, -2.6813271604938273e-003);
  z = __fma_rn (z, x,  3.4722222222222220e-003);
  z = __fma_rn (z, x,  8.3333333333333329e-002);
  z = __fma_rn (z, x,  1.0000000000000000e+000);
  return z;
}

static __inline__ __attribute__((always_inline)) double __internal_tgamma_stirling(double a)
{
  if (a < 1.7162437695630274e+002) {
    double t_hi, t_lo, e;

    double2 loga, prod;
    double z = __internal_stirling_poly (a);
    double b = a - 0.5;

    
    loga = __internal_log_ext_prec(a);

    
    t_hi = __dmul_rn (loga.y, b);  
    t_lo = __fma_rn (loga.y, b, -t_hi);
    t_lo = __fma_rn (loga.x, b, t_lo);
    prod.y = e = t_hi + t_lo;
    prod.x = (t_hi - e) + t_lo;

    
    loga.y = -a;
    loga.x = 0.0;
    prod = __internal_ddadd_xgty (prod, loga);

    
    a = exp(prod.y);
    
    if (!__isinfd(a)) {
      


      a = __fma_rn (a, prod.x, a);
    }
    a = __fma_rn (a, 2.5066282746310007e+0, a * (-1.8328579980459167e-16));
    a = a * z;
  } else {
    a = __longlong_as_double(0x7ff0000000000000ULL);
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double tgamma(double a)
{
  double s, xx, x = a;
  if (__isnand(a)) {
    return a + a;
  }
  if (fabs(x) < 15.0) {
     



    if (x >= 0.0) {
      s = 1.0;
      xx = x;
      while (xx > 1.5) {
        s = __fma_rn(s, xx, -s);
        xx = xx - 1.0;
      }
      if (x >= 0.5) {
        xx = xx - 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      if (x < 0.5) {
        xx = xx * x;
      }
      s = s / xx;
    } else {
      xx = x;
      s = xx;
      if (x == trunc(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      while (xx < -0.5) {
        s = __fma_rn (s, xx, s);
        xx = xx + 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      s = s * xx;
      s = 1.0 / s;
    }
    return s;
  } else {
    if (x >= 0.0) {
      return __internal_tgamma_stirling (x);
    } else {
      double t;
      int quot;
      if (x == trunc(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      if (x < -185.0) {
        int negative;
        x = floor(x);
        negative = ((x - (2.0 * floor(0.5 * x))) == 1.0);
        return negative ? __longlong_as_double(0x8000000000000000ULL) : 0.0;
      }
      xx = sinpi (x);
      s = __internal_exp_kernel (x, 0);
      x = fabs (x);
      t = x - 0.5;
      if (x > 140.0) t = __internal_half(t);
      t = __internal_accurate_pow (x, t);
      if (x > 140.0) s = s * t;
      s = s * __internal_stirling_poly (x);
      s = s * x;
      s = s * xx;
      s = 1.0 / s;
      s = __fma_rn (s, 1.2533141373155003e+0, (-9.1642899902295834e-17) * s);
      s = s / t;
      return s;
    }
  }
}

static __inline__ __attribute__((always_inline)) double __internal_lgamma_pos(double a)
{
  double sum;
  double s, t;

  if (a >= 3.0) {
    if (a >= 8.0) {
      


      s = __internal_fast_rcp(a);
      t = s * s;
      sum =                   -0.1633436431e-2;
      sum = __fma_rn (sum, t,  0.83645878922e-3);
      sum = __fma_rn (sum, t, -0.5951896861197e-3);
      sum = __fma_rn (sum, t,  0.793650576493454e-3);
      sum = __fma_rn (sum, t, -0.277777777735865004e-2);
      sum = __fma_rn (sum, t,  0.833333333333331018375e-1);
      sum = __fma_rn (sum, s,  0.918938533204672);
      s = __internal_half(log (a));
      t = a - 0.5;
      sum = __fma_rn(s, t, sum);
      t = __fma_rn (s, t, - a);
      t = t + sum;
      if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
        t = a;
      }
    } else {
      a = a - 3.0;
      s =                 -4.02412642744125560E+003;
      s = __fma_rn (s, a, -2.97693796998962000E+005);
      s = __fma_rn (s, a, -6.38367087682528790E+006);
      s = __fma_rn (s, a, -5.57807214576539320E+007);
      s = __fma_rn (s, a, -2.24585140671479230E+008);
      s = __fma_rn (s, a, -4.70690608529125090E+008);
      s = __fma_rn (s, a, -7.62587065363263010E+008);
      s = __fma_rn (s, a, -9.71405112477113250E+008);
      t =              a  -1.02277248359873170E+003;
      t = __fma_rn (t, a, -1.34815350617954480E+005);
      t = __fma_rn (t, a, -4.64321188814343610E+006);
      t = __fma_rn (t, a, -6.48011106025542540E+007);
      t = __fma_rn (t, a, -4.19763847787431360E+008);
      t = __fma_rn (t, a, -1.25629926018000720E+009);
      t = __fma_rn (t, a, -1.40144133846491690E+009);
      t = s / t;
      t = t + a;
    }
  } else if (a >= 1.5) {
    a = a - 2.0;
    t =                  9.84839283076310610E-009;
    t = __fma_rn (t, a, -6.69743850483466500E-008);
    t = __fma_rn (t, a,  2.16565148880011450E-007);
    t = __fma_rn (t, a, -4.86170275781575260E-007);
    t = __fma_rn (t, a,  9.77962097401114400E-007);
    t = __fma_rn (t, a, -2.03041287574791810E-006);
    t = __fma_rn (t, a,  4.36119725805364580E-006);
    t = __fma_rn (t, a, -9.43829310866446590E-006);
    t = __fma_rn (t, a,  2.05106878496644220E-005);
    t = __fma_rn (t, a, -4.49271383742108440E-005);
    t = __fma_rn (t, a,  9.94570466342226000E-005);
    t = __fma_rn (t, a, -2.23154589559238440E-004);
    t = __fma_rn (t, a,  5.09669559149637430E-004);
    t = __fma_rn (t, a, -1.19275392649162300E-003);
    t = __fma_rn (t, a,  2.89051032936815490E-003);
    t = __fma_rn (t, a, -7.38555102806811700E-003);
    t = __fma_rn (t, a,  2.05808084278121250E-002);
    t = __fma_rn (t, a, -6.73523010532073720E-002);
    t = __fma_rn (t, a,  3.22467033424113040E-001);
    t = __fma_rn (t, a,  4.22784335098467190E-001);
    t = t * a;
  } else if (a >= 0.7) {
    a = 1.0 - a;
    t =                 1.17786911519331130E-002;  
    t = __fma_rn (t, a, 3.89046747413522300E-002);
    t = __fma_rn (t, a, 5.90045711362049900E-002);
    t = __fma_rn (t, a, 6.02143305254344420E-002);
    t = __fma_rn (t, a, 5.61652708964839180E-002);
    t = __fma_rn (t, a, 5.75052755193461370E-002);
    t = __fma_rn (t, a, 6.21061973447320710E-002);
    t = __fma_rn (t, a, 6.67614724532521880E-002);
    t = __fma_rn (t, a, 7.14856037245421020E-002);
    t = __fma_rn (t, a, 7.69311251313347100E-002);
    t = __fma_rn (t, a, 8.33503129714946310E-002);
    t = __fma_rn (t, a, 9.09538288991182800E-002);
    t = __fma_rn (t, a, 1.00099591546322310E-001);
    t = __fma_rn (t, a, 1.11334278141734510E-001);
    t = __fma_rn (t, a, 1.25509666613462880E-001);
    t = __fma_rn (t, a, 1.44049896457704160E-001);
    t = __fma_rn (t, a, 1.69557177031481600E-001);
    t = __fma_rn (t, a, 2.07385551032182120E-001);
    t = __fma_rn (t, a, 2.70580808427600350E-001);
    t = __fma_rn (t, a, 4.00685634386517050E-001);
    t = __fma_rn (t, a, 8.22467033424113540E-001);
    t = __fma_rn (t, a, 5.77215664901532870E-001);
    t = t * a;
  } else {
    t=                  -9.04051686831357990E-008;
    t = __fma_rn (t, a,  7.06814224969349250E-007);
    t = __fma_rn (t, a, -3.80702154637902830E-007);
    t = __fma_rn (t, a, -2.12880892189316100E-005);
    t = __fma_rn (t, a,  1.29108470307156190E-004);
    t = __fma_rn (t, a, -2.15932815215386580E-004);
    t = __fma_rn (t, a, -1.16484324388538480E-003);
    t = __fma_rn (t, a,  7.21883433044470670E-003);
    t = __fma_rn (t, a, -9.62194579514229560E-003);
    t = __fma_rn (t, a, -4.21977386992884450E-002);
    t = __fma_rn (t, a,  1.66538611813682460E-001);
    t = __fma_rn (t, a, -4.20026350606819980E-002);
    t = __fma_rn (t, a, -6.55878071519427450E-001);
    t = __fma_rn (t, a,  5.77215664901523870E-001);
    t = t * a;
    t = __fma_rn (t, a, a);
    t = -log (t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double lgamma(double a)
{
  double t;
  double i;
  long long int quot;

  if (!__isnand(a)) {
    t = __internal_lgamma_pos(fabs(a));
    if (a >= 0.0) return t;
    a = fabs(a);
    i = trunc(a);       
    if (a == i) return __longlong_as_double(0x7ff0000000000000ULL); 
    if (a < 1e-19) return -log(a);
    i = fabs(sinpi(a));
    t = log(3.1415926535897931e+0 / (i * a)) - t;
  } else {
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double ldexp(double a, int b)
{
  double fa = fabs (a);
  b = max (-2200, min (b, 2200));
  if ((fa == 0.0) || (fa == __longlong_as_double(0x7ff0000000000000ULL)) || (b == 0)) {
    if (!(fa > 0.0)) a = a + a;
  } else if (abs (b) < 1022) {
    a = a * __internal_exp2i_kernel(b);
  } else if (abs (b) < 2044) {
    int bhalf = b / 2;
    a = a * __internal_exp2i_kernel(bhalf) * __internal_exp2i_kernel(b - bhalf);
  } else {
    int bquarter = b / 4;
    double t = __internal_exp2i_kernel(bquarter);
    a = a * t * t * t *__internal_exp2i_kernel (b - 3 * bquarter);
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double scalbn(double a, int b)
{
  
  return ldexp(a, b);
}

static __inline__ __attribute__((always_inline)) double scalbln(double a, long int b)
{




#line 2826 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
  return scalbn(a, (int)b);
}

static __inline__ __attribute__((always_inline)) double frexp(double a, int *b)
{
  double fa = fabs(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 2.22507385850720140e-308) {
    a *= 18014398509481984.0;
    denorm = 54;
  } else {
    denorm = 0;
  }
  expo = (__double2hiint(a) >> 20) & 0x7ff;
  if ((fa == 0.0) || (expo == 0x7ff)) {
    expo = 0;
    a = a + a;
  } else {
    expo = expo - denorm - 1022;
    a = __longlong_as_double((__double_as_longlong(a) & 0x800fffffffffffffULL)|
                              0x3fe0000000000000ULL);
  }
  *b = expo;
  return a;  
}

static __inline__ __attribute__((always_inline)) double modf(double a, double *b)
{
  double t;
  if (__isfinited(a)) {
    t = trunc(a);
    *b = t;
    t = a - t;
    a = __internal_copysign_pos(t, a);
  } else if (__isinfd(a)) {
    t = 0.0;
    *b = a;
    a = __internal_copysign_pos(t, a);
  } else {
    *b = a + a; 
    a = a + a;
  }
  return a;
}


static __inline__ __attribute__((always_inline)) double fmod(double a, double b)
{
  double orig_a = a;
  double orig_b = b;
  a = fabs(a);
  b = fabs(b);
  if (!((a <= __longlong_as_double(0x7ff0000000000000ULL)) && (b <= __longlong_as_double(0x7ff0000000000000ULL)))) {
    return orig_a + orig_b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    int bhi = __double2hiint(b);
    int blo = __double2loint(b);
    int ahi = __double2hiint(a);
    double scaled_b = 0.0;
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5;
    }
    return __internal_copysign_pos(a, orig_a);
  } else {
    return orig_a;
  }
}



























































#line 2976 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"


static __inline__ __attribute__((always_inline)) double remainder(double a, double b)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot = 0;
  int bhi;
  int blo;
  int ahi;
  if (__isnand(a) || __isnand(b)) {
    return a + b;
  }
  orig_a = a;
  a = fabs(a);
  b = fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    unsigned int nquot = ~quot;
    while (scaled_b >= b) {
      nquot = nquot * 2 + 1;
      if (a >= scaled_b) {
        a -= scaled_b;
        nquot--;
      }
      scaled_b *= 0.5;
    }
    quot = ~nquot;
  }
  
  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && (quot & 1))) {
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  return a;
}


































































#line 3103 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"


static __inline__ __attribute__((always_inline)) double remquo(double a, double b, int *c)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot = 0;  
  unsigned int sign;
  int bhi;
  int blo;
  int ahi;
  if (__isnand(a) || __isnand(b)) {
    *c = quot;
    return a + b;
  }
  orig_a = a;
  sign = 0 - ((__double2hiint(a) ^ __double2hiint(b)) < 0);
  a = fabs(a);
  b = fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    *c = quot;
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    unsigned int nquot = ~quot;
    while (scaled_b >= b) {
      nquot = nquot * 2 + 1;
      if (a >= scaled_b) {
        a -= scaled_b;
        nquot--;
      }
      scaled_b *= 0.5;
    }
    quot = ~nquot;
  }
  
  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && (quot & 1))) {
    quot++;
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *c = quot;
  return a;
}














































































#line 3251 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"

static __inline__ __attribute__((always_inline)) double nextafter(double a, double b)
{
  unsigned long long int ia;
  unsigned long long int ib;
  ia = __double_as_longlong(a);
  ib = __double_as_longlong(b);
  if (__isnand(a) || __isnand(b)) return a + b; 
  if (((ia | ib) << 1) == 0ULL) return b;
  if ((ia + ia) == 0ULL) {
    return __internal_copysign_pos(__longlong_as_double(0x0000000000000001ULL), b);   
  }
  if ((a < b) && (a < 0.0)) ia--;
  if ((a < b) && (a > 0.0)) ia++;
  if ((a > b) && (a < 0.0)) ia++;
  if ((a > b) && (a > 0.0)) ia--;
  a = __longlong_as_double(ia);
  return a;
}

static __inline__ __attribute__((always_inline)) double nan(const char *tagp)
{
  unsigned long long int i;

  i = __internal_nan_kernel (tagp);
  i = (i & 0x000fffffffffffffULL) | 0x7ff8000000000000ULL;
  return __longlong_as_double(i);
}

static __inline__ __attribute__((always_inline)) double round(double a)
{
  double u;
  double fa = fabs(a);
  if (fa >= 4503599627370496.0) {
    u = a;
  } else {      
    u = trunc(fa + 0.5);
    if (fa < 0.5) u = 0;
    u = __internal_copysign_pos(u, a);
  }
  return u;
}

static __inline__ __attribute__((always_inline)) long long int llround(double a)
{
  return (long long int)round(a);
}

static __inline__ __attribute__((always_inline)) long int lround(double a)
{


#line 3304 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
  return (long int)round(a);
#line 3306 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"
}

static __inline__ __attribute__((always_inline)) double fdim(double a, double b)
{
  double t;
  t = a - b;    
  if (a <= b) {
    t = 0.0;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) int ilogb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__isnand(a)) return -((int)((unsigned int)-1 >> 1))-1;
  if (__isinfd(a)) return ((int)((unsigned int)-1 >> 1));
  if (a == 0.0) return -((int)((unsigned int)-1 >> 1))-1;
  a = fabs(a);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return ((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    return -1011 - __clzll(i);
  }
}

static __inline__ __attribute__((always_inline)) double logb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__isnand(a)) return a + a;
  a = fabs(a);
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) return a;
  if (a == 0.0) return -__longlong_as_double(0x7ff0000000000000ULL);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return (double)((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    int expo = -1011 - __clzll(i);
    return (double)expo;
  }
}

static __inline__ __attribute__((always_inline)) double fma(double a, double b, double c)
{
  return __fma_rn(a, b, c);
}

#line 3363 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"

#line 3365 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions_dbl_ptx3.h"

#line 7939 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"

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
 unsigned char _Z8phase2ucf(
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
 int _Z11phase2int32f(
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
 float _Z25ApplyAberrationCorrectionff(
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
 int _Z8fftshiftii(
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int idx, 
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
int data_w){
#line 39 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 40 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 42 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_530904_8_non_const_N;
#line 43 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_530905_6_non_const_half_w;
#line 44 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_530906_6_non_const_logN;
#line 46 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_530908_6_non_const_X;
#line 47 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_530909_6_non_const_Y;
#line 42 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_530904_8_non_const_N = ((float)data_w);
#line 43 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_530905_6_non_const_half_w = (data_w >> 1);
#line 44 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_530906_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_530904_8_non_const_N)))))));
#line 46 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_530908_6_non_const_X = (idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_530904_8_non_const_N - (1.0F))))))));
#line 47 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_530909_6_non_const_Y = ((idx - __cuda_local_var_530908_6_non_const_X) >> __cuda_local_var_530906_6_non_const_logN);
#line 51 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_530908_6_non_const_X < __cuda_local_var_530905_6_non_const_half_w)
#line 53 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 54 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_530909_6_non_const_Y < __cuda_local_var_530905_6_non_const_half_w)
#line 55 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 56 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx + (data_w * __cuda_local_var_530905_6_non_const_half_w)) + __cuda_local_var_530905_6_non_const_half_w;
#line 57 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 59 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 59 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 60 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx - (data_w * __cuda_local_var_530905_6_non_const_half_w)) + __cuda_local_var_530905_6_non_const_half_w;
#line 61 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 62 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 64 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 64 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 65 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_530909_6_non_const_Y < __cuda_local_var_530905_6_non_const_half_w)
#line 66 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 67 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx + (data_w * __cuda_local_var_530905_6_non_const_half_w)) - __cuda_local_var_530905_6_non_const_half_w;
#line 68 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 70 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 70 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 71 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
return (idx - (data_w * __cuda_local_var_530905_6_non_const_half_w)) - __cuda_local_var_530905_6_non_const_half_w;
#line 72 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 73 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 75 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 75 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}
#line 216 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 unsigned char _Z11applyPolLUTfffPfi(
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
 void _Z11warpReduceCPVfS0_i(
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
 int __cuda_local_var_531144_6_non_const_idx;
#line 283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531145_6_non_const_tid;
#line 285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531147_31_non_const_s_x[512];
#line 286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531148_31_non_const_s_y[512];
#line 287 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531149_31_non_const_s_z[512];
#line 288 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531150_31_non_const_s_a[512];
#line 282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531144_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531145_6_non_const_tid = ((int)(threadIdx.x));
#line 290 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531145_6_non_const_tid < N_spots)
#line 291 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531147_31_non_const_s_x)[__cuda_local_var_531145_6_non_const_tid]) = (g_x[__cuda_local_var_531145_6_non_const_tid]);
#line 293 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531148_31_non_const_s_y)[__cuda_local_var_531145_6_non_const_tid]) = (g_y[__cuda_local_var_531145_6_non_const_tid]);
#line 294 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531149_31_non_const_s_z)[__cuda_local_var_531145_6_non_const_tid]) = (g_z[__cuda_local_var_531145_6_non_const_tid]);
#line 295 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531150_31_non_const_s_a)[__cuda_local_var_531145_6_non_const_tid]) = (g_a[__cuda_local_var_531145_6_non_const_tid]);
#line 296 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 297 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 299 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531144_6_non_const_idx < (data_w * data_w))
#line 300 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 302 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531164_9_non_const_d;
#line 303 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531165_10_non_const_X;
#line 304 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531166_10_non_const_Y;
#line 317 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531179_9_non_const_phase2pi;
#line 318 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531180_9_non_const_SLMre;
#line 319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531181_9_non_const_SLMim;
#line 302 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531164_9_non_const_d = (0.001953125F);
#line 303 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531165_10_non_const_X = (__cuda_local_var_531164_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 304 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531166_10_non_const_Y = (__cuda_local_var_531164_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
#line 318 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531180_9_non_const_SLMre = (0.0F);
#line 319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531181_9_non_const_SLMim = (0.0F);
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
__cuda_local_var_531179_9_non_const_phase2pi = ((float)(((double)(((3.141592741F) * ((__cuda_local_var_531149_31_non_const_s_z)[ii])) * ((__cuda_local_var_531165_10_non_const_X * __cuda_local_var_531165_10_non_const_X) + (__cuda_local_var_531166_10_non_const_Y * __cuda_local_var_531166_10_non_const_Y)))) + ((6.2831854820251465) * ((double)((__cuda_local_var_531165_10_non_const_X * ((__cuda_local_var_531147_31_non_const_s_x)[ii])) + (__cuda_local_var_531166_10_non_const_Y * ((__cuda_local_var_531148_31_non_const_s_y)[ii])))))));
#line 325 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531180_9_non_const_SLMre = (__cuda_local_var_531180_9_non_const_SLMre + (((__cuda_local_var_531150_31_non_const_s_a)[ii]) * (cosf(__cuda_local_var_531179_9_non_const_phase2pi))));
#line 326 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531181_9_non_const_SLMim = (__cuda_local_var_531181_9_non_const_SLMim + (((__cuda_local_var_531150_31_non_const_s_a)[ii]) * (sinf(__cuda_local_var_531179_9_non_const_phase2pi))));
#line 327 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 327 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 328 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531179_9_non_const_phase2pi = (atan2f(__cuda_local_var_531181_9_non_const_SLMim, __cuda_local_var_531180_9_non_const_SLMre));
#line 330 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 330 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 331 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531179_9_non_const_phase2pi = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_531179_9_non_const_phase2pi, (d_AberrationCorr_f[__cuda_local_var_531144_6_non_const_idx])));
#line 331 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 333 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 334 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 335 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531197_33_non_const_s_LUTcoeff[120];
#line 336 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531145_6_non_const_tid < N_PolCoeff)
#line 336 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 337 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531197_33_non_const_s_LUTcoeff)[__cuda_local_var_531145_6_non_const_tid]) = (d_LUTPolCoeff_f[__cuda_local_var_531145_6_non_const_tid]);
#line 337 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 338 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 339 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_531144_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_531179_9_non_const_phase2pi, __cuda_local_var_531165_10_non_const_X, __cuda_local_var_531166_10_non_const_Y, (__cuda_local_var_531197_33_non_const_s_LUTcoeff), N_PolCoeff));
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
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_531205_41_non_const_s_LUT[256];
#line 344 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531145_6_non_const_tid < 256)
#line 344 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 345 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531205_41_non_const_s_LUT)[__cuda_local_var_531145_6_non_const_tid]) = (g_LUT[__cuda_local_var_531145_6_non_const_tid]);
#line 345 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 346 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 347 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_531144_6_non_const_idx]) = ((__cuda_local_var_531205_41_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_531179_9_non_const_phase2pi))]);
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 348 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 350 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_SLMuc[__cuda_local_var_531144_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_531179_9_non_const_phase2pi));
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
 int __cuda_local_var_531218_6_non_const_blockSize;
#line 357 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531219_6_non_const_spot_number;
#line 358 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531220_6_non_const_tid;
#line 359 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531221_6_non_const_i;
#line 361 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531223_31_non_const_s_Vre[512];
#line 362 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531224_31_non_const_s_Vim[512];
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531225_8_non_const_s_xm;
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531225_14_non_const_s_ym;
#line 363 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531225_20_non_const_s_zm;
#line 368 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531230_8_non_const_N;
#line 369 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531231_6_non_const_logN;
#line 370 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531232_8_non_const_d;
#line 379 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531241_8_non_const_X1;
#line 380 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531242_8_non_const_Y1;
#line 382 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531244_8_non_const_pSLM_1;
#line 383 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531245_8_non_const_p;
#line 356 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531218_6_non_const_blockSize = 512;
#line 357 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531219_6_non_const_spot_number = ((int)(blockIdx.x));
#line 358 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531220_6_non_const_tid = ((int)(threadIdx.x));
#line 359 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531221_6_non_const_i = __cuda_local_var_531220_6_non_const_tid;
#line 365 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531223_31_non_const_s_Vre)[__cuda_local_var_531220_6_non_const_tid]) = (0.0F);
#line 366 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531224_31_non_const_s_Vim)[__cuda_local_var_531220_6_non_const_tid]) = (0.0F);
#line 368 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531230_8_non_const_N = ((float)data_w);
#line 369 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531231_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_531230_8_non_const_N)))))));
#line 370 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531232_8_non_const_d = (0.001953125F);
#line 373 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531225_8_non_const_s_xm = (g_x[__cuda_local_var_531219_6_non_const_spot_number]);
#line 375 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531225_14_non_const_s_ym = (g_y[__cuda_local_var_531219_6_non_const_spot_number]);
#line 377 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531225_20_non_const_s_zm = (g_z[__cuda_local_var_531219_6_non_const_spot_number]);
#line 379 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531241_8_non_const_X1 = ((float)(((double)__cuda_local_var_531232_8_non_const_d) * (((double)((float)__cuda_local_var_531220_6_non_const_tid)) - (256.0))));
#line 380 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531242_8_non_const_Y1 = ((float)(((double)(-__cuda_local_var_531232_8_non_const_d)) * (256.0)));
#line 384 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_531221_6_non_const_i < N_pixels)
#line 385 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 386 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531244_8_non_const_pSLM_1 = (((float)(fdividef(((double)((6.283185482F) * ((float)(g_pSLM_uc[__cuda_local_var_531221_6_non_const_i])))), (255.0)))) - (3.141592741F));
#line 387 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531245_8_non_const_p = (__cuda_local_var_531244_8_non_const_pSLM_1 - ((3.141592741F) * ((__cuda_local_var_531225_20_non_const_s_zm * ((__cuda_local_var_531241_8_non_const_X1 * __cuda_local_var_531241_8_non_const_X1) + (__cuda_local_var_531242_8_non_const_Y1 * __cuda_local_var_531242_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_531241_8_non_const_X1 * __cuda_local_var_531225_8_non_const_s_xm) + (__cuda_local_var_531242_8_non_const_Y1 * __cuda_local_var_531225_14_non_const_s_ym))))));
#line 389 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531223_31_non_const_s_Vre)[__cuda_local_var_531220_6_non_const_tid]) += (cosf(__cuda_local_var_531245_8_non_const_p));
#line 390 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531224_31_non_const_s_Vim)[__cuda_local_var_531220_6_non_const_tid]) += (sinf(__cuda_local_var_531245_8_non_const_p));
#line 392 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531221_6_non_const_i += __cuda_local_var_531218_6_non_const_blockSize;
#line 393 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531242_8_non_const_Y1 += __cuda_local_var_531232_8_non_const_d;
#line 394 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 395 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 397 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531220_6_non_const_tid < 256)
#line 398 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 399 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531223_31_non_const_s_Vre)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531223_31_non_const_s_Vre)[(__cuda_local_var_531220_6_non_const_tid + 256)]);
#line 400 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531224_31_non_const_s_Vim)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531224_31_non_const_s_Vim)[(__cuda_local_var_531220_6_non_const_tid + 256)]);
#line 401 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 402 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 404 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531220_6_non_const_tid < 128)
#line 405 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 406 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531223_31_non_const_s_Vre)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531223_31_non_const_s_Vre)[(__cuda_local_var_531220_6_non_const_tid + 128)]);
#line 407 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531224_31_non_const_s_Vim)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531224_31_non_const_s_Vim)[(__cuda_local_var_531220_6_non_const_tid + 128)]);
#line 408 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 409 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 411 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531220_6_non_const_tid < 64)
#line 412 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 413 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531223_31_non_const_s_Vre)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531223_31_non_const_s_Vre)[(__cuda_local_var_531220_6_non_const_tid + 64)]);
#line 414 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531224_31_non_const_s_Vim)[__cuda_local_var_531220_6_non_const_tid]) += ((__cuda_local_var_531224_31_non_const_s_Vim)[(__cuda_local_var_531220_6_non_const_tid + 64)]);
#line 415 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 416 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 418 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531220_6_non_const_tid < 32)
#line 418 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 419 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_531223_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_531224_31_non_const_s_Vim)), __cuda_local_var_531220_6_non_const_tid);
#line 419 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 421 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531220_6_non_const_tid == 0)
#line 422 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 423 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531285_9_non_const_cSpotAmpRe;
#line 424 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531286_9_non_const_cSpotAmpIm;
#line 423 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531285_9_non_const_cSpotAmpRe = ((float)(fdivide(((double)((__cuda_local_var_531223_31_non_const_s_Vre)[0])), (262144.0))));
#line 424 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531286_9_non_const_cSpotAmpIm = ((float)(fdivide(((double)((__cuda_local_var_531224_31_non_const_s_Vim)[0])), (262144.0))));
#line 425 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amps[__cuda_local_var_531219_6_non_const_spot_number]) = (hypotf(__cuda_local_var_531285_9_non_const_cSpotAmpRe, __cuda_local_var_531286_9_non_const_cSpotAmpIm));
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
 int __cuda_local_var_531298_6_non_const_blockSize;
#line 437 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531299_6_non_const_spot_number;
#line 438 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531300_6_non_const_tid;
#line 439 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531301_6_non_const_i;
#line 441 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531303_31_non_const_s_Vre[512];
#line 442 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531304_31_non_const_s_Vim[512];
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531306_8_non_const_s_xm;
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531306_14_non_const_s_ym;
#line 444 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531306_20_non_const_s_zm;
#line 453 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531315_8_non_const_d;
#line 454 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531316_8_non_const_X1;
#line 455 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531317_8_non_const_Y1;
#line 457 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531319_8_non_const_p;
#line 436 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531298_6_non_const_blockSize = 512;
#line 437 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531299_6_non_const_spot_number = ((int)(blockIdx.x));
#line 438 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531300_6_non_const_tid = ((int)(threadIdx.x));
#line 439 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531301_6_non_const_i = __cuda_local_var_531300_6_non_const_tid;
#line 446 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531303_31_non_const_s_Vre)[__cuda_local_var_531300_6_non_const_tid]) = (0.0F);
#line 447 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531304_31_non_const_s_Vim)[__cuda_local_var_531300_6_non_const_tid]) = (0.0F);
#line 449 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531306_8_non_const_s_xm = (g_x[__cuda_local_var_531299_6_non_const_spot_number]);
#line 450 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531306_14_non_const_s_ym = (g_y[__cuda_local_var_531299_6_non_const_spot_number]);
#line 451 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531306_20_non_const_s_zm = (g_z[__cuda_local_var_531299_6_non_const_spot_number]);
#line 453 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531315_8_non_const_d = (0.001953125F);
#line 454 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531316_8_non_const_X1 = (__cuda_local_var_531315_8_non_const_d * ((float)(__cuda_local_var_531300_6_non_const_tid - 256)));
#line 455 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531317_8_non_const_Y1 = ((-__cuda_local_var_531315_8_non_const_d) * (256.0F));
#line 459 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_531301_6_non_const_i < n)
#line 460 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 461 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531319_8_non_const_p = ((g_pSLM2pi[__cuda_local_var_531301_6_non_const_i]) - ((3.141592741F) * ((__cuda_local_var_531306_20_non_const_s_zm * ((__cuda_local_var_531316_8_non_const_X1 * __cuda_local_var_531316_8_non_const_X1) + (__cuda_local_var_531317_8_non_const_Y1 * __cuda_local_var_531317_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_531316_8_non_const_X1 * __cuda_local_var_531306_8_non_const_s_xm) + (__cuda_local_var_531317_8_non_const_Y1 * __cuda_local_var_531306_14_non_const_s_ym))))));
#line 463 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531303_31_non_const_s_Vre)[__cuda_local_var_531300_6_non_const_tid]) += (cosf(__cuda_local_var_531319_8_non_const_p));
#line 464 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531304_31_non_const_s_Vim)[__cuda_local_var_531300_6_non_const_tid]) += (sinf(__cuda_local_var_531319_8_non_const_p));
#line 466 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531301_6_non_const_i += __cuda_local_var_531298_6_non_const_blockSize;
#line 467 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531317_8_non_const_Y1 += __cuda_local_var_531315_8_non_const_d;
#line 468 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 469 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 471 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531300_6_non_const_tid < 256)
#line 472 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 473 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531303_31_non_const_s_Vre)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531303_31_non_const_s_Vre)[(__cuda_local_var_531300_6_non_const_tid + 256)]);
#line 474 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531304_31_non_const_s_Vim)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531304_31_non_const_s_Vim)[(__cuda_local_var_531300_6_non_const_tid + 256)]);
#line 475 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 476 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 478 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531300_6_non_const_tid < 128)
#line 479 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 480 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531303_31_non_const_s_Vre)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531303_31_non_const_s_Vre)[(__cuda_local_var_531300_6_non_const_tid + 128)]);
#line 481 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531304_31_non_const_s_Vim)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531304_31_non_const_s_Vim)[(__cuda_local_var_531300_6_non_const_tid + 128)]);
#line 482 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 483 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 485 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531300_6_non_const_tid < 64)
#line 486 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 487 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531303_31_non_const_s_Vre)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531303_31_non_const_s_Vre)[(__cuda_local_var_531300_6_non_const_tid + 64)]);
#line 488 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531304_31_non_const_s_Vim)[__cuda_local_var_531300_6_non_const_tid]) += ((__cuda_local_var_531304_31_non_const_s_Vim)[(__cuda_local_var_531300_6_non_const_tid + 64)]);
#line 489 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 490 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 493 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531300_6_non_const_tid < 32)
#line 493 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 494 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_531303_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_531304_31_non_const_s_Vim)), __cuda_local_var_531300_6_non_const_tid);
#line 494 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 496 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531300_6_non_const_tid == 0)
#line 497 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 498 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_Vre[__cuda_local_var_531299_6_non_const_spot_number]) = ((float)(fdividef(((double)((__cuda_local_var_531303_31_non_const_s_Vre)[0])), (262144.0))));
#line 499 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_Vim[__cuda_local_var_531299_6_non_const_spot_number]) = ((float)(fdividef(((double)((__cuda_local_var_531304_31_non_const_s_Vim)[0])), (262144.0))));
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
 int __cuda_local_var_531372_6_non_const_blockSize;
#line 511 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531373_6_non_const_spot_number;
#line 512 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531374_6_non_const_tid;
#line 513 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531375_6_non_const_i;
#line 515 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531377_31_non_const_s_Vre[512];
#line 516 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531378_31_non_const_s_Vim[512];
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531380_8_non_const_s_xm;
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531380_14_non_const_s_ym;
#line 518 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531380_20_non_const_s_zm;
#line 527 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531389_8_non_const_d;
#line 528 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531390_8_non_const_X1;
#line 529 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531391_8_non_const_Y1;
#line 531 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531393_8_non_const_p;
#line 533 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531395_6_non_const_index;
#line 510 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531372_6_non_const_blockSize = 512;
#line 511 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531373_6_non_const_spot_number = ((int)(blockIdx.x));
#line 512 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531374_6_non_const_tid = ((int)(threadIdx.x));
#line 513 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531375_6_non_const_i = __cuda_local_var_531374_6_non_const_tid;
#line 520 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531377_31_non_const_s_Vre)[__cuda_local_var_531374_6_non_const_tid]) = (0.0F);
#line 521 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531378_31_non_const_s_Vim)[__cuda_local_var_531374_6_non_const_tid]) = (0.0F);
#line 523 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531380_8_non_const_s_xm = (g_x[__cuda_local_var_531373_6_non_const_spot_number]);
#line 524 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531380_14_non_const_s_ym = (g_y[__cuda_local_var_531373_6_non_const_spot_number]);
#line 525 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531380_20_non_const_s_zm = (g_z[__cuda_local_var_531373_6_non_const_spot_number]);
#line 527 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531389_8_non_const_d = (0.001953125F);
#line 528 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531390_8_non_const_X1 = (__cuda_local_var_531389_8_non_const_d * ((float)(__cuda_local_var_531374_6_non_const_tid - 256)));
#line 529 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531391_8_non_const_Y1 = ((-__cuda_local_var_531389_8_non_const_d) * (256.0F));
#line 534 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
while (__cuda_local_var_531375_6_non_const_i < n)
#line 535 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 536 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531395_6_non_const_index = (_Z8fftshiftii(__cuda_local_var_531375_6_non_const_i, 512));
#line 537 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531393_8_non_const_p = ((atan2f(((g_cSLM_cc[__cuda_local_var_531395_6_non_const_index]).y), ((g_cSLM_cc[__cuda_local_var_531395_6_non_const_index]).x))) - ((3.141592741F) * ((__cuda_local_var_531380_20_non_const_s_zm * ((__cuda_local_var_531390_8_non_const_X1 * __cuda_local_var_531390_8_non_const_X1) + (__cuda_local_var_531391_8_non_const_Y1 * __cuda_local_var_531391_8_non_const_Y1))) + ((2.0F) * ((__cuda_local_var_531390_8_non_const_X1 * __cuda_local_var_531380_8_non_const_s_xm) + (__cuda_local_var_531391_8_non_const_Y1 * __cuda_local_var_531380_14_non_const_s_ym))))));
#line 539 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531377_31_non_const_s_Vre)[__cuda_local_var_531374_6_non_const_tid]) += (cosf(__cuda_local_var_531393_8_non_const_p));
#line 540 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531378_31_non_const_s_Vim)[__cuda_local_var_531374_6_non_const_tid]) += (sinf(__cuda_local_var_531393_8_non_const_p));
#line 542 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531375_6_non_const_i += 512;
#line 543 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531391_8_non_const_Y1 += __cuda_local_var_531389_8_non_const_d;
#line 544 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 545 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 547 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531374_6_non_const_tid < 256)
#line 548 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 549 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531377_31_non_const_s_Vre)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531377_31_non_const_s_Vre)[(__cuda_local_var_531374_6_non_const_tid + 256)]);
#line 550 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531378_31_non_const_s_Vim)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531378_31_non_const_s_Vim)[(__cuda_local_var_531374_6_non_const_tid + 256)]);
#line 551 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 552 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 554 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531374_6_non_const_tid < 128)
#line 555 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 556 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531377_31_non_const_s_Vre)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531377_31_non_const_s_Vre)[(__cuda_local_var_531374_6_non_const_tid + 128)]);
#line 557 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531378_31_non_const_s_Vim)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531378_31_non_const_s_Vim)[(__cuda_local_var_531374_6_non_const_tid + 128)]);
#line 558 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 559 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 561 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531374_6_non_const_tid < 64)
#line 562 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 563 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531377_31_non_const_s_Vre)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531377_31_non_const_s_Vre)[(__cuda_local_var_531374_6_non_const_tid + 64)]);
#line 564 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531378_31_non_const_s_Vim)[__cuda_local_var_531374_6_non_const_tid]) += ((__cuda_local_var_531378_31_non_const_s_Vim)[(__cuda_local_var_531374_6_non_const_tid + 64)]);
#line 565 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 566 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 569 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531374_6_non_const_tid < 32)
#line 569 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 570 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
_Z11warpReduceCPVfS0_i(((volatile float *)(__cuda_local_var_531377_31_non_const_s_Vre)), ((volatile float *)(__cuda_local_var_531378_31_non_const_s_Vim)), __cuda_local_var_531374_6_non_const_tid);
#line 570 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 572 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531374_6_non_const_tid == 0)
#line 573 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 575 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531437_9_non_const_obtainedAmp;
#line 578 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531440_9_non_const_desiredAmp;
#line 574 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_obtainedPhase[__cuda_local_var_531373_6_non_const_spot_number]) = (atan2f(((__cuda_local_var_531378_31_non_const_s_Vim)[0]), ((__cuda_local_var_531377_31_non_const_s_Vre)[0])));
#line 575 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531437_9_non_const_obtainedAmp = (hypotf(((__cuda_local_var_531377_31_non_const_s_Vre)[0]), ((__cuda_local_var_531378_31_non_const_s_Vim)[0])));
#line 578 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531440_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_531373_6_non_const_spot_number]);
#line 579 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 580 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 581 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[(__cuda_local_var_531373_6_non_const_spot_number + (N_spots * iteration))]) = ((g_weights[(__cuda_local_var_531373_6_non_const_spot_number + (N_spots * (iteration - 1)))]) * ((float)(fdividef(((double)__cuda_local_var_531440_9_non_const_desiredAmp), ((double)__cuda_local_var_531437_9_non_const_obtainedAmp)))));
#line 582 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 584 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 584 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 586 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[__cuda_local_var_531373_6_non_const_spot_number]) = ((float)(fdividef(((double)__cuda_local_var_531440_9_non_const_desiredAmp), (262144.0))));
#line 587 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 588 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(obtainedI[(__cuda_local_var_531373_6_non_const_spot_number + (N_spots * iteration))]) = ((float)(fdividef(((double)(__cuda_local_var_531437_9_non_const_obtainedAmp * __cuda_local_var_531437_9_non_const_obtainedAmp)), (68719476736.0))));
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
 int __cuda_local_var_531464_6_non_const_idx;
#line 603 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531465_6_non_const_tid;
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531466_31_non_const_s_aSpot[256];
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531466_45_non_const_s_aSpotsMean;
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531466_59_non_const_s_weight[256];
#line 604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531466_74_non_const_s_pSpot[256];
#line 605 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531467_31_non_const_s_xm[256];
#line 606 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531468_31_non_const_s_ym[256];
#line 607 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531469_31_non_const_s_zm[256];
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531470_8_non_const_reSLM;
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531470_19_non_const_imSLM;
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531470_30_non_const_pSLM2pi_f;
#line 602 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531464_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 603 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531465_6_non_const_tid = ((int)(threadIdx.x));
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_8_non_const_reSLM = (0.0F);
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_19_non_const_imSLM = (0.0F);
#line 608 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_30_non_const_pSLM2pi_f = (0.0F);
#line 610 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531464_6_non_const_idx < N_pixels)
#line 611 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 656 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531518_9_non_const_d;
#line 657 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531519_10_non_const_X;
#line 658 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531520_10_non_const_Y;
#line 612 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531465_6_non_const_tid < N_spots)
#line 613 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 614 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531476_10_non_const_desiredAmp;
#line 615 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531477_10_non_const_cSpotAmpRe;
#line 616 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531478_10_non_const_cSpotAmpIm;
#line 614 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531476_10_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_531465_6_non_const_tid]);
#line 615 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531477_10_non_const_cSpotAmpRe = (g_cSpotAmpRe[__cuda_local_var_531465_6_non_const_tid]);
#line 616 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531478_10_non_const_cSpotAmpIm = (g_cSpotAmpIm[__cuda_local_var_531465_6_non_const_tid]);
#line 617 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_74_non_const_s_pSpot)[__cuda_local_var_531465_6_non_const_tid]) = (atan2f(__cuda_local_var_531478_10_non_const_cSpotAmpIm, __cuda_local_var_531477_10_non_const_cSpotAmpRe));
#line 618 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid]) = ((float)(fdividef(((double)(hypotf(__cuda_local_var_531477_10_non_const_cSpotAmpRe, __cuda_local_var_531478_10_non_const_cSpotAmpIm))), ((double)__cuda_local_var_531476_10_non_const_desiredAmp))));
#line 619 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 619 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 620 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_59_non_const_s_weight)[__cuda_local_var_531465_6_non_const_tid]) = (g_weights[(__cuda_local_var_531465_6_non_const_tid + (iteration * N_spots))]);
#line 620 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 622 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 622 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 623 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid]) = ((((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid]) < (0.5F)) ? (0.5F) : ((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid]));
#line 624 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_59_non_const_s_weight)[__cuda_local_var_531465_6_non_const_tid]) = __cuda_local_var_531476_10_non_const_desiredAmp;
#line 625 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 626 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531467_31_non_const_s_xm)[__cuda_local_var_531465_6_non_const_tid]) = (g_x[__cuda_local_var_531465_6_non_const_tid]);
#line 627 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531468_31_non_const_s_ym)[__cuda_local_var_531465_6_non_const_tid]) = (g_y[__cuda_local_var_531465_6_non_const_tid]);
#line 628 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531469_31_non_const_s_zm)[__cuda_local_var_531465_6_non_const_tid]) = (g_z[__cuda_local_var_531465_6_non_const_tid]);
#line 629 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 630 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 633 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531465_6_non_const_tid == 0)
#line 634 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 635 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531497_10_non_const_s_aSpot_sum;
#line 635 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531497_10_non_const_s_aSpot_sum = (0.0F);
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
__cuda_local_var_531497_10_non_const_s_aSpot_sum += ((__cuda_local_var_531466_31_non_const_s_aSpot)[jj]);
#line 639 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 639 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 640 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531466_45_non_const_s_aSpotsMean = ((float)(fdividef(((double)__cuda_local_var_531497_10_non_const_s_aSpot_sum), ((double)((float)N_spots)))));
#line 641 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 642 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 644 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531465_6_non_const_tid < N_spots)
#line 645 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 646 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531466_59_non_const_s_weight)[__cuda_local_var_531465_6_non_const_tid]) = ((float)(fdividef(((double)(((__cuda_local_var_531466_59_non_const_s_weight)[__cuda_local_var_531465_6_non_const_tid]) * __cuda_local_var_531466_45_non_const_s_aSpotsMean)), ((double)((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid])))));
#line 647 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (!(getpSLM255))
#line 647 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 648 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weights[(__cuda_local_var_531465_6_non_const_tid + (N_spots * (iteration + 1)))]) = ((__cuda_local_var_531466_59_non_const_s_weight)[__cuda_local_var_531465_6_non_const_tid]);
#line 648 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 651 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (saveAmps)
#line 651 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 652 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amps[(__cuda_local_var_531465_6_non_const_tid + (N_spots * iteration))]) = ((__cuda_local_var_531466_31_non_const_s_aSpot)[__cuda_local_var_531465_6_non_const_tid]);
#line 652 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 653 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 654 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 656 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531518_9_non_const_d = (0.001953125F);
#line 657 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531519_10_non_const_X = (__cuda_local_var_531518_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 658 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531520_10_non_const_Y = (__cuda_local_var_531518_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
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
 float __cuda_local_var_531529_10_non_const_delta;
#line 667 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531529_10_non_const_delta = ((((3.141592741F) * ((__cuda_local_var_531469_31_non_const_s_zm)[k])) * ((__cuda_local_var_531519_10_non_const_X * __cuda_local_var_531519_10_non_const_X) + (__cuda_local_var_531520_10_non_const_Y * __cuda_local_var_531520_10_non_const_Y))) + ((6.283185482F) * ((__cuda_local_var_531519_10_non_const_X * ((__cuda_local_var_531467_31_non_const_s_xm)[k])) + (__cuda_local_var_531520_10_non_const_Y * ((__cuda_local_var_531468_31_non_const_s_ym)[k])))));
#line 668 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_8_non_const_reSLM += (((__cuda_local_var_531466_59_non_const_s_weight)[k]) * (cosf((((__cuda_local_var_531466_74_non_const_s_pSpot)[k]) + __cuda_local_var_531529_10_non_const_delta))));
#line 669 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_19_non_const_imSLM += (((__cuda_local_var_531466_59_non_const_s_weight)[k]) * (sinf((((__cuda_local_var_531466_74_non_const_s_pSpot)[k]) + __cuda_local_var_531529_10_non_const_delta))));
#line 670 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 670 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 671 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_30_non_const_pSLM2pi_f = (atan2f(__cuda_local_var_531470_19_non_const_imSLM, __cuda_local_var_531470_8_non_const_reSLM));
#line 674 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 675 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 675 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T23;
#line 676 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531538_10_non_const_pSLMstart;
#line 676 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531538_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_531464_6_non_const_idx]);
#line 677 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T23 = (__cuda_local_var_531470_30_non_const_pSLM2pi_f - __cuda_local_var_531538_10_non_const_pSLMstart)) , (fabsf(__T23))) > RPC)
#line 677 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 678 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531470_30_non_const_pSLM2pi_f = __cuda_local_var_531538_10_non_const_pSLMstart;
#line 678 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 679 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 679 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 680 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_531464_6_non_const_idx]) = __cuda_local_var_531470_30_non_const_pSLM2pi_f;
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
__cuda_local_var_531470_30_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_531470_30_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_531464_6_non_const_idx])));
#line 686 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 688 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 689 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 690 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531552_34_non_const_s_LUTcoeff[120];
#line 691 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531465_6_non_const_tid < N_PolCoeff)
#line 691 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 692 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531552_34_non_const_s_LUTcoeff)[__cuda_local_var_531465_6_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_531465_6_non_const_tid]);
#line 692 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 693 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 694 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531464_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_531470_30_non_const_pSLM2pi_f, __cuda_local_var_531519_10_non_const_X, __cuda_local_var_531520_10_non_const_Y, (__cuda_local_var_531552_34_non_const_s_LUTcoeff), N_PolCoeff));
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
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_531560_42_non_const_s_LUT[256];
#line 699 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531465_6_non_const_tid < 256)
#line 699 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 700 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531560_42_non_const_s_LUT)[__cuda_local_var_531465_6_non_const_tid]) = (g_LUT[__cuda_local_var_531465_6_non_const_tid]);
#line 700 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 701 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 702 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531464_6_non_const_idx]) = ((__cuda_local_var_531560_42_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_531470_30_non_const_pSLM2pi_f))]);
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 703 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 705 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531464_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_531470_30_non_const_pSLM2pi_f));
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
(g_pSLM2pi[__cuda_local_var_531464_6_non_const_idx]) = __cuda_local_var_531470_30_non_const_pSLM2pi_f;
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
 int __cuda_local_var_531583_6_non_const_idx;
#line 722 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531584_6_non_const_tid;
#line 723 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531585_31_non_const_s_weight[256];
#line 723 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531585_46_non_const_s_pSpot[256];
#line 724 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531586_31_non_const_s_xm[256];
#line 725 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531587_31_non_const_s_ym[256];
#line 726 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531588_31_non_const_s_zm[256];
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531589_8_non_const_reSLM;
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531589_19_non_const_imSLM;
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531589_30_non_const_pSLM2pi_f;
#line 721 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531583_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 722 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531584_6_non_const_tid = ((int)(threadIdx.x));
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_8_non_const_reSLM = (0.0F);
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_19_non_const_imSLM = (0.0F);
#line 727 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_30_non_const_pSLM2pi_f = (0.0F);
#line 729 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531583_6_non_const_idx < N_pixels)
#line 730 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 743 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531605_9_non_const_d;
#line 744 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531606_10_non_const_X;
#line 745 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531607_10_non_const_Y;
#line 759 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531621_7_non_const_shiftedidx;
#line 731 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531584_6_non_const_tid < N_spots)
#line 732 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 733 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531585_46_non_const_s_pSpot)[__cuda_local_var_531584_6_non_const_tid]) = (g_pSpot[__cuda_local_var_531584_6_non_const_tid]);
#line 734 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531585_31_non_const_s_weight)[__cuda_local_var_531584_6_non_const_tid]) = (g_wSpot[(__cuda_local_var_531584_6_non_const_tid + (N_spots * iteration))]);
#line 736 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531586_31_non_const_s_xm)[__cuda_local_var_531584_6_non_const_tid]) = (g_x[__cuda_local_var_531584_6_non_const_tid]);
#line 737 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531587_31_non_const_s_ym)[__cuda_local_var_531584_6_non_const_tid]) = (g_y[__cuda_local_var_531584_6_non_const_tid]);
#line 738 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531588_31_non_const_s_zm)[__cuda_local_var_531584_6_non_const_tid]) = (g_z[__cuda_local_var_531584_6_non_const_tid]);
#line 739 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 740 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 743 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531605_9_non_const_d = (0.001953125F);
#line 744 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531606_10_non_const_X = (__cuda_local_var_531605_9_non_const_d * (((float)(threadIdx.x)) - (256.0F)));
#line 745 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531607_10_non_const_Y = (__cuda_local_var_531605_9_non_const_d * (((float)(blockIdx.x)) - (256.0F)));
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
 float __cuda_local_var_531616_10_non_const_delta;
#line 754 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531616_10_non_const_delta = ((((3.141592741F) * ((__cuda_local_var_531588_31_non_const_s_zm)[k])) * ((__cuda_local_var_531606_10_non_const_X * __cuda_local_var_531606_10_non_const_X) + (__cuda_local_var_531607_10_non_const_Y * __cuda_local_var_531607_10_non_const_Y))) + ((6.283185482F) * ((__cuda_local_var_531606_10_non_const_X * ((__cuda_local_var_531586_31_non_const_s_xm)[k])) + (__cuda_local_var_531607_10_non_const_Y * ((__cuda_local_var_531587_31_non_const_s_ym)[k])))));
#line 755 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_8_non_const_reSLM += (((__cuda_local_var_531585_31_non_const_s_weight)[k]) * (cosf((((__cuda_local_var_531585_46_non_const_s_pSpot)[k]) + __cuda_local_var_531616_10_non_const_delta))));
#line 756 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_19_non_const_imSLM += (((__cuda_local_var_531585_31_non_const_s_weight)[k]) * (sinf((((__cuda_local_var_531585_46_non_const_s_pSpot)[k]) + __cuda_local_var_531616_10_non_const_delta))));
#line 757 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 757 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 759 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531621_7_non_const_shiftedidx = (_Z8fftshiftii(__cuda_local_var_531583_6_non_const_idx, 512));
#line 760 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_8_non_const_reSLM += ((float)(fdividef(((double)((g_cSLM_cc[__cuda_local_var_531621_7_non_const_shiftedidx]).x)), (262144.0))));
#line 761 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_19_non_const_imSLM += ((float)(fdividef(((double)((g_cSLM_cc[__cuda_local_var_531621_7_non_const_shiftedidx]).y)), (262144.0))));
#line 763 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_30_non_const_pSLM2pi_f = (atan2f(__cuda_local_var_531589_19_non_const_imSLM, __cuda_local_var_531589_8_non_const_reSLM));
#line 765 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 766 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 766 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T24;
#line 767 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531629_10_non_const_pSLMstart;
#line 767 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531629_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_531621_7_non_const_shiftedidx]);
#line 768 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T24 = (__cuda_local_var_531589_30_non_const_pSLM2pi_f - __cuda_local_var_531629_10_non_const_pSLMstart)) , (fabsf(__T24))) > RPC)
#line 768 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 769 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531589_30_non_const_pSLM2pi_f = __cuda_local_var_531629_10_non_const_pSLMstart;
#line 769 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 770 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 770 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 771 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_531621_7_non_const_shiftedidx]) = __cuda_local_var_531589_30_non_const_pSLM2pi_f;
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
__cuda_local_var_531589_30_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_531589_30_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_531583_6_non_const_idx])));
#line 777 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 778 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 779 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 780 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531642_34_non_const_s_LUTcoeff[120];
#line 781 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531584_6_non_const_tid < N_PolCoeff)
#line 781 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 782 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531642_34_non_const_s_LUTcoeff)[__cuda_local_var_531584_6_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_531584_6_non_const_tid]);
#line 782 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 783 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 784 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531583_6_non_const_idx]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_531589_30_non_const_pSLM2pi_f, __cuda_local_var_531606_10_non_const_X, __cuda_local_var_531607_10_non_const_Y, (__cuda_local_var_531642_34_non_const_s_LUTcoeff), N_PolCoeff));
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
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_531650_42_non_const_s_LUT[256];
#line 789 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531584_6_non_const_tid < 256)
#line 789 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 790 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531650_42_non_const_s_LUT)[__cuda_local_var_531584_6_non_const_tid]) = (g_LUT[__cuda_local_var_531584_6_non_const_tid]);
#line 790 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 791 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 792 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531583_6_non_const_idx]) = ((__cuda_local_var_531650_42_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_531589_30_non_const_pSLM2pi_f))]);
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 793 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531583_6_non_const_idx]) = (_Z8phase2ucf(__cuda_local_var_531589_30_non_const_pSLM2pi_f));
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 795 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 802 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 803 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSLM_cc[__cuda_local_var_531621_7_non_const_shiftedidx]).x) = (cosf(__cuda_local_var_531589_30_non_const_pSLM2pi_f));
#line 804 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSLM_cc[__cuda_local_var_531621_7_non_const_shiftedidx]).y) = (sinf(__cuda_local_var_531589_30_non_const_pSLM2pi_f));
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
 int __cuda_local_var_531671_6_non_const_tid;
#line 810 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531672_6_non_const_bid;
#line 811 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531673_6_non_const_idx;
#line 809 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531671_6_non_const_tid = ((int)(threadIdx.x));
#line 810 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531672_6_non_const_bid = ((int)(blockIdx.x));
#line 811 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531673_6_non_const_idx = ((int)((((unsigned)__cuda_local_var_531672_6_non_const_bid) * (blockDim.x)) + ((unsigned)__cuda_local_var_531671_6_non_const_tid)));
#line 812 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__cuda_local_var_531671_6_non_const_tid < (256 - borderWidth)) || (__cuda_local_var_531671_6_non_const_tid > (255 + borderWidth))) && ((__cuda_local_var_531672_6_non_const_bid < (256 - borderWidth)) || (__cuda_local_var_531672_6_non_const_bid > (255 + borderWidth))))
#line 813 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 814 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_Farfield_cc[__cuda_local_var_531673_6_non_const_idx]).x) = (0.0F);
#line 815 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_Farfield_cc[__cuda_local_var_531673_6_non_const_idx]).y) = (0.0F);
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
 int __cuda_local_var_531686_6_non_const_idx;
#line 824 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531686_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 825 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531686_6_non_const_idx < N)
#line 826 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 827 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(f[__cuda_local_var_531686_6_non_const_idx]) = (((float)(fdividef(((double)((((float)(uc[__cuda_local_var_531686_6_non_const_idx])) * (2.0F)) * (3.141592741F))), (256.0)))) - (3.141592741F));
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
 int __cuda_local_var_531697_6_non_const_idx;
#line 835 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531697_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 836 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531697_6_non_const_idx < M)
#line 837 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 838 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531700_9_non_const_pSpot;
#line 838 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531700_9_non_const_pSpot = (g_p[__cuda_local_var_531697_6_non_const_idx]);
#line 839 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_c[__cuda_local_var_531697_6_non_const_idx]).x) = (cosf(__cuda_local_var_531700_9_non_const_pSpot));
#line 840 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_c[__cuda_local_var_531697_6_non_const_idx]).y) = (sinf(__cuda_local_var_531700_9_non_const_pSpot));
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
 int __cuda_local_var_531712_6_non_const_idx;
#line 850 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531712_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 851 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531712_6_non_const_idx < M)
#line 852 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 853 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_a[__cuda_local_var_531712_6_non_const_idx]) = (hypotf(((g_c[__cuda_local_var_531712_6_non_const_idx]).x), ((g_c[__cuda_local_var_531712_6_non_const_idx]).y)));
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
 int __cuda_local_var_531724_6_non_const_idx;
#line 862 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531724_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 863 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531724_6_non_const_idx < M)
#line 864 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 865 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_p[__cuda_local_var_531724_6_non_const_idx]).x) = (atan2f(((g_c[__cuda_local_var_531724_6_non_const_idx]).y), ((g_c[__cuda_local_var_531724_6_non_const_idx]).x)));
#line 866 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_p[__cuda_local_var_531724_6_non_const_idx]).y) = (0.0F);
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
 int __cuda_local_var_531737_6_non_const_idx;
#line 875 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531737_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 876 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531737_6_non_const_idx < M)
#line 877 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 878 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_531737_6_non_const_idx]) = (atan2f(((g_c[__cuda_local_var_531737_6_non_const_idx]).y), ((g_c[__cuda_local_var_531737_6_non_const_idx]).x)));
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
 int __cuda_local_var_531750_6_non_const_idx;
#line 888 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531750_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 889 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531750_6_non_const_idx < M)
#line 890 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 891 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_531750_6_non_const_idx]) = ((g_c[__cuda_local_var_531750_6_non_const_idx]).x);
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
 int __cuda_local_var_531763_6_non_const_idx;
#line 901 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531763_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 902 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531763_6_non_const_idx < M)
#line 903 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 904 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_p[__cuda_local_var_531763_6_non_const_idx]) = ((g_c[__cuda_local_var_531763_6_non_const_idx]).y);
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
 int __cuda_local_var_531778_6_non_const_idx;
#line 916 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531778_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 918 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531778_6_non_const_idx < N_pixels)
#line 919 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 920 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531782_9_non_const_aLaser;
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_531784_16_non_const_cAmp;
#line 923 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531785_10_non_const_pSLM2pi_f;
#line 920 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531782_9_non_const_aLaser = (1.0F);
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531784_16_non_const_cAmp = (g_cAmp[__cuda_local_var_531778_6_non_const_idx]);
#line 923 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531785_10_non_const_pSLM2pi_f = (atan2f((__cuda_local_var_531784_16_non_const_cAmp.y), (__cuda_local_var_531784_16_non_const_cAmp.x)));
#line 925 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 926 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 926 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __T25;
#line 927 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531789_10_non_const_pSLMstart;
#line 927 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531789_10_non_const_pSLMstart = (g_pSLMstart[__cuda_local_var_531778_6_non_const_idx]);
#line 928 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__T25 = (__cuda_local_var_531785_10_non_const_pSLM2pi_f - __cuda_local_var_531789_10_non_const_pSLMstart)) , (fabsf(__T25))) > RPC)
#line 928 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 929 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531785_10_non_const_pSLM2pi_f = __cuda_local_var_531789_10_non_const_pSLMstart;
#line 929 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 930 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 932 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (getpSLM255)
#line 933 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 937 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531799_8_non_const_idxShifted;
#line 938 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531800_8_non_const_X_shifted;
#line 938 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531800_19_non_const_Y_shifted;
#line 939 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531801_8_non_const_data_w;
#line 943 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531805_10_non_const_N;
#line 944 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531806_8_non_const_half_w;
#line 945 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531807_8_non_const_logN;
#line 947 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531809_8_non_const_X;
#line 948 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531810_8_non_const_Y;
#line 949 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531811_10_non_const_d;
#line 934 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (RPC < (6.283185482F))
#line 934 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 935 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLMstart[__cuda_local_var_531778_6_non_const_idx]) = __cuda_local_var_531785_10_non_const_pSLM2pi_f;
#line 935 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 939 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531801_8_non_const_data_w = 512;
#line 943 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531805_10_non_const_N = ((float)__cuda_local_var_531801_8_non_const_data_w);
#line 944 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531806_8_non_const_half_w = (__cuda_local_var_531801_8_non_const_data_w >> 1);
#line 945 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531807_8_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_531805_10_non_const_N)))))));
#line 947 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531809_8_non_const_X = (__cuda_local_var_531778_6_non_const_idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_531805_10_non_const_N - (1.0F))))))));
#line 948 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531810_8_non_const_Y = ((__cuda_local_var_531778_6_non_const_idx - __cuda_local_var_531809_8_non_const_X) >> __cuda_local_var_531807_8_non_const_logN);
#line 949 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531811_10_non_const_d = (0.001953125F);
#line 953 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531809_8_non_const_X < __cuda_local_var_531806_8_non_const_half_w)
#line 954 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 955 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_8_non_const_X_shifted = __cuda_local_var_531809_8_non_const_X;
#line 956 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531810_8_non_const_Y < __cuda_local_var_531806_8_non_const_half_w)
#line 957 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 958 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_19_non_const_Y_shifted = (__cuda_local_var_531810_8_non_const_Y + __cuda_local_var_531806_8_non_const_half_w);
#line 959 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531799_8_non_const_idxShifted = ((__cuda_local_var_531778_6_non_const_idx + (__cuda_local_var_531801_8_non_const_data_w * __cuda_local_var_531806_8_non_const_half_w)) + __cuda_local_var_531806_8_non_const_half_w);
#line 960 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 962 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 962 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 963 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_19_non_const_Y_shifted = (__cuda_local_var_531810_8_non_const_Y - __cuda_local_var_531801_8_non_const_data_w);
#line 964 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531799_8_non_const_idxShifted = ((__cuda_local_var_531778_6_non_const_idx - (__cuda_local_var_531801_8_non_const_data_w * __cuda_local_var_531806_8_non_const_half_w)) + __cuda_local_var_531806_8_non_const_half_w);
#line 965 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 966 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 968 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 968 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 969 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_8_non_const_X_shifted = (__cuda_local_var_531809_8_non_const_X - __cuda_local_var_531801_8_non_const_data_w);
#line 970 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531810_8_non_const_Y < __cuda_local_var_531806_8_non_const_half_w)
#line 971 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 972 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_19_non_const_Y_shifted = __cuda_local_var_531810_8_non_const_Y;
#line 973 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531799_8_non_const_idxShifted = ((__cuda_local_var_531778_6_non_const_idx + (__cuda_local_var_531801_8_non_const_data_w * __cuda_local_var_531806_8_non_const_half_w)) - __cuda_local_var_531806_8_non_const_half_w);
#line 974 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 976 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 976 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 977 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531800_19_non_const_Y_shifted = (__cuda_local_var_531810_8_non_const_Y - __cuda_local_var_531801_8_non_const_data_w);
#line 978 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531799_8_non_const_idxShifted = ((__cuda_local_var_531778_6_non_const_idx - (__cuda_local_var_531801_8_non_const_data_w * __cuda_local_var_531806_8_non_const_half_w)) - __cuda_local_var_531806_8_non_const_half_w);
#line 979 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 980 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 982 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseAberrationCorr_b)
#line 982 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 983 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531785_10_non_const_pSLM2pi_f = (_Z25ApplyAberrationCorrectionff(__cuda_local_var_531785_10_non_const_pSLM2pi_f, (g_AberrationCorr_f[__cuda_local_var_531799_8_non_const_idxShifted])));
#line 983 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 985 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (UseLUTPol_b)
#line 986 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 987 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531849_9_non_const_tid;
#line 988 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531850_34_non_const_s_LUTcoeff[120];
#line 987 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531849_9_non_const_tid = ((int)(threadIdx.x));
#line 989 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531849_9_non_const_tid < N_PolCoeff)
#line 989 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 990 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531850_34_non_const_s_LUTcoeff)[__cuda_local_var_531849_9_non_const_tid]) = (g_LUTPolCoeff_f[__cuda_local_var_531849_9_non_const_tid]);
#line 990 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 991 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 992 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531799_8_non_const_idxShifted]) = (_Z11applyPolLUTfffPfi(__cuda_local_var_531785_10_non_const_pSLM2pi_f, (__cuda_local_var_531811_10_non_const_d * ((float)__cuda_local_var_531800_8_non_const_X_shifted)), (__cuda_local_var_531811_10_non_const_d * ((float)__cuda_local_var_531800_19_non_const_Y_shifted)), (__cuda_local_var_531850_34_non_const_s_LUTcoeff), N_PolCoeff));
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
 int __cuda_local_var_531858_9_non_const_tid;
#line 996 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531858_9_non_const_tid = ((int)(threadIdx.x));
#line 997 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (!(UseLUTPol_b))
#line 998 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 999 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) unsigned char __cuda_local_var_531861_43_non_const_s_LUT[256];
#line 1000 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531858_9_non_const_tid < 256)
#line 1000 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1001 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531861_43_non_const_s_LUT)[__cuda_local_var_531858_9_non_const_tid]) = (g_LUT[__cuda_local_var_531858_9_non_const_tid]);
#line 1001 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1002 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1003 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531799_8_non_const_idxShifted]) = ((__cuda_local_var_531861_43_non_const_s_LUT)[(_Z11phase2int32f(__cuda_local_var_531785_10_non_const_pSLM2pi_f))]);
#line 1004 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1005 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_pSLM255_uc[__cuda_local_var_531799_8_non_const_idxShifted]) = (_Z8phase2ucf(__cuda_local_var_531785_10_non_const_pSLM2pi_f));
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1007 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1008 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1009 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cAmp[__cuda_local_var_531778_6_non_const_idx]).x) = (__cuda_local_var_531782_9_non_const_aLaser * (cosf(__cuda_local_var_531785_10_non_const_pSLM2pi_f)));
#line 1010 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cAmp[__cuda_local_var_531778_6_non_const_idx]).y) = (__cuda_local_var_531782_9_non_const_aLaser * (sinf(__cuda_local_var_531785_10_non_const_pSLM2pi_f)));
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
 int __cuda_local_var_531882_6_non_const_tid;
#line 1021 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_531883_6_non_const_spotIndex;
#line 1022 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531884_8_non_const_pSpot;
#line 1023 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531885_31_non_const_s_aSpot[256];
#line 1023 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
static  __attribute__((shared))  __attribute__((__used__)) float __cuda_local_var_531885_45_non_const_s_ISpotsMeanSq;
#line 1024 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531886_8_non_const_weight;
#line 1025 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_531887_15_non_const_cSpotAmp_cc;
#line 1020 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531882_6_non_const_tid = ((int)(threadIdx.x));
#line 1027 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531882_6_non_const_tid < N_spots)
#line 1028 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1029 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531891_9_non_const_desiredAmp;
#line 1029 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531891_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_531882_6_non_const_tid]);
#line 1030 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531883_6_non_const_spotIndex = (g_spotIndex[__cuda_local_var_531882_6_non_const_tid]);
#line 1031 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531887_15_non_const_cSpotAmp_cc = (g_cSpotAmp_cc[__cuda_local_var_531883_6_non_const_spotIndex]);
#line 1032 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531884_8_non_const_pSpot = (atan2f((__cuda_local_var_531887_15_non_const_cSpotAmp_cc.y), (__cuda_local_var_531887_15_non_const_cSpotAmp_cc.x)));
#line 1033 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid]) = ((float)(fdividef(((double)(hypotf((__cuda_local_var_531887_15_non_const_cSpotAmp_cc.x), (__cuda_local_var_531887_15_non_const_cSpotAmp_cc.y)))), ((double)((262144.0F) * __cuda_local_var_531891_9_non_const_desiredAmp)))));
#line 1034 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 1034 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1035 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531886_8_non_const_weight = (g_weight[(__cuda_local_var_531882_6_non_const_tid + (iteration * N_spots))]);
#line 1035 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1037 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1037 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1038 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid]) = ((((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid]) < (0.5F)) ? (0.5F) : ((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid]));
#line 1039 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531886_8_non_const_weight = __cuda_local_var_531891_9_non_const_desiredAmp;
#line 1040 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1041 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1042 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1045 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531882_6_non_const_tid == 0)
#line 1046 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1047 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_531909_9_non_const_ISpot_sum;
#line 1047 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531909_9_non_const_ISpot_sum = (0.0F);
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
__cuda_local_var_531909_9_non_const_ISpot_sum += (((__cuda_local_var_531885_31_non_const_s_aSpot)[jj]) * ((__cuda_local_var_531885_31_non_const_s_aSpot)[jj]));
#line 1051 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1051 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1052 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531885_45_non_const_s_ISpotsMeanSq = (sqrtf(((float)(fdividef(((double)__cuda_local_var_531909_9_non_const_ISpot_sum), ((double)((float)N_spots)))))));
#line 1053 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1054 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1055 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531882_6_non_const_tid < N_spots)
#line 1056 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1057 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531886_8_non_const_weight = ((float)(fdividef(((double)(__cuda_local_var_531886_8_non_const_weight * __cuda_local_var_531885_45_non_const_s_ISpotsMeanSq)), ((double)((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid])))));
#line 1058 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_531887_15_non_const_cSpotAmp_cc.x) = ((cosf(__cuda_local_var_531884_8_non_const_pSpot)) * __cuda_local_var_531886_8_non_const_weight);
#line 1059 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_531887_15_non_const_cSpotAmp_cc.y) = ((sinf(__cuda_local_var_531884_8_non_const_pSpot)) * __cuda_local_var_531886_8_non_const_weight);
#line 1060 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_cSpotAmpNew_cc[__cuda_local_var_531883_6_non_const_spotIndex]) = __cuda_local_var_531887_15_non_const_cSpotAmp_cc;
#line 1062 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (last_iteration)
#line 1062 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[__cuda_local_var_531882_6_non_const_tid]) = __cuda_local_var_531886_8_non_const_weight;
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1063 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1065 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[((N_spots * (iteration + 1)) + __cuda_local_var_531882_6_non_const_tid)]) = __cuda_local_var_531886_8_non_const_weight;
#line 1065 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1066 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (save_amps)
#line 1066 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1067 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amplitude[((N_spots * iteration) + __cuda_local_var_531882_6_non_const_tid)]) = ((__cuda_local_var_531885_31_non_const_s_aSpot)[__cuda_local_var_531882_6_non_const_tid]);
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
 int __cuda_local_var_531937_6_non_const_i;
#line 1075 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_531937_6_non_const_i = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 1077 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_531937_6_non_const_i < N_spots)
#line 1077 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1078 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_spot_index[__cuda_local_var_531937_6_non_const_i]) = ((((int)(__float2int_rz(((double)(g_x[__cuda_local_var_531937_6_non_const_i]))))) & (data_w - 1)) + ((((int)(__float2int_rz(((double)(g_y[__cuda_local_var_531937_6_non_const_i]))))) & (data_w - 1)) * data_w));
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
 int __cuda_local_var_532083_6_non_const_idx;
#line 1223 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_532085_6_non_const_spotIndex;
#line 1224 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_532086_8_non_const_pSpot;
#line 1226 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_532088_8_non_const_weight;
#line 1227 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 cufftComplex __cuda_local_var_532089_15_non_const_cSpotAmp_cc;
#line 1281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_532143_8_non_const_N;
#line 1282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_532144_6_non_const_half_w;
#line 1283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_532145_6_non_const_logN;
#line 1285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_532147_6_non_const_X;
#line 1286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 int __cuda_local_var_532148_6_non_const_Y;
#line 1221 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532083_6_non_const_idx = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
#line 1228 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532086_8_non_const_pSpot = ((constData)[0]);
#line 1229 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (__cuda_local_var_532083_6_non_const_idx < N_spots)
#line 1230 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1231 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_532093_9_non_const_desiredAmp;
#line 1235 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
 float __cuda_local_var_532097_9_non_const_aSpot;
#line 1231 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532093_9_non_const_desiredAmp = (g_desiredAmp[__cuda_local_var_532083_6_non_const_idx]);
#line 1232 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532085_6_non_const_spotIndex = (g_spotIndex[__cuda_local_var_532083_6_non_const_idx]);
#line 1233 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532089_15_non_const_cSpotAmp_cc = (g_cSpotAmp_cc[__cuda_local_var_532085_6_non_const_spotIndex]);
#line 1234 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532086_8_non_const_pSpot = (atan2f((__cuda_local_var_532089_15_non_const_cSpotAmp_cc.y), (__cuda_local_var_532089_15_non_const_cSpotAmp_cc.x)));
#line 1235 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532097_9_non_const_aSpot = ((float)(fdividef(((double)(hypotf((__cuda_local_var_532089_15_non_const_cSpotAmp_cc.x), (__cuda_local_var_532089_15_non_const_cSpotAmp_cc.y)))), ((double)__cuda_local_var_532093_9_non_const_desiredAmp))));
#line 1236 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (iteration != 0)
#line 1236 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1237 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532088_8_non_const_weight = (g_weight[(__cuda_local_var_532083_6_non_const_idx + (iteration * N_spots))]);
#line 1237 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1239 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1239 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1240 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532097_9_non_const_aSpot = ((__cuda_local_var_532097_9_non_const_aSpot < (0.5F)) ? (0.5F) : __cuda_local_var_532097_9_non_const_aSpot);
#line 1241 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532088_8_non_const_weight = ((float)(fdividef(((double)__cuda_local_var_532093_9_non_const_desiredAmp), (262144.0))));
#line 1242 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1243 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532088_8_non_const_weight = ((float)(fdividef(((double)__cuda_local_var_532088_8_non_const_weight), ((double)__cuda_local_var_532097_9_non_const_aSpot))));
#line 1244 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_532089_15_non_const_cSpotAmp_cc.x) = ((cosf(__cuda_local_var_532086_8_non_const_pSpot)) * __cuda_local_var_532088_8_non_const_weight);
#line 1245 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(__cuda_local_var_532089_15_non_const_cSpotAmp_cc.y) = ((sinf(__cuda_local_var_532086_8_non_const_pSpot)) * __cuda_local_var_532088_8_non_const_weight);
#line 1246 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_cSpotAmpNew_cc[__cuda_local_var_532085_6_non_const_spotIndex]) = __cuda_local_var_532089_15_non_const_cSpotAmp_cc;
#line 1247 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (last_iteration)
#line 1247 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[__cuda_local_var_532083_6_non_const_idx]) = __cuda_local_var_532088_8_non_const_weight;
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
else 
#line 1248 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1250 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_weight[((N_spots * (iteration + 1)) + __cuda_local_var_532083_6_non_const_idx)]) = __cuda_local_var_532088_8_non_const_weight;
#line 1250 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1251 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (save_amps)
#line 1251 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1252 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
(g_amplitude[((N_spots * iteration) + __cuda_local_var_532083_6_non_const_idx)]) = __cuda_local_var_532097_9_non_const_aSpot;
#line 1252 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1253 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1254 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__syncthreads();
#line 1281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532143_8_non_const_N = ((float)data_w);
#line 1282 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532144_6_non_const_half_w = (data_w >> 1);
#line 1283 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532145_6_non_const_logN = ((int)(__float2int_rz(((double)((float)(log2f(__cuda_local_var_532143_8_non_const_N)))))));
#line 1285 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532147_6_non_const_X = (__cuda_local_var_532083_6_non_const_idx & ((int)(__float2int_rz(((double)((float)(__cuda_local_var_532143_8_non_const_N - (1.0F))))))));
#line 1286 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
__cuda_local_var_532148_6_non_const_Y = ((__cuda_local_var_532083_6_non_const_idx - __cuda_local_var_532147_6_non_const_X) >> __cuda_local_var_532145_6_non_const_logN);
#line 1287 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
if (((__cuda_local_var_532147_6_non_const_X > 200) && (__cuda_local_var_532147_6_non_const_X < 312)) || ((__cuda_local_var_532148_6_non_const_Y > 200) && (__cuda_local_var_532148_6_non_const_Y < 312)))
#line 1288 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{
#line 1289 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSpotAmpNew_cc[__cuda_local_var_532083_6_non_const_idx]).x) = ((float)(fdividef(((double)((g_cSpotAmp_cc[__cuda_local_var_532083_6_non_const_idx]).x)), (262144.0))));
#line 1290 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
((g_cSpotAmpNew_cc[__cuda_local_var_532083_6_non_const_idx]).y) = ((float)(fdividef(((double)((g_cSpotAmp_cc[__cuda_local_var_532083_6_non_const_idx]).y)), (262144.0))));
#line 1291 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
} 
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}}

