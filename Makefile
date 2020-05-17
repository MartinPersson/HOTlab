NVCC=nvcc --gpu-architecture=sm_75
CC=clang
CXX=clang++
NVCCFLAGS=-lineinfo --maxrregcount=63
CFLAGS=-Wall -fPIC
CXXFLAGS=-std=c++2a -Wall -fPIC
LDFLAGS=-lpthread -pthread
RM=rm -f

.PHONY: all clean

all: debug

debug: NVCCFLAGS+=-g
debug: CFLAGS+=-g
debug: CXXFLAGS+=-g
debug: libhologram.so solo

release: NVCCFLAGS+=-O3
release: CFLAGS+=-O3
release: CXXFLAGS+=-O3
release: libhologram.so solo

libhologram.so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) -IC/source -c hologram.cpp -o hologram.o
	$(CC) $(CFLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" hologram.o stats.o C/source/generateHologram.cu -shared -o $@

solo: hologram.cpp C/source/testMain.cu C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CC) $(CFLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" C/source/testMain.cu stats.o C/source/generateHologram.cu -o hologram_solo

clean:
	$(RM) hologram.so *.o
