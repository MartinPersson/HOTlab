#ifndef _HOLOGRAM_H_
#define _HOLOGRAM_H_

#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>
#include <argp.h>

// Activates a number of custom debug macros
//#define M_CUDA_DEBUG
//#define M_CORE_DEBUG

// External interface functions
bool HLG_initialize();
bool HLG_process();
bool HLG_cleanup();

#endif
