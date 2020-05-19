
# Computational Holography

Part of [ILLIXR](https://github.com/ILLIXR/ILLIXR), the Illinios Extended Reality Benchmark Suite. This component is responsible for calculating image holograms (per-pixel phase masks) using the Weighted Gerchberg–Saxton(GSW) algorithm.

# Files

## generateHologram.<span></span>cu

### generateHologram

Host side kernel launch 

### propagateToSpotPositions

CUDA kernel that propagates from the SLM phases to the spot positions using Fresnel summation.

### propagateToSpotSum

CUDA kernel that sums up the per thread block result from propagateToSpotPositions kernel.

### propagateToSLM

CUDA kernel that calculates the error function of depth spots and updates the SLM phases.

## goldenHologram.<span></span>cu

The original hologram implementation we are improving from.

# Installation & Usage

Under `C/source/`

    make all
    make jetson

Make all is compiling using SM75 architecture, while jetson is using SM70 architecture. To run this code on a older NVIDIA GPU,  please change the SM architecture accordingly.

To run our modified hologram code,

    ./hologram

To run the original hologram code.

    ./goldenHologram

# ILLIXR integration

`hologram` , computational holography, subscribes to a`timewarp_gl` output signal indicating a
timewarped frame, which means hologram should start processing. Hologram takes depth buffer of the
frame to calculate a Spatial Light Modulator input. For more details of hologram, please refer to
our paper. Since we do not have an accurate prediction of vsync, hologram process is one frame
delayed.

Currently this component is for profiling purpose only. Performance-wise, hologram is input
invariant. Current illixr and monado do not support depth buffer from user application. Algorithms
to calculate depth spots from depth buffer is also missing.

This component uses the logger to record its runtime.

### Event-streams

- Asynchronously read `hologram_in`
- Writes `hologram_out`


# License

This code is available under the LGPL license.
