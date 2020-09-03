NVCC=nvcc --gpu-architecture=sm_60
CC=clang
CXX=clang++
NVCCFLAGS=-lineinfo --maxrregcount=63
CFLAGS=-Wall -fPIC
CXXFLAGS=-std=c++2a -Wall -fPIC
LDFLAGS=-lpthread -pthread
RM=rm -f

DBG_CFLAGS=-Og -g -ggdb
OPT_CFLAGS=-O3 -DNDEBUG

.PHONY: clean

plugin.dbg.so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) $(DBG_CFLAGS) -IC/source -c hologram.cpp -o hologram.dbg.o
	$(CC) $(CFLAGS) $(DBG_CFLAGS) -c C/source/stats.c -o stats.dbg.o
	$(NVCC) $(NVCCFLAGS) $(DBG_CFLAGS) --compiler-options "$(CFLAGS) $(DBG_FLAGS)" --linker-options "$(LDFLAGS)" hologram.dbg.o stats.dbg.o C/source/generateHologram.cu -shared -o plugin.dbg.so

plugin.opt.so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) $(OPT_CFLAGS) -IC/source -c hologram.cpp -o hologram.opt.o
	$(CC) $(CFLAGS) $(OPT_CFLAGS) -c C/source/stats.c -o stats.opt.o
	$(NVCC) $(NVCCFLAGS) $(OPT_CFLAGS) --compiler-options "$(CFLAGS) $(OPT_FLAGS)" --linker-options "$(LDFLAGS)" hologram.opt.o stats.opt.o C/source/generateHologram.cu -shared -o plugin.opt.so

hologram.dbg.exe: hologram.cpp C/source/testMain.cu C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CC) $(CFLAGS) $(DBG_CFLAGS) -c C/source/stats.c -o stats.dbg.o
	$(NVCC) $(NVCCFLAGS) $(DBG_CFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" C/source/testMain.cu stats.o C/source/generateHologram.cu -o hologram.opt.exe

hologram.opt.exe: hologram.cpp C/source/testMain.cu C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CC) $(CFLAGS) $(OPT_CFLAGS) -c C/source/stats.c -o stats.opt.o
	$(NVCC) $(NVCCFLAGS) $(OPT_CFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" C/source/testMain.cu stats.o C/source/generateHologram.cu -o hologram.opt.exe

clean:
	$(RM) *.so *.exe
