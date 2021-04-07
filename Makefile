NVCC=nvcc
CC=clang-10
CXX=clang++-10
CFLAGS=-Wall -fPIC
CXXFLAGS=-std=c++17 -Wall -fPIC
LDFLAGS=-lpthread -pthread
NVCCFLAGS=--gpu-architecture=sm_60 -lineinfo --maxrregcount=63
NVCCFLAGS_JETSONXAVIER=--gpu-architecture=sm_72 -lineinfo --maxrregcount=63
INCLUDE_DIRS=-IC/source -I/usr/local/cuda/include
RM=rm -f

DBG_CFLAGS=-Og -g -ggdb
OPT_CFLAGS=-O3 -DNDEBUG
DBG_NVCCFLAGS=--compiler-options "$(CFLAGS) $(DBG_CFLAGS)" --linker-options "$(LDFLAGS)" -g
OPT_NVCCFLAGS=--compiler-options "$(CFLAGS) $(OPT_CFLAGS)" --linker-options "$(LDFLAGS)" -O3 -DNDEBUG

.PHONY: clean

## Targets for Desktop

plugin.dbg.so: hologram.dbg.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(DBG_NVCCFLAGS) -DILLIXR_INTEGRATION $^ -shared -o $@

plugin.opt.so: hologram.opt.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(OPT_NVCCFLAGS) -DILLIXR_INTEGRATION $^ -shared -o $@

hologram.dbg.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(DBG_NVCCFLAGS) $^ -o $@

hologram.opt.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS) $(OPT_NVCCFLAGS) $^ -o $@

hologram.dbg.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(DBG_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

hologram.opt.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(OPT_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

## Targets for Jetson Xavier

plugin.jetson.dbg.so: hologram.jetson.dbg.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS_JETSONXAVIER) $(DBG_NVCCFLAGS) -DILLIXR_INTEGRATION $^ -shared -o $@

plugin.jetson.opt.so: hologram.jetson.opt.o C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS_JETSONXAVIER) $(OPT_NVCCFLAGS) -DILLIXR_INTEGRATION $^ -shared -o $@

hologram.jetson.dbg.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS_JETSONXAVIER) $(DBG_NVCCFLAGS) $^ -o $@

hologram.jetson.opt.exe: C/source/testMain.cu C/source/generateHologram.cu
	$(NVCC) $(NVCCFLAGS_JETSONXAVIER) $(OPT_NVCCFLAGS) $^ -o $@

hologram.jetson.dbg.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(DBG_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

hologram.jetson.opt.o: hologram.cpp
	$(CXX) $(CXXFLAGS) $(OPT_CFLAGS) $(INCLUDE_DIRS) -c $^ -o $@

tests/run:

clean:
	$(RM) *.so *.exe *.o
