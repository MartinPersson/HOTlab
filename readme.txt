Instructions for compilation and use of the GenerateHologramCUDA dll

To compile CUDA project:
-Install Visual Studio 2008
-Install CUDA toolkit and CUDA SDK
-Download and run the CUDA VS Wizard (http://sourceforge.net/projects/cudavswizard/files/)

To compile dll for SLM communication:
-Right click LoadHologram.cpp and select "Exclude from project" (if included).
-Select "add/existing item".
-navigate to the "LoadHologramPCIe" or "LoadHologramPCI" folder (depending on your hardware) and select "LoadHologram.cpp".
-Rebuild solution

To run dll with SLM enabled:
-Put PCIEboard.dll and wdapi900.dll in system32 folder (or add other location to environment variables (?)) . For the PCI version, put Bnsboard.dll, 512Aboard.dll and 256Aboard.dll in the system32 folder.
-Put LUT file for the SLM in the same folder as GenerateHologramCUDA.dll.

Error message:
fatal error C1083: Cannot open include file: 'cutil.h': No such file or directory
Solution
Go to Configuration Properties – CUDA Build Rule v3.0.0 – General – Additional include Directories and add : $(NVSDKCOMPUTE_ROOT)\C\common\inc

To run dll on systems with Arryx HOT Kit installed:
