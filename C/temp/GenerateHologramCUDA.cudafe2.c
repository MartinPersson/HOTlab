#line 1 "GenerateHologramCUDA.cudafe1.gpu"
typedef char __nv_bool;
#line 478 "c:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
typedef unsigned size_t;
#include "crt/host_runtime.h"
#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef struct float2 cuFloatComplex;
#line 282 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef cuFloatComplex cuComplex;
#line 100 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef cuComplex cufftComplex;
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);
#line 588 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern int __float2uint_rz();
#line 588 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern int fdividef();
#line 592 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern int __float2int_rz();

#include "GenerateHologramCUDA.cudafe2.stub.c"
