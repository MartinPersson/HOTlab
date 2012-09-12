#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "GenerateHologramCUDA_kernel.fatbin.c"
extern void __device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i(float *, float *, float *, float *, unsigned char *, int, unsigned char *, bool, int, bool, float *, bool, float *, int);
extern void __device_stub__Z15checkAmplitudesPfS_S_PhS_iii(float *, float *, float *, unsigned char *, float *, int, int, int);
extern void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii(float *, float *, float *, float *, float *, float *, int, int, int);
extern void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int, int, int);
extern void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib(float *, float *, float *, float *, float *, float *, float *, int, int, float *, int, float *, float, float *, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool);
extern void __device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib(float *, float *, float *, float *, float *, cufftComplex *, int, int, int, float *, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool);
extern void __device_stub__Z21setActiveRegionToZeroP6float2i(cufftComplex *, int);
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
static void __sti____cudaRegisterAll_46_GenerateHologramCUDA_kernel_compute_20_cpp1_ii_341e9a3e(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (*__dummy_static_init__sti____cudaRegisterAll_46_GenerateHologramCUDA_kernel_compute_20_cpp1_ii_341e9a3e[])(void) = {__sti____cudaRegisterAll_46_GenerateHologramCUDA_kernel_compute_20_cpp1_ii_341e9a3e};
void __device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i(float *__par0, float *__par1, float *__par2, float *__par3, unsigned char *__par4, int __par5, unsigned char *__par6, bool __par7, int __par8, bool __par9, float *__par10, bool __par11, float *__par12, int __par13){__cudaSetupArgSimple(__par0, 0U);__cudaSetupArgSimple(__par1, 4U);__cudaSetupArgSimple(__par2, 8U);__cudaSetupArgSimple(__par3, 12U);__cudaSetupArgSimple(__par4, 16U);__cudaSetupArgSimple(__par5, 20U);__cudaSetupArgSimple(__par6, 24U);__cudaSetupArgSimple(__par7, 28U);__cudaSetupArgSimple(__par8, 32U);__cudaSetupArgSimple(__par9, 36U);__cudaSetupArgSimple(__par10, 40U);__cudaSetupArgSimple(__par11, 44U);__cudaSetupArgSimple(__par12, 48U);__cudaSetupArgSimple(__par13, 52U);__cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, unsigned char *, int, unsigned char *, bool, int, bool, float *, bool, float *, int))LensesAndPrisms)));}
#line 280 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void LensesAndPrisms( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,unsigned char *__cuda_4,int __cuda_5,unsigned char *__cuda_6,bool __cuda_7,int __cuda_8,bool __cuda_9,float *__cuda_10,bool __cuda_11,float *__cuda_12,int __cuda_13)
#line 281 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13);
#line 352 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z15checkAmplitudesPfS_S_PhS_iii( float *__par0,  float *__par1,  float *__par2,  unsigned char *__par3,  float *__par4,  int __par5,  int __par6,  int __par7) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, unsigned char *, float *, int, int, int))checkAmplitudes))); }
#line 354 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void checkAmplitudes( float *__cuda_0,float *__cuda_1,float *__cuda_2,unsigned char *__cuda_3,float *__cuda_4,int __cuda_5,int __cuda_6,int __cuda_7)
#line 355 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z15checkAmplitudesPfS_S_PhS_iii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7);
#line 427 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  float *__par5,  int __par6,  int __par7,  int __par8) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, float *, int, int, int))PropagateToSpotPositions_Fresnel))); }
#line 434 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void PropagateToSpotPositions_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,float *__cuda_5,int __cuda_6,int __cuda_7,int __cuda_8)
#line 435 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8);
#line 501 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii( float *__par0,  float *__par1,  float *__par2,  cufftComplex *__par3,  float *__par4,  float *__par5,  float *__par6,  float *__par7,  int __par8,  int __par9,  int __par10,  int __par11) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int, int, int))PropagateToSpotPositionsDC_Fresnel))); }
#line 508 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void PropagateToSpotPositionsDC_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,cufftComplex *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,int __cuda_8,int __cuda_9,int __cuda_10,int __cuda_11)
#line 509 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11);
#line 590 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  float *__par5,  float *__par6,  int __par7,  int __par8,  float *__par9,  int __par10,  float *__par11,  float __par12,  float *__par13,  bool __par14,  unsigned char *__par15,  unsigned char *__par16,  bool __par17,  bool __par18,  float *__par19,  bool __par20,  float *__par21,  int __par22,  bool __par23) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaSetupArgSimple(__par12, 48U); __cudaSetupArgSimple(__par13, 52U); __cudaSetupArgSimple(__par14, 56U); __cudaSetupArgSimple(__par15, 60U); __cudaSetupArgSimple(__par16, 64U); __cudaSetupArgSimple(__par17, 68U); __cudaSetupArgSimple(__par18, 69U); __cudaSetupArgSimple(__par19, 72U); __cudaSetupArgSimple(__par20, 76U); __cudaSetupArgSimple(__par21, 80U); __cudaSetupArgSimple(__par22, 84U); __cudaSetupArgSimple(__par23, 88U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, float *, float *, int, int, float *, int, float *, float, float *, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool))PropagateToSLM_Fresnel))); }
#line 597 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void PropagateToSLM_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,float *__cuda_5,float *__cuda_6,int __cuda_7,int __cuda_8,float *__cuda_9,int __cuda_10,float *__cuda_11,float __cuda_12,float *__cuda_13,bool __cuda_14,unsigned char *__cuda_15,unsigned char *__cuda_16,bool __cuda_17,bool __cuda_18,float *__cuda_19,bool __cuda_20,float *__cuda_21,int __cuda_22,bool __cuda_23)
#line 601 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13,__cuda_14,__cuda_15,__cuda_16,__cuda_17,__cuda_18,__cuda_19,__cuda_20,__cuda_21,__cuda_22,__cuda_23);
#line 710 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib( float *__par0,  float *__par1,  float *__par2,  float *__par3,  float *__par4,  cufftComplex *__par5,  int __par6,  int __par7,  int __par8,  float *__par9,  float __par10,  bool __par11,  unsigned char *__par12,  unsigned char *__par13,  bool __par14,  bool __par15,  float *__par16,  bool __par17,  float *__par18,  int __par19,  bool __par20) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 36U); __cudaSetupArgSimple(__par10, 40U); __cudaSetupArgSimple(__par11, 44U); __cudaSetupArgSimple(__par12, 48U); __cudaSetupArgSimple(__par13, 52U); __cudaSetupArgSimple(__par14, 56U); __cudaSetupArgSimple(__par15, 57U); __cudaSetupArgSimple(__par16, 60U); __cudaSetupArgSimple(__par17, 64U); __cudaSetupArgSimple(__par18, 68U); __cudaSetupArgSimple(__par19, 72U); __cudaSetupArgSimple(__par20, 76U); __cudaLaunch(((char *)((void ( *)(float *, float *, float *, float *, float *, cufftComplex *, int, int, int, float *, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool))PropagateToSLMDC_Fresnel))); }
#line 716 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void PropagateToSLMDC_Fresnel( float *__cuda_0,float *__cuda_1,float *__cuda_2,float *__cuda_3,float *__cuda_4,cufftComplex *__cuda_5,int __cuda_6,int __cuda_7,int __cuda_8,float *__cuda_9,float __cuda_10,bool __cuda_11,unsigned char *__cuda_12,unsigned char *__cuda_13,bool __cuda_14,bool __cuda_15,float *__cuda_16,bool __cuda_17,float *__cuda_18,int __cuda_19,bool __cuda_20)
#line 720 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13,__cuda_14,__cuda_15,__cuda_16,__cuda_17,__cuda_18,__cuda_19,__cuda_20);
#line 806 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z21setActiveRegionToZeroP6float2i( cufftComplex *__par0,  int __par1) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, int))setActiveRegionToZero))); }
#line 807 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void setActiveRegionToZero( cufftComplex *__cuda_0,int __cuda_1)
#line 808 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z21setActiveRegionToZeroP6float2i( __cuda_0,__cuda_1);
#line 817 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z4uc2fPfPhi( float *__par0,  unsigned char *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, unsigned char *, int))uc2f))); }
#line 822 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void uc2f( float *__cuda_0,unsigned char *__cuda_1,int __cuda_2)
#line 823 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z4uc2fPfPhi( __cuda_0,__cuda_1,__cuda_2);
#line 829 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z3p2cP6float2Pfi( cufftComplex *__par0,  float *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, float *, int))p2c))); }
#line 833 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void p2c( cufftComplex *__cuda_0,float *__cuda_1,int __cuda_2)
#line 834 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z3p2cP6float2Pfi( __cuda_0,__cuda_1,__cuda_2);
#line 843 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z8c_cc2a_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2a_f))); }
#line 848 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void c_cc2a_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 849 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z8c_cc2a_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 856 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2p_ccP6float2S0_i( cufftComplex *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc))); }
#line 860 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void c_cc2p_cc( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 861 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z9c_cc2p_ccP6float2S0_i( __cuda_0,__cuda_1,__cuda_2);
#line 869 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z8c_cc2p_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2p_f))); }
#line 873 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void c_cc2p_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 874 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z8c_cc2p_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 881 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2re_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2re_f))); }
#line 886 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void c_cc2re_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 887 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z9c_cc2re_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 894 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z9c_cc2im_fPfP6float2i( float *__par0,  cufftComplex *__par1,  int __par2) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, int))c_cc2im_f))); }
#line 899 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void c_cc2im_f( float *__cuda_0,cufftComplex *__cuda_1,int __cuda_2)
#line 900 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z9c_cc2im_fPfP6float2i( __cuda_0,__cuda_1,__cuda_2);
#line 907 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i( float *__par0,  cufftComplex *__par1,  float *__par2,  int __par3,  float __par4,  bool __par5,  unsigned char *__par6,  unsigned char *__par7,  bool __par8,  bool __par9,  float *__par10,  bool __par11,  float *__par12,  int __par13) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaSetupArgSimple(__par10, 36U); __cudaSetupArgSimple(__par11, 40U); __cudaSetupArgSimple(__par12, 44U); __cudaSetupArgSimple(__par13, 48U); __cudaLaunch(((char *)((void ( *)(float *, cufftComplex *, float *, int, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int))ReplaceAmpsSLM_FFT))); }
#line 912 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void ReplaceAmpsSLM_FFT( float *__cuda_0,cufftComplex *__cuda_1,float *__cuda_2,int __cuda_3,float __cuda_4,bool __cuda_5,unsigned char *__cuda_6,unsigned char *__cuda_7,bool __cuda_8,bool __cuda_9,float *__cuda_10,bool __cuda_11,float *__cuda_12,int __cuda_13)
#line 915 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10,__cuda_11,__cuda_12,__cuda_13);
#line 1013 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb( cufftComplex *__par0,  cufftComplex *__par1,  int *__par2,  int __par3,  int __par4,  float *__par5,  float *__par6,  float *__par7,  bool __par8,  bool __par9) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool))ReplaceAmpsSpots_FFT))); }
#line 1018 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void ReplaceAmpsSpots_FFT( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,bool __cuda_8,bool __cuda_9)
#line 1019 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9);
#line 1069 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z9XYtoIndexPfS_Piii( float *__par0,  float *__par1,  int *__par2,  int __par3,  int __par4) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaLaunch(((char *)((void ( *)(float *, float *, int *, int, int))XYtoIndex))); }
#line 1073 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void XYtoIndex( float *__cuda_0,float *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4)
#line 1074 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z9XYtoIndexPfS_Piii( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4);
#line 1081 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
void __device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi( cufftComplex *__par0,  cufftComplex *__par1,  int *__par2,  int __par3,  int __par4,  float *__par5,  float *__par6,  float *__par7,  bool __par8,  bool __par9,  int __par10) {  __cudaSetupArgSimple(__par0, 0U); __cudaSetupArgSimple(__par1, 4U); __cudaSetupArgSimple(__par2, 8U); __cudaSetupArgSimple(__par3, 12U); __cudaSetupArgSimple(__par4, 16U); __cudaSetupArgSimple(__par5, 20U); __cudaSetupArgSimple(__par6, 24U); __cudaSetupArgSimple(__par7, 28U); __cudaSetupArgSimple(__par8, 32U); __cudaSetupArgSimple(__par9, 33U); __cudaSetupArgSimple(__par10, 36U); __cudaLaunch(((char *)((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool, int))ReplaceAmpsSpots_FFT_DC))); }
#line 1219 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
void ReplaceAmpsSpots_FFT_DC( cufftComplex *__cuda_0,cufftComplex *__cuda_1,int *__cuda_2,int __cuda_3,int __cuda_4,float *__cuda_5,float *__cuda_6,float *__cuda_7,bool __cuda_8,bool __cuda_9,int __cuda_10)
#line 1220 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
{__device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi( __cuda_0,__cuda_1,__cuda_2,__cuda_3,__cuda_4,__cuda_5,__cuda_6,__cuda_7,__cuda_8,__cuda_9,__cuda_10);
#line 1292 "c:/Users/Martin/Dropbox/GU/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA_kernel.cu"
}
#line 1 "GenerateHologramCUDA_kernel.compute_20.cudafe1.stub.c"
static void __sti____cudaRegisterAll_46_GenerateHologramCUDA_kernel_compute_20_cpp1_ii_341e9a3e(void) {  __cudaRegisterBinary(); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool, int))ReplaceAmpsSpots_FFT_DC), _Z23ReplaceAmpsSpots_FFT_DCP6float2S0_PiiiPfS2_S2_bbi, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, int *, int, int))XYtoIndex), _Z9XYtoIndexPfS_Piii, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int *, int, int, float *, float *, float *, bool, bool))ReplaceAmpsSpots_FFT), _Z20ReplaceAmpsSpots_FFTP6float2S0_PiiiPfS2_S2_bb, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, float *, int, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int))ReplaceAmpsSLM_FFT), _Z18ReplaceAmpsSLM_FFTPfP6float2S_ifbPhS2_bbS_bS_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2im_f), _Z9c_cc2im_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2re_f), _Z9c_cc2re_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2p_f), _Z8c_cc2p_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, cufftComplex *, int))c_cc2p_cc), _Z9c_cc2p_ccP6float2S0_i, (-1)); __cudaRegisterEntry(((void ( *)(float *, cufftComplex *, int))c_cc2a_f), _Z8c_cc2a_fPfP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, float *, int))p2c), _Z3p2cP6float2Pfi, (-1)); __cudaRegisterEntry(((void ( *)(float *, unsigned char *, int))uc2f), _Z4uc2fPfPhi, (-1)); __cudaRegisterEntry(((void ( *)(cufftComplex *, int))setActiveRegionToZero), _Z21setActiveRegionToZeroP6float2i, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, cufftComplex *, int, int, int, float *, float, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool))PropagateToSLMDC_Fresnel), _Z24PropagateToSLMDC_FresnelPfS_S_S_S_P6float2iiiS_fbPhS2_bbS_bS_ib, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, float *, float *, int, int, float *, int, float *, float, float *, bool, unsigned char *, unsigned char *, bool, bool, float *, bool, float *, int, bool))PropagateToSLM_Fresnel), _Z22PropagateToSLM_FresnelPfS_S_S_S_S_S_iiS_iS_fS_bPhS0_bbS_bS_ib, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, cufftComplex *, float *, float *, float *, float *, int, int, int, int))PropagateToSpotPositionsDC_Fresnel), _Z34PropagateToSpotPositionsDC_FresnelPfS_S_P6float2S_S_S_S_iiii, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, float *, float *, int, int, int))PropagateToSpotPositions_Fresnel), _Z32PropagateToSpotPositions_FresnelPfS_S_S_S_S_iii, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, unsigned char *, float *, int, int, int))checkAmplitudes), _Z15checkAmplitudesPfS_S_PhS_iii, (-1)); __cudaRegisterEntry(((void ( *)(float *, float *, float *, float *, unsigned char *, int, unsigned char *, bool, int, bool, float *, bool, float *, int))LensesAndPrisms), _Z15LensesAndPrismsPfS_S_S_PhiS0_bibS_bS_i, (-1)); __cudaRegisterVariable(__shadow_var(constData,constData), 0, 4, 1, 0);  }
