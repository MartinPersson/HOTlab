all:
	nvcc --compiler-options -Wall -g -G generateHologram.cu -o hologram
	nvcc --compiler-options -Wall -g -G goldenHologram.cu -o goldenHologram
clean:
	rm -rf hologram
	rm -rf goldenHologram
