HOTlab - free and open source software for holographic optical tweezers

The project consists of two parts: a dll written in CUDA that generates holograms on CUDA suported GPUs and a GUI program written in LabVIEW. The dll is licensed under LGPL and the LabVIEW programs under GPL.

The main program, called "Martins HOT interface.vi", is located in the LabVIEW folder along with "GenerateHologramCUDA.dll". GenerateHologramCUDA.dll can be compiled for use with SLM:s connected to a PCI or PCIe interface. By default, the LabVIEW program links to the dll compiled for PCIe based SLMs. To change to a PCI based SLM, just copy and replace GenerateHologramCUDA.dll with the on located in the LabVIEW\GenerateHologramCUDA_PCI folder. 

The LabVIEW program acquires and displays microscope images in which traps can be positioned and controlled directly. This requires NI Vision Acquisition software to be installed along with a camera connected with firewire, GigE or Camera Link. 

Functions for particle tracking are included but requires the NI Vision Development Module to be installed. Those functions are therefore disabled by default. 

The program requires CUDA to be installed and of course a CUDA enabled GPU.Functionaliy has been verified on the following GPUs from Nvidia: 

GeForce GTX 285
GeForce GTX 480
Geforce GS 8600M (Notebook)
Quadro FX 5600
GeForce GT 210

The code is functional on, but not yet optimized for Fermi devices. The performance is therefore similar on GTX 285 and GTX 480 although the GTX 480 (or newer devices) is expected to be substantially faster after optimization. 

A quick start guide for the LabVIEW program is located in the "docs" folder.

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

