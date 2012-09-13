#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "GenerateHologramCUDA.fatbin.c"
extern void __device_stub__Z15LensesAndPrismsPhS_PfS0_(unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z18calculateIobtainedPhPf(unsigned char *, float *);
extern void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_(float *, float *, float *);
extern void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_S_i(float *, float *, float *, float *, int);
extern void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2S_iS_bPhS2_S_S_(float *, float *, cufftComplex *, float *, int, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z21setActiveRegionToZeroP6float2(cufftComplex *);
extern void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b(cufftComplex *, cufftComplex *, int, float *, float *, bool);
extern void __device_stub__Z22ReplaceAmpsSpotsDC_FFTP6float2S0_iPfS1_b(cufftComplex *, cufftComplex *, int, float *, float *, bool);
extern void __device_stub__Z8testfuncPf(float *);
extern void __device_stub__Z4uc2fPfPhi(float *, unsigned char *, int);
extern void __device_stub__Z3p2cP6float2Pfi(cufftComplex *, float *, int);
extern void __device_stub__Z8c_cc2a_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2p_ccP6float2S0_i(cufftComplex *, cufftComplex *, int);
extern void __device_stub__Z8c_cc2p_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2re_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2im_fPfP6float2i(float *, cufftComplex *, int);
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_30_cpp1_ii_a681ac75(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (*__dummy_static_init__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_30_cpp1_ii_a681ac75[])(void) = {__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_30_cpp1_ii_a681ac75};
void __device_stub__Z15LensesAndPrismsPhS_PfS0_(unsigned char *__par0, unsigned char *__par1, float *__par2, float *__par3){__cudaSetupArgSimple(__par0, 0U);__cudaSetupArgSimple(__par1, 4U);__cudaSetupArgSimple(__par2, 8U);__cudaSetupArgSimple(__par3, 12U);__cudaLaunch(((char *)((void ( *)(unsigned char *, unsigned char *, float *, float *))LensesAndPrisms)));}
#line 871 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void LensesAndPrisms( unsigned char *__cuda_0,unsigned char *__cuda_1,float *__cuda_2,float *__cuda_3)
#line 872 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z15LensesAndPrismsPhS_PfS0_( __cuda_0,__cuda_1,__cuda_2,__cuda_3);
#line 919 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z18calculateIobtainedPhPf( unsigned char *__par0,  float *__par1) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaLaunch(((char *)((void ( *)(unsigned char *, float *))calculateIobtained))); }
#line 921 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void calculateIobtained( unsigned char *__cuda_0,float *__cuda_1)
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z18calculateIobtainedPhPf( __cuda_0,__cuda_1);
#line 988 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_( float *__par0,  float *__par1,  float *__par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *))PropagateToSpotPositions_Fresnel))); }
#line 997 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositions_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2)
#line 998 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_( __cuda_0,__cuda_1,__cuda_2);
#line 1061 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_S_i( float *__par0,  float *__par1,  float *__par2,  float *__par3,  int __par4) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, int))PropagateToSpotPositionsDC_Fresnel))); }
#line 1066 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositionsDC_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,int __cuda_4)
#line 1067 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_S_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4);
#line 1134 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_( float *__par0,  float *__par1,  float *__par2,  float *__par3,  int __par4,  float *__par5,  float *__par6,  bool __par7,  unsigned char *__par8,  unsigned char *__par9,  float *__par10,  float *__par11) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel))); }
#line 1138 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLM_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,bool __cuda_7,unsigned char *__cuda_8,unsigned char *__cuda_9,float *__cuda_10,float *__cuda_11)
#line 1140 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11);
#line 1238 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2S_iS_bPhS2_S_S_( float *__par0,  float *__par1,  cufftComplex *__par2,  float *__par3,  int __par4,  float *__par5,  bool __par6,  unsigned char *__par7,  unsigned char *__par8,  float *__par9,  float *__par10) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaLaunch(((char *)((void ( *)(float *, float *, cufftComplex *, float *, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel))); }
#line 1242 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLMDC_Fresnel( float *__cuda_0,float *__cuda_1,cufftComplex *__cuda_2,float *__cuda_3,int __cuda_4,float *__cuda_5,bool __cuda_6,unsigned char *__cuda_7,unsigned char *__cuda_8,float *__cuda_9,float *__cuda_10)
#line 1244 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2S_iS_bPhS2_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10);
#line 1315 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z21setActiveRegionToZeroP6float2( cufftComplex *__par0) {  __cudaSetupArgSimple(__par0, 0U); __cudaLaunch(((char *)((void ( *)(cufftComplex *))setActiveRegionToZero))); }
#line 1319 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void setActiveRegionToZero( cufftComplex *__cuda_0)
#line 1320 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z21setActiveRegionToZeroP6float2( __cuda_0);
#line 1329 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_( float *__par0,  cufftComplex *__par1,  float *__par2,  bool __par3,  unsigned char *__par4,  unsigned char *__par5,  float *__par6,  float *__par7) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *))ReplaceAmpsSLM_FFT))); }
#line 1337 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSLM_FFT( float *__cuda_0,cufftComplex *__cuda_1,float *__cuda_2,bool __cuda_3,unsigned char *__cuda_4,unsigned char *__cuda_5,float *__cuda_6,float *__cuda_7)
#line 1339 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7);
#line 1405 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b( cufftComplex *__par0,  cufftComplex *__par1,  int __par2,  float *__par3,  float *__par4,  bool __par5) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT))); }
#line 1410 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpots_FFT( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2,float *__cuda_3,float *__cuda_4,bool __cuda_5)
#line 1411 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5);
#line 1460 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z22ReplaceAmpsSpotsDC_FFTP6float2S0_iPfS1_b( cufftComplex *__par0,  cufftComplex *__par1,  int __par2,  float *__par3,  float *__par4,  bool __par5) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpotsDC_FFT))); }
#line 1465 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpotsDC_FFT( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2,float *__cuda_3,float *__cuda_4,bool __cuda_5)
#line 1466 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z22ReplaceAmpsSpotsDC_FFTP6float2S0_iPfS1_b( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5);
#line 1506 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z8testfuncPf( float *__par0) {  __cudaSetupArgSimple(__par0, 0U); __cudaLaunch(((char *)((void ( *)(float *))testfunc))); }
#line 1512 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void testfunc( float *__cuda_0)
#line 1513 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8testfuncPf( __cuda_0);


}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z4uc2fPfPhi( float *__par0,  unsigned char *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, unsigned char *, int))uc2f))); }
#line 1520 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void uc2f( float *__cuda_0,unsigned char *__cuda_1,int __cuda_2)
#line 1521 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z4uc2fPfPhi( __cuda_0,__cuda_1,__cuda_2);
#line 1527 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z3p2cP6float2Pfi( cufftComplex *__par0,  float *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, float *, int))p2c))); }
#line 1531 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void p2c( cufftComplex *__cuda_0,float *__cuda_1,int __cuda_2)
#line 1532 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z3p2cP6float2Pfi( __cuda_0,__cuda_1,__cuda_2);
#line 1541 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z8c_cc2a_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2a_f))); }
#line 1546 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2a_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1547 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2a_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1554 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z9c_cc2p_ccP6float2S0_i( cufftComplex *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc))); }
#line 1558 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_cc( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1559 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2p_ccP6float2S0_i( __cuda_0,__cuda_1,__cuda_2);
#line 1567 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z8c_cc2p_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2p_f))); }
#line 1571 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1572 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2p_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1579 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z9c_cc2re_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2re_f))); }
#line 1584 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2re_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1585 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2re_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1592 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
void __device_stub__Z9c_cc2im_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2im_f))); }
#line 1596 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2im_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2im_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1604 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_13.cudafe1.stub.c"
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_30_cpp1_ii_a681ac75(void) {  __cudaRegisterBinary(); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2im_f), _Z9c_cc2im_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2re_f), _Z9c_cc2re_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2p_f), _Z8c_cc2p_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc), _Z9c_cc2p_ccP6float2S0_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2a_f), _Z8c_cc2a_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, float *, int))p2c), _Z3p2cP6float2Pfi, (-1)); __cudaRegisterEntry(((void ( *)(float *, unsigned char *, int))uc2f), _Z4uc2fPfPhi, (-1)); __cudaRegisterEntry(((void ( *)(float *))testfunc), _Z8testfuncPf, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpotsDC_FFT), _Z22ReplaceAmpsSpotsDC_FFTP6float2S0_iPfS1_b, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int, float *, float *, bool))ReplaceAmpsSpots_FFT), _Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, float *, bool, unsigned char *, unsigned char *, float *, float *))ReplaceAmpsSLM_FFT), _Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *))setActiveRegionToZero), _Z21setActiveRegionToZeroP6float2, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, cufftComplex *, float *, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel), _Z24PropagateToSLMDC_FresnelPfS_P6float2S_iS_bPhS2_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel), _Z22PropagateToSLM_FresnelPfS_S_S_iS_S_bPhS0_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, int))PropagateToSpotPositionsDC_Fresnel), _Z34PropagateToSpotPositionsDC_FresnelPfS_S_S_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *))PropagateToSpotPositions_Fresnel), _Z32PropagateToSpotPositions_FresnelPfS_S_, (-1)); __cudaRegisterEntry(((void ( *)(unsigned char *, float *))calculateIobtained), _Z18calculateIobtainedPhPf, (-1)); __cudaRegisterEntry(((void ( *)(unsigned char *, unsigned char *, float *, float *))LensesAndPrisms), _Z15LensesAndPrismsPhS_PfS0_, (-1)); __cudaRegisterVariable(__shadow_var(c_data_w,c_data_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_data_w_f,c_data_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w,c_half_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w_f,c_half_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels,c_N_pixels), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels_f,c_N_pixels_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_SLMpitch_f,c_SLMpitch_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_applyLUT_b,c_applyLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_useAberrationCorr_b,c_useAberrationCorr_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_usePolLUT_b,c_usePolLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_PolLUTCoeff,c_N_PolLUTCoeff), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_useDC_b,c_useDC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_DCborderWidth,c_DCborderWidth), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_useRPC_b,c_useRPC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_alphaRPC_f,c_alphaRPC_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_saveI_b,c_saveI_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_log2data_w,c_log2data_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_x,c_x), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_y,c_y), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_z,c_z), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_amp,c_amp), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_spotIndex,c_spotIndex), 0, 1024, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_spots,c_N_spots), 0, 4, 1, 0);  }
