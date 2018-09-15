all:
	nvcc --gpu-architecture=sm_20 --compiler-options -Wall generateHologram.cu -o hologram -lcufft

clean:
	rm -rf hologram
