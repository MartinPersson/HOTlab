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

// Allocate GPU memory and parameters. initPhases contains the initial phase values in the SLM plane.
int setup(const float * const initPhases);

// Free GPU memory
int finish();

// Set correction parameters
int setCorrectionParameters(const bool useAC,                 // use wavefront aberration/distortion correction
                            const float *aberrationCoeffs,    // correction matrix
                            const bool useSVPR,               // use spatially varying phase response
                            const int polOrder,               // polynomial order for phase correction
                            const float * const polCoeffs,    // polynomial coefficients
                            const bool useLUT,                // use LUT for phase-to-uc conversion (mutually exclusive with svpr)
                            const unsigned char * const lut,  // LUT for phase-to-uc conversion
                            const bool useRPC,                // use restricted phase change
                            const float alpha,                // if < 1.0, RPC threshold = 2*pi*alpha
                            const bool saveAmps);             // save amplitudes in host array

// Generate a hologram
int generateHologram(unsigned char * const hologram, // hologram to send to SLM
                     const float * const spotX,      // x coordinates of spots/traps
                     const float * const spotY,      // y coordinates of spots/traps
                     const float * const spotZ,      // z coordinates of spots/traps
                     const float * const spotI,      // relative intensities of spots/traps
                     const int numSpots,             // number of spots/traps
                     const int numIterations,        // number of iterations to run GSW
                     float * const interAmps,        // intermediate amplitudes (debug)
                     int method);                    // method to use for generating hologram

// Calculate amplitude and phase at positions (x, y, z) from a given hologram
int getAmpAndPhase(const float * spotX,                  // x coordinates of spots/traps
                   const float * spotY,                  // y coordinates of spots/traps
                   const float * spotZ,                  // z coordinates of spots/traps
                   const int numSpots,                   // number of spots/traps
                   const unsigned char * const hologram, // hologram to use
                   float *amp,                           // amplitude at (x, y, z)
                   float *phase);                        // phase at (x, y, z)

#endif
