#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "GenerateHologramCUDA.fatbin.c"
extern void __device_stub__Z8testfuncPf(float *);
extern void __device_stub__Z15LensesAndPrismsPhS_PfS0_(unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z15checkAmplitudesPhPf(unsigned char *, float *);
extern void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_(float *, float *, float *);
extern void __device_stub__Z34PropagateToSpotPositionsDC_FresnelP6float2PfS1_S1_i(cufftComplex *, float *, float *, float *, int);
extern void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2iS_bPhS2_S_S_(float *, float *, cufftComplex *, int, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z21setActiveRegionToZeroP6float2(cufftComplex *);
extern void __device_stub__Z4uc2fPfPhi(float *, unsigned char *, int);
extern void __device_stub__Z3p2cP6float2Pfi(cufftComplex *, float *, int);
extern void __device_stub__Z8c_cc2a_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2p_ccP6float2S0_i(cufftComplex *, cufftComplex *, int);
extern void __device_stub__Z8c_cc2p_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2re_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2im_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b(cufftComplex *, cufftComplex *, int, float *, float *, bool);
extern void __device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_iPfS1_b(cufftComplex *, cufftComplex *, int, float *, float *, bool);
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (*__dummy_static_init__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75[])(void) = {__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75};
void __device_stub__Z8testfuncPf(float *__par0){__cudaSetupArgSimple(__par0, 0U);__cudaLaunch(((char *)((void ( *)(float *))testfunc)));}
#line 612 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void testfunc( float *__cuda_0)
#line 613 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8testfuncPf( __cuda_0);


}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z15LensesAndPrismsPhS_PfS0_( unsigned char *__par0,  unsigned char *__par1,  float *__par2,  float *__par3) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaLaunch(((char *)((void ( *)(unsigned char *, unsigned char *, float *, float *))LensesAndPrisms))); }
#line 884 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void LensesAndPrisms( unsigned char *__cuda_0,unsigned char *__cuda_1,float *__cuda_2,float *__cuda_3)
#line 885 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z15LensesAndPrismsPhS_PfS0_( __cuda_0,__cuda_1,__cuda_2,__cuda_3);
#line 948 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z15checkAmplitudesPhPf( unsigned char *__par0,  float *__par1) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaLaunch(((char *)((void ( *)(unsigned char *, float *))checkAmplitudes))); }
#line 950 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void checkAmplitudes( unsigned char *__cuda_0,float *__cuda_1)
#line 951 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z15checkAmplitudesPhPf( __cuda_0,__cuda_1);
#line 1017 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_( float *__par0,  float *__par1,  float *__par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *))PropagateToSpotPositions_Fresnel))); }
#line 1024 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositions_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2)
#line 1025 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_( __cuda_0,__cuda_1,__cuda_2);
#line 1097 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z34PropagateToSpotPositionsDC_FresnelP6float2PfS1_S1_i( cufftComplex *__par0,  float *__par1,  float *__par2,  float *__par3,  int __par4) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, float *, float *, float *, int))PropagateToSpotPositionsDC_Fresnel))); }
#line 1103 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositionsDC_Fresnel( cufftComplex *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,int __cuda_4)
#line 1104 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z34PropagateToSpotPositionsDC_FresnelP6float2PfS1_S1_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4);
#line 1187 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_( float *__par0,  float *__par1,  float *__par2,  float *__par3,  int __par4,  float *__par5,  float *__par6,  bool __par7,  unsigned char *__par8,  unsigned char *__par9,  float *__par10,  float *__par11) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel))); }
#line 1194 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLM_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,bool __cuda_7,unsigned char *__cuda_8,unsigned char *__cuda_9,float *__cuda_10,float *__cuda_11)
#line 1196 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11);
#line 1302 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2iS_bPhS2_S_S_( float *__par0,  float *__par1,  cufftComplex *__par2,  int __par3,  float *__par4,  bool __par5,  unsigned char *__par6,  unsigned char *__par7,  float *__par8,  float *__par9) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaLaunch(((char *)((void ( *)(float *, float *, cufftComplex *, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel))); }
#line 1308 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLMDC_Fresnel( float *__cuda_0,float *__cuda_1,cufftComplex *__cuda_2,int __cuda_3,float *__cuda_4,bool __cuda_5,unsigned char *__cuda_6,unsigned char *__cuda_7,float *__cuda_8,float *__cuda_9)
#line 1310 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2iS_bPhS2_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9);
#line 1397 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z21setActiveRegionToZeroP6float2( cufftComplex *__par0) {  __cudaSetupArgSimple(__par0, 0U); __cudaLaunch(((char *)((void ( *)(cufftComplex *))setActiveRegionToZero))); }
#line 1398 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void setActiveRegionToZero( cufftComplex *__cuda_0)
#line 1399 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z21setActiveRegionToZeroP6float2( __cuda_0);
#line 1408 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z4uc2fPfPhi( float *__par0,  unsigned char *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, unsigned char *, int))uc2f))); }
#line 1413 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void uc2f( float *__cuda_0,unsigned char *__cuda_1,int __cuda_2)
#line 1414 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z4uc2fPfPhi( __cuda_0,__cuda_1,__cuda_2);
#line 1420 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z3p2cP6float2Pfi( cufftComplex *__par0,  float *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, float *, int))p2c))); }
#line 1424 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void p2c( cufftComplex *__cuda_0,float *__cuda_1,int __cuda_2)
#line 1425 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z3p2cP6float2Pfi( __cuda_0,__cuda_1,__cuda_2);
#line 1434 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z8c_cc2a_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2a_f))); }
#line 1439 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2a_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1440 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2a_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1447 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z9c_cc2p_ccP6float2S0_i( cufftComplex *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc))); }
#line 1451 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_cc( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1452 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2p_ccP6float2S0_i( __cuda_0,__cuda_1,__cuda_2);
#line 1460 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z8c_cc2p_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2p_f))); }
#line 1464 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1465 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2p_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1472 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z9c_cc2re_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2re_f))); }
#line 1477 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2re_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1478 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2re_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1485 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z9c_cc2im_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2im_f))); }
#line 1490 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2im_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1491 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2im_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1498 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_( float *__par0,  cufftComplex *__par1,  float *__par2,  bool __par3,  unsigned char *__par4,  unsigned char *__par5,  float *__par6,  float *__par7) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *))ReplaceAmpsSLM_FFT))); }
#line 1503 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSLM_FFT( float *__cuda_0,cufftComplex *__cuda_1,float *__cuda_2,bool __cuda_3,unsigned char *__cuda_4,unsigned char *__cuda_5,float *__cuda_6,float *__cuda_7)
#line 1505 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7);
#line 1571 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b( cufftComplex *__par0,  cufftComplex *__par1,  int __par2,  float *__par3,  float *__par4,  bool __par5) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT))); }
#line 1576 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpots_FFT( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2,float *__cuda_3,float *__cuda_4,bool __cuda_5)
#line 1577 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5);
#line 1626 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
void __device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_iPfS1_b( cufftComplex *__par0,  cufftComplex *__par1,  int __par2,  float *__par3,  float *__par4,  bool __par5) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT_DC))); }
#line 1775 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpots_FFT_DC( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2,float *__cuda_3,float *__cuda_4,bool __cuda_5)
#line 1776 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_iPfS1_b( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5);
#line 1843 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_30.cudafe1.stub.c"
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75(void) {  __cudaRegisterBinary(); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT_DC), _Z23ReplaceAmpsSpots_FFT_DCP6float2S0_iPfS1_b, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT), _Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *))ReplaceAmpsSLM_FFT), _Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2im_f), _Z9c_cc2im_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2re_f), _Z9c_cc2re_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2p_f), _Z8c_cc2p_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc), _Z9c_cc2p_ccP6float2S0_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2a_f), _Z8c_cc2a_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, float *, int))p2c), _Z3p2cP6float2Pfi, (-1)); __cudaRegisterEntry(((void ( *)(float *, unsigned char *, int))uc2f), _Z4uc2fPfPhi, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *))setActiveRegionToZero), _Z21setActiveRegionToZeroP6float2, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, cufftComplex *, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel), _Z24PropagateToSLMDC_FresnelPfS_P6float2iS_bPhS2_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel), _Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, float *, float *, float *, int))PropagateToSpotPositionsDC_Fresnel), _Z34PropagateToSpotPositionsDC_FresnelP6float2PfS1_S1_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *))PropagateToSpotPositions_Fresnel), _Z32PropagateToSpotPositions_FresnelPfS_S_, (-1)); __cudaRegisterEntry(((void ( *)(unsigned char *, float *))checkAmplitudes), _Z15checkAmplitudesPhPf, (-1)); __cudaRegisterEntry(((void ( *)(unsigned char *, unsigned char *, float *, float *))LensesAndPrisms), _Z15LensesAndPrismsPhS_PfS0_, (-1)); __cudaRegisterEntry(((void ( *)(float *))testfunc), _Z8testfuncPf, (-1)); __cudaRegisterVariable(__shadow_var(c_data_w,c_data_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_data_w_f,c_data_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w,c_half_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w_f,c_half_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels,c_N_pixels), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels_f,c_N_pixels_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_SLMpitch_f,c_SLMpitch_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_applyLUT_b,c_applyLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_useAberrationCorr_b,c_useAberrationCorr_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_usePolLUT_b,c_usePolLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_PolLUTCoeff,c_N_PolLUTCoeff), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_useDC_b,c_useDC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_DCborderWidth,c_DCborderWidth), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_useRPC_b,c_useRPC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_alphaRPC_f,c_alphaRPC_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_saveAmps_b,c_saveAmps_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_log2data_w,c_log2data_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_x,c_x), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_y,c_y), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_z,c_z), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_amp,c_amp), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_spotIndex,c_spotIndex), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_spots,c_N_spots), 0, 4, 1, 0);  }
