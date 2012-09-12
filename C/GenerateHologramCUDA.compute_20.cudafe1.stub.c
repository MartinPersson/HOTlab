#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "GenerateHologramCUDA.fatbin.c"
extern void __device_stub__Z8testfuncPf(float *);
extern void __device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_S_S_(float *, float *, float *, float *, unsigned char *, int, unsigned char *, float *, float *);
extern void __device_stub__Z15checkAmplitudesPfS_S_PhS_i(float *, float *, float *, unsigned char *, float *, int);
extern void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_i(float *, float *, float *, float *, float *, float *, int);
extern void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_ii(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int);
extern void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iS_iS_S_bPhS0_S_S_(float *, float *, float *, float *, float *, float *, float *, int, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiS_bPhS2_S_S_(float *, float *, float *, float *, float *, cufftComplex *, int, int, float *, bool, unsigned char *, unsigned char *, float *, float *);
extern void __device_stub__Z21setActiveRegionToZeroP6float2(cufftComplex *);
extern void __device_stub__Z4uc2fPfPhi(float *, unsigned char *, int);
extern void __device_stub__Z3p2cP6float2Pfi(cufftComplex *, float *, int);
extern void __device_stub__Z8c_cc2a_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2p_ccP6float2S0_i(cufftComplex *, cufftComplex *, int);
extern void __device_stub__Z8c_cc2p_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2re_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z9c_cc2im_fPfP6float2i(float *, cufftComplex *, int);
extern void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i(float *, cufftComplex *, float *, int, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int);
extern void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool);
extern void __device_stub__Z9XYtoIndexPfS_Piii(float *, float *, int *, int, int);
extern void __device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool, int);
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_20_cpp1_ii_a681ac75(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (*__dummy_static_init__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_20_cpp1_ii_a681ac75[])(void) = {__sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_20_cpp1_ii_a681ac75};
void __device_stub__Z8testfuncPf(float *__par0){__cudaSetupArgSimple(__par0, 0U);__cudaLaunch(((char *)((void ( *)(float *))testfunc)));}
#line 576 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void testfunc( float *__cuda_0)
#line 577 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8testfuncPf( __cuda_0);


}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_S_S_( float *__par0,  float *__par1,  float *__par2,  float *__par3,  unsigned char *__par4,  int __par5,  unsigned char *__par6,  float *__par7,  float *__par8) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, unsigned char *, int, unsigned char *, float *, float *))LensesAndPrisms))); }
#line 849 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void LensesAndPrisms( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,unsigned char *__cuda_4,int __cuda_5,unsigned char *__cuda_6,float *__cuda_7,float *__cuda_8)
#line 850 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8);
#line 919 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z15checkAmplitudesPfS_S_PhS_i( float *__par0,  float *__par1,  float *__par2,  unsigned char *__par3,  float *__par4,  int __par5) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, unsigned char *, float *, int))checkAmplitudes))); }
#line 921 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void checkAmplitudes( float *__cuda_0,float *__cuda_1,float *__cuda_2,unsigned char *__cuda_3,float *__cuda_4,int __cuda_5)
#line 922 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z15checkAmplitudesPfS_S_PhS_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5);
#line 995 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_i( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  float *__par5,  int __par6) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, float *, int))PropagateToSpotPositions_Fresnel))); }
#line 1002 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositions_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,float *__cuda_5,int __cuda_6)
#line 1003 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6);
#line 1076 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_ii( float *__par0,  float *__par1,  float *__par2,  cufftComplex *__par3,  float *__par4,  float *__par5,  float *__par6,  float *__par7,  int __par8,  int __par9) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int))PropagateToSpotPositionsDC_Fresnel))); }
#line 1083 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSpotPositionsDC_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,cufftComplex *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,int __cuda_8,int __cuda_9)
#line 1084 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_ii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9);
#line 1172 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iS_iS_S_bPhS0_S_S_( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  float *__par5,  float *__par6,  int __par7,  float *__par8,  int __par9,  float *__par10,  float *__par11,  bool __par12,  unsigned char *__par13,  unsigned char *__par14,  float *__par15,  float *__par16) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaSetupArgSimple(__par12, 48U); __cudaSetupArgSimple(__par13, 52U); __cudaSetupArgSimple(__par14, 56U); __cudaSetupArgSimple(__par15, 60U); __cudaSetupArgSimple(__par16, 64U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, float *, float *, int, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel))); }
#line 1179 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLM_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,int __cuda_7,float *__cuda_8,int __cuda_9,float *__cuda_10,float *__cuda_11,bool __cuda_12,unsigned char *__cuda_13,unsigned char *__cuda_14,float *__cuda_15,float *__cuda_16)
#line 1182 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iS_iS_S_bPhS0_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13,__cuda_14,__cuda_15,__cuda_16);
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiS_bPhS2_S_S_( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  cufftComplex *__par5,  int __par6,  int __par7,  float *__par8,  bool __par9,  unsigned char *__par10,  unsigned char *__par11,  float *__par12,  float *__par13) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaSetupArgSimple(__par12, 48U); __cudaSetupArgSimple(__par13, 52U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, cufftComplex *, int, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel))); }
#line 1298 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void PropagateToSLMDC_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,cufftComplex *__cuda_5,int __cuda_6,int __cuda_7,float *__cuda_8,bool __cuda_9,unsigned char *__cuda_10,unsigned char *__cuda_11,float *__cuda_12,float *__cuda_13)
#line 1301 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiS_bPhS2_S_S_( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13);
#line 1388 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z21setActiveRegionToZeroP6float2( cufftComplex *__par0) {  __cudaSetupArgSimple(__par0, 0U); __cudaLaunch(((char *)((void ( *)(cufftComplex *))setActiveRegionToZero))); }
#line 1389 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void setActiveRegionToZero( cufftComplex *__cuda_0)
#line 1390 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z21setActiveRegionToZeroP6float2( __cuda_0);
#line 1399 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z4uc2fPfPhi( float *__par0,  unsigned char *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, unsigned char *, int))uc2f))); }
#line 1404 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void uc2f( float *__cuda_0,unsigned char *__cuda_1,int __cuda_2)
#line 1405 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z4uc2fPfPhi( __cuda_0,__cuda_1,__cuda_2);
#line 1411 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z3p2cP6float2Pfi( cufftComplex *__par0,  float *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, float *, int))p2c))); }
#line 1415 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void p2c( cufftComplex *__cuda_0,float *__cuda_1,int __cuda_2)
#line 1416 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z3p2cP6float2Pfi( __cuda_0,__cuda_1,__cuda_2);
#line 1425 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z8c_cc2a_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2a_f))); }
#line 1430 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2a_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1431 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2a_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1438 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2p_ccP6float2S0_i( cufftComplex *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc))); }
#line 1442 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_cc( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1443 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2p_ccP6float2S0_i( __cuda_0,__cuda_1,__cuda_2);
#line 1451 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z8c_cc2p_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2p_f))); }
#line 1455 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2p_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1456 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z8c_cc2p_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1463 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2re_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2re_f))); }
#line 1468 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2re_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1469 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2re_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1476 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2im_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2im_f))); }
#line 1481 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void c_cc2im_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 1482 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9c_cc2im_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 1489 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i( float *__par0,  cufftComplex *__par1,  float *__par2,  int __par3,  float __par4,  bool __par5,  unsigned char *__par6,  unsigned char *__par7,  bool __par8,  bool __par9,  float *__par10,  bool __par11,  float *__par12,  int __par13) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaSetupArgSimple(__par10, 36U); __cudaSetupArgSimple(__par11, 40U); __cudaSetupArgSimple(__par12, 44U); __cudaSetupArgSimple(__par13, 48U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, float *, int, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int))ReplaceAmpsSLM_FFT))); }
#line 1494 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSLM_FFT( float *__cuda_0,cufftComplex *__cuda_1,float *__cuda_2,int __cuda_3,float __cuda_4,bool __cuda_5,unsigned char *__cuda_6,unsigned char *__cuda_7,bool __cuda_8,bool __cuda_9,float *__cuda_10,bool __cuda_11,float *__cuda_12,int __cuda_13)
#line 1497 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13);
#line 1595 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb( cufftComplex *__par0,  cufftComplex *__par1,  int *__par2,  int __par3,  int __par4,  float *__par5,  float *__par6,  float *__par7,  bool __par8,  bool __par9) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool))ReplaceAmpsSpots_FFT))); }
#line 1600 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpots_FFT( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,bool __cuda_8,bool __cuda_9)
#line 1601 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9);
#line 1651 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z9XYtoIndexPfS_Piii( float *__par0,  float *__par1,  int *__par2,  int __par3,  int __par4) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaLaunch(((char *)((void ( *)(float *, float *, int *, int, int))XYtoIndex))); }
#line 1655 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void XYtoIndex( float *__cuda_0,float *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4)
#line 1656 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z9XYtoIndexPfS_Piii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4);
#line 1663 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
void __device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi( cufftComplex *__par0,  cufftComplex *__par1,  int *__par2,  int __par3,  int __par4,  float *__par5,  float *__par6,  float *__par7,  bool __par8,  bool __par9,  int __par10) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaSetupArgSimple(__par10, 36U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool, int))ReplaceAmpsSpots_FFT_DC))); }
#line 1801 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
void ReplaceAmpsSpots_FFT_DC( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,bool __cuda_8,bool __cuda_9,int __cuda_10)
#line 1802 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{__device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10);
#line 1873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
}
#line 1 "GenerateHologramCUDA.compute_20.cudafe1.stub.c"
static void __sti____cudaRegisterAll_39_GenerateHologramCUDA_compute_20_cpp1_ii_a681ac75(void) {  __cudaRegisterBinary(); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool, int))ReplaceAmpsSpots_FFT_DC), _Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, int *, int, int))XYtoIndex), _Z9XYtoIndexPfS_Piii, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool))ReplaceAmpsSpots_FFT), _Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, float *, int, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int))ReplaceAmpsSLM_FFT), _Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2im_f), _Z9c_cc2im_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2re_f), _Z9c_cc2re_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2p_f), _Z8c_cc2p_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc), _Z9c_cc2p_ccP6float2S0_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2a_f), _Z8c_cc2a_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, float *, int))p2c), _Z3p2cP6float2Pfi, (-1)); __cudaRegisterEntry(((void ( *)(float *, unsigned char *, int))uc2f), _Z4uc2fPfPhi, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *))setActiveRegionToZero), _Z21setActiveRegionToZeroP6float2, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, cufftComplex *, int, int, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLMDC_Fresnel), _Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiS_bPhS2_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, float *, float *, int, float *, int, float *, float *, bool, unsigned char *, unsigned char *, float *, float *))PropagateToSLM_Fresnel), _Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iS_iS_S_bPhS0_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int))PropagateToSpotPositionsDC_Fresnel), _Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_ii, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, float *, int))PropagateToSpotPositions_Fresnel), _Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, unsigned char *, float *, int))checkAmplitudes), _Z15checkAmplitudesPfS_S_PhS_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, unsigned char *, int, unsigned char *, float *, float *))LensesAndPrisms), _Z15LensesAndPrismsPfS_S_S_PhiS0_S_S_, (-1)); __cudaRegisterEntry(((void ( *)(float *))testfunc), _Z8testfuncPf, (-1)); __cudaRegisterVariable(__shadow_var(c_data_w,c_data_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_data_w_f,c_data_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w,c_half_w), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_half_w_f,c_half_w_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels,c_N_pixels), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_pixels_f,c_N_pixels_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_ApplyLUT_b,c_ApplyLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_UseAberrationCorr_b,c_UseAberrationCorr_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_UsePolLUT_b,c_UsePolLUT_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_N_PolLUTCoeff,c_N_PolLUTCoeff), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_UseDC_b,c_UseDC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_DCborderWidth,c_DCborderWidth), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_useRPC_b,c_useRPC_b), 0, 1, 1, 0); __cudaRegisterVariable(__shadow_var(c_alphaRPC_f,c_alphaRPC_f), 0, 4, 1, 0); __cudaRegisterVariable(__shadow_var(c_saveAmps_b,c_saveAmps_b), 0, 1, 1, 0);  }
