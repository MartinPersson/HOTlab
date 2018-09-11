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

// Allocate GPU memory and parameters. init_phases contains the initial phase values in the SLM plane.
int setup(float *init_phases);

// Free GPU memory
int finish();

// Set correction parameters
int set_correction_parameters(int use_aberration_correction,  // use wavefront distortion correction
                              float *aberration_coefficients, // correction matrix
                              int use_svpr,                   // use spatially varying phase response
                              int pol_order,                  // polynomial order for phase correction
                              float *pol_coeffs,              // polynomial coefficients
                              int use_lut,                    // use LUT for phase/integer conversion (mutually exclusive with svpr)
                              unsigned char *lut,             // LUT for phase/integer conversion
                              int use_rpc,                    // use restricted phase change
                              float alpha,                    // if < 1.0, restricted phase change threshold = 2*pi*alpha
                              int save_amplitudes);           // save amplitudes in host array

// Generate a hologram
int generate_hologram(unsigned char *hologram,  // hologram to send to SLM
                      float *x_spots,           // x coordinates of spots/traps
                      float *y_spots,           // y coordinates of spots/traps
                      float *z_spots,           // z coordinates of spots/traps
                      float *i_spots,           // relative intensities of spots/traps
                      int num_spots,            // number of spots/traps
                      const int num_iterations, // number of iterations to run GSW
                      float *inter_amps,        // intermediate amplitudes (debug)
                      int method);              // method to use for generating hologram

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
