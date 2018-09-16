all:
	nvcc --gpu-architecture=sm_20 --compiler-options -Wall -g -O2 generateHologram.cu -o hologram

clean:
	rm -rf hologram
