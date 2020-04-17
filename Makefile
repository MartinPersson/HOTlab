NVCC=nvcc --gpu-architecture=sm_75
CC=clang
CXX=clang++
NVCCFLAGS=-O3 -g -lineinfo --maxrregcount=63
CFLAGS=-Wall -g -fPIC
CXXFLAGS=-std=c++2a -Wall -g -fPIC
LDFLAGS=-lpthread -pthread
RM=rm -f

.PHONY: all clean

all: hologram.so

hologram.so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) -IC/source -c hologram.cpp -o hologram.o
	$(CC) $(CFLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" hologram.o stats.o C/source/generateHologram.cu -shared -o $@

solorun: hologram.cpp C/source/testMain.cu C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CC) $(CFLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" C/source/testMain.cu stats.o C/source/generateHologram.cu -o hologram


clean:
	$(RM) hologram.so *.o
