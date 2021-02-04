# Computational Holography

Part of [ILLIXR](https://github.com/ILLIXR/ILLIXR), the Illinios Extended Reality Benchmark Suite. This component is responsible for calculating image holograms (per-pixel phase masks) using the Weighted Gerchberg–Saxton (GSW) algorithm.

# Files

## hologram.<span></span>cpp

ILLIXR plugin interface file for integrating hologram into ILLIXR.

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

Building hologram for ILLIXR is automatically done when building the whole ILLIXR project.
Here is how to build it individually

To build shared library plugin for ILLIXR:

```sh
make hologram.dbg.so
```
or
```sh
make hologram.opt.so
```

To build a standalone executable for ILLIXR:

```sh
make hologram.dbg.exe
```
or
```sh
make hologram.opt.exe
```

# Jetson compilation

The makefile contains seperate targets for compilation on an Nvidia Jetson Xavier
    (Jetson Xavier AGX has Volta GPU which only supports `--gpu-architecture=sm_72`).
To target Jetson Xavier, use the following make target template `<target-name>.jetson.<compile-type>.<target-ext>`.
For example, to generate the debug executable for hologram, run:

```sh
make hologram.jetson.dbg.exe
```

Once compiled, run:

```sh
./hologram.jetson.dbg.exe <num-trials>
```

# ILLIXR integration

`hologram` , computational holography, subscribes to a`timewarp_gl` output signal indicating a
timewarped frame, which means hologram should start processing. Hologram takes depth buffer of the
frame to calculate a Spatial Light Modulator input. For more details of hologram, please refer to
our paper. Since we do not have an accurate prediction of vsync, hologram process is one frame
delayed.

Currently this component is for profiling purpose only. Performance-wise, hologram is input
invariant. Current ILLIXR and monado do not support depth buffer from user application. Algorithms
to calculate depth spots from depth buffer is also missing.

This component uses the logger to record its runtime.

### Event-streams

- Asynchronously read `hologram_in`
- Writes `hologram_out`


# License

This code is available under the LGPL license.
