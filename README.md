
# Computational Holography

Part of [ILLIXR](https://github.com/ILLIXR/ILLIXR), the Illinios Extended Reality Benchmark Suite. This component is responsible for calculating image holograms (per-pixel phase masks) using the Weighted Gerchberg–Saxton(GSW) algorithm.

# Files

## hologram.<span></span>cpp

Illixr plugin interface file for integrating hologram into illixr.

## generateHologram.<span></span>cu

### generateHologram

Host side kernel launch code.

### propagateToSpotPositions

CUDA kernel that propagates phases from the SLM plane to the depth plane using Fresnel summation.

### propagateToSpotSum

CUDA kernel that sums up the per-thread block results from the propagateToSpotPositions() kernel.

### propagateToSLM

CUDA kernel that calculates the error function at the depth planes and updates the SLM phases.

## goldenHologram.<span></span>cu

The original hologram implementation. This implementation did not support arbitrary SLM sizes and colored holograms.

# Build

Building hologram for illixr is automatically done when building the whole illixr project.
Here is how to build it individually

Debug build plugin for illixr

```sh
make 
```

or

```sh
make dbg_so
```

Release build plugin for illixr

```sh
make opt_so
```

Standalone executable build

```sh
make solo
```

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
