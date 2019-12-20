
# Computational Hologram

This component is responsible for calculating the hologram, the per pixel phase mask, using WeightedGerchberg–Saxton(GSW) algorithm. Base on an existing GPU implementation of the algorithm, we extend the code to be capable of computing arbitrary size hologram and improve the parallelisation.

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

# License

This code is available under the LGPL license.