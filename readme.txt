The project consists of two parts: a dll written in CUDA that generates holograms on CUDA suported GPUs and a GUI program written in LabVIEW. The dll is licensed under LGPL and the LabVIEW programs under GPL.

The main program, called "Martins HOT interface.vi", is located in the LabVIEW folder along with "GenerateHologramCUDA.dll". GenerateHologramCUDA.dll can be compiled for use with SLM:s connected to a PCI or PCIe interface. By default, the LabVIEW program links to the dll compiled for PCIe based SLMs. To change to a PCI based SLM, just copy and replace GenerateHologramCUDA.dll with the on located in the LabVIEW\GenerateHologramCUDA_PCI folder. 

A quick start guide for the LabVIEW program is located in the "docs" folder.


Instructions for compilation and use of the GenerateHologramCUDA dll:

To compile CUDA project:
-Install Visual Studio 2008
-Install CUDA toolkit and CUDA SDK (the included dll is compiled for CUDA 3.1)
-Download and run the CUDA VS Wizard (http://sourceforge.net/projects/cudavswizard/files/)

To compile dll for SLM communication:
-Right click LoadHologram.cpp and select "Exclude from project" (if included).
-Select "add/existing item".
-navigate to the "LoadHologramPCIe" or "LoadHologramPCI" folder (depending on your hardware) and select "LoadHologram.cpp".
-Rebuild solution

To run dll with SLM enabled:
-Put PCIEboard.dll and wdapi900.dll in system32 folder (or add other location to environment variables (?)) . For the PCI version, put Bnsboard.dll, 512Aboard.dll and 256Aboard.dll in the system32 folder.
-Put LUT file for the SLM in the same folder as GenerateHologramCUDA.dll.

