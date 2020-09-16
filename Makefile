NVCC=nvcc
CC=clang-10
CXX=clang++-10
CFLAGS=-Wall -fPIC
CXXFLAGS=-std=c++2a -Wall -fPIC
LDFLAGS=-lpthread -pthread
NVCCFLAGS=--gpu-architecture=sm_60 -lineinfo --maxrregcount=63
INCLUDE_DIRS=-IC/source -I/usr/local/cuda/include
RM=rm -f

DBG_CFLAGS=-Og -g -ggdb
OPT_CFLAGS=-O3 -DNDEBUG
DBG_NVCCFLAGS=--compiler-options "$(CFLAGS) $(DBG_CFLAGS)" --linker-options "$(LDFLAGS)" -g
OPT_NVCCFLAGS=--compiler-options "$(CFLAGS) $(OPT_CFLAGS)" --linker-options "$(LDFLAGS)" -O3 -DNDEBUG

.PHONY: clean

plugin.dbg.so: hologram.dbg.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(DBG_NVCCFLAGS) $^ -shared -o $@

plugin.opt.so: hologram.opt.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(OPT_NVCCFLAGS) $^ -shared -o $@

hologram.dbg.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(DBG_NVCCFLAGS) $^ -o $@

hologram.opt.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(OPT_NVCCFLAGS) $^ -o $@

hologram.dbg.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(DBG_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

hologram.opt.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(OPT_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

clean:
	$(RM) *.so *.exe *.o
