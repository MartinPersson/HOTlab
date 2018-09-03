all:
	nvcc --gpu-architecture=sm_20 GenerateHologramCUDA.cu -o hologram -lcufft

clean:
	rm -rf hologram
