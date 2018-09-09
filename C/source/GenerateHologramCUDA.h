/*
   Header file for GenerateHologramCUDA
   Hologram generating algorithms for CUDA Devices

   Copyright 2009, 2010, 2011, 2012 Martin Persson
   martin.persson@physics.gu.se


   This file is part of GenerateHologramCUDA.

    GenerateHologramCUDA is free software: you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GenerateHologramCUDA is distributed in the hope that it will be
    useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with GenerateHologramCUDA.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef GENERATEHOLOGRAMCUDA_H
#define GENERATEHOLOGRAMCUDA_H

// Allocate GPU memory and parameters
int setup(float *init_phases);

// Free GPU memory
int finish();

// Set correction parameters
int corrections(int UseAberrationCorr, float *h_AberrationCorr, int UseLUTPol, int PolOrder, float *h_LUTPolCoeff, int saveAmplitudes, float alpha, int UseLUT, unsigned char *h_LUT_uc);

// Generate a hologram
int generate_hologram(unsigned char *hologram,
                      float *x_spots,
                      float *y_spots,
                      float *z_spots,
                      float *i_spots,
                      int num_spots,
                      const int num_iterations,
                      float *intensity,
                      int method);

// Computes amplitudes and phase in positions (x, y, z)
int get_amp_and_phase(float *x_spots,
                      float *y_spots,
                      float *z_spots,
                      float *h_pSLM_uc,
                      int N_spots_all,
                      int data_w,
                      float *h_I_obt,
                      float *h_Phase_obt);

#endif
