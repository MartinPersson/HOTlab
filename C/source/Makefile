all:
	nvcc --gpu-architecture=sm_75 -O3 -lineinfo --maxrregcount=63 --compiler-options -Wall -g generateHologram.cu testMain.cu -o hologram
	nvcc --gpu-architecture=sm_75 -O3 -lineinfo --compiler-options -Wall -g goldenHologram.cu -o goldenHologram
clean:
	rm -rf hologram
	rm -rf goldenHologram
