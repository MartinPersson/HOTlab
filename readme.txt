HOTlab - free and open source software for Holographic Optical Tweezers (HOT)

The project consists of two parts: 
1. GenerateHologramCUDA.dll - a dll written in C for CUDA which generates holograms on CUDA suported GPUs.
2. Martins HOT interface - a GUI program for HOT applications written in LabVIEW. 

NOTE: The function calls in GenerateHologramCUDA.dll were updated November 17 2011. If you have an older version of HOTlab and want the new dll, the LabVIEW software must be updated as well. 

A quick start guide for the LabVIEW program is located in the "doc" folder along with a detailed description of GenerateHologramCUDA.dll
The dll is licensed under LGPL and the LabVIEW programs under GPL.

The program requires CUDA to be installed and of course a CUDA enabled GPU. Functionaliy has been verified on the following GPUs from Nvidia: 

GeForce GTX 285
GeForce GTX 480
GeForce GTX 580
Geforce GS 8600M (Notebook)
Quadro FX 5600
GeForce GT 210

The main program, called "Martins HOT interface.vi", is located in the LabVIEW folder along with "GenerateHologramCUDA.dll". GenerateHologramCUDA.dll can be compiled for use with SLM:s connected to a PCI or PCIe interface or for use with no SLM installed. By default, the LabVIEW program links to the dll compiled for PCIe based SLMs. To change to another version, just copy and replace GenerateHologramCUDA.dll with the dll located in  \GenerateHologramCUDA_dll\SM[XX]_[YYYY]SLM. [XX] indicates which "Compute capability" the dll is optimized for and [YYYY] indicates the type of SLM interface. To determine the compute capability of your GPU, check http://developer.nvidia.com/cuda-gpus 

The LabVIEW program acquires and displays microscope images in which traps can be positioned and controlled directly. This requires NI Vision Acquisition software to be installed along with a camera connected with firewire, GigE or Camera Link. 

Functions for particle tracking are included but requires the NI Vision Development Module to be installed. Those functions are therefore disabled by default. 


To use the dll compiled for use with a BNS SLM, Microsoft Visual C++ 2008 SP1 Redistributable Package may have to be installed. The Redistributable Package can be downloaded from Microsoft:
http://www.microsoft.com/download/en/details.aspx?id=5582&WT.mc_id=MSCOM_EN_US_DLC_DETAILS_121LSUS007998


Instructions for compilation and use of the GenerateHologramCUDA dll:

To compile CUDA project:
-Install Visual Studio 2008
-Install CUDA toolkit and CUDA SDK (the included dll:s are compiled for CUDA 3.2 and CUDA 4.0RC2)
-Download and run the CUDA VS Wizard (http://sourceforge.net/projects/cudavswizard/files/)

To compile dll for SLM communication:
-Right click LoadHologram.cpp and select "Exclude from project" (if included).
-Select "add/existing item".
-navigate to the "LoadHologramPCIe" or "LoadHologramPCI" folder (depending on your hardware) and select "LoadHologram.cpp".
-Rebuild solution

To run dll with SLM enabled:
-Put PCIEboard.dll and wdapi900.dll in system32 folder (or add other location to environment variables (?)) . For the PCI version, put Bnsboard.dll, 512Aboard.dll and 256Aboard.dll in the system32 folder.
-Put LUT file for the SLM in the same folder as GenerateHologramCUDA.dll.

