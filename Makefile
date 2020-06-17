NVCC=nvcc --gpu-architecture=sm_60
CC=clang
CXX=clang++
NVCCFLAGS=-lineinfo --maxrregcount=63
CFLAGS=-Wall -fPIC
CXXFLAGS=-std=c++2a -Wall -fPIC
LDFLAGS=-lpthread -pthread
RM=rm -f

DBG_FLAGS=-g
OPT_FLAGS=-O3
NVCC_DBG_FLAGS=-g
NVCC_OPT_FLAGS=-O3
DBG_SO_NAME=plugin.dbg.so
OPT_SO_NAME=plugin.opt.so

.PHONY: all clean

all: $(DBG_SO_NAME)


$(DBG_SO_NAME): dbg_so solo

$(OPT_SO_NAME): opt_so solo

dbg_so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) $(DBG_FLAGS) -IC/source -c hologram.cpp -o hologram.o
	$(CC) $(CFLAGS) $(DBG_FLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) $(NVCC_DBG_FLAGS) --compiler-options "$(CFLAGS) $(DBG_FLAGS)" --linker-options "$(LDFLAGS)" hologram.o stats.o C/source/generateHologram.cu -shared -o $(DBG_SO_NAME)


opt_so: hologram.cpp C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CXX) $(CXXFLAGS) $(OPT_FLAGS) -IC/source -c hologram.cpp -o hologram.o
	$(CC) $(CFLAGS) $(OPT_FLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) $(NVCC_OPT_FLAGS) --compiler-options "$(CFLAGS) $(OPT_FLAGS)" --linker-options "$(LDFLAGS)" hologram.o stats.o C/source/generateHologram.cu -shared -o $(OPT_SO_NAME)

solo: hologram.cpp C/source/testMain.cu C/source/generateHologram.cu C/source/stats.c C/source/hologram.h C/source/stats.h
	$(CC) $(CFLAGS) -c C/source/stats.c -o stats.o
	$(NVCC) $(NVCCFLAGS) --compiler-options "$(CFLAGS)" --linker-options "$(LDFLAGS)" C/source/testMain.cu stats.o C/source/generateHologram.cu -o hologram_solo

clean:
	$(RM) $(DBG_SO_NAME) $(OPT_SO_NAME) hologram_solo *.o
