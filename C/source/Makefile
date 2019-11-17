all:
	nvcc --maxrregcount=63 --compiler-options -Wall -g -G generateHologram.cu testMain.cu -o hologram
	nvcc --compiler-options -Wall -g -G goldenHologram.cu -o goldenHologram
clean:
	rm -rf hologram
	rm -rf goldenHologram
