all:
	nvcc --gpu-architecture=sm_20 --compiler-options -Wall GenerateHologramCUDA.cu -o hologram -lcufft

clean:
	rm -rf hologram
