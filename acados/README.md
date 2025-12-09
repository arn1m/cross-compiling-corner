# Instructions for Cross-compiling fatrop Library
*(tested 2025-12-09)*

Some very helpful hints are provided here:
https://discourse.acados.org/t/working-example-for-stm32h7-cortex-m7-32-bit/406

Note: `acados` needs quite a lot of __RAM__! Consider this when targeting embedded processors.

## Steps
- clone library: `git clone --recurse-submodules https://github.com/acados/acados.git`
- to ensure that function pointers work on embedded targets, set `CMAKE_POSITION_INDEPENDENT_CODE` to `FALSE` in `CMakeLists.txt`
- adapt variables in `build.sh`
  - compiler toolchain directory
  - toolchain file (also see settings there!)
  - install directory path
  - set build type (`Release`, `Debug`, etc.)
  - activate / deactivate further solvers, e.g., `qpOASES`
- note: since we can compile `blasfeo` separately from `acados`, we leave the `BLASFEO_TARGET` at `GENERIC` and don't worry about the `blasfeo` submodule build
  
## Hints
- make sure to use the correct linking order, e.g., (`-lacados`, `-lblasfeo`, `-lm`)
- provide enough heap space (usually in `*.ld` file)
- some acados component(s) define `SUCCESS`, which collided with a definition of the `STM32-H7`; in my case it was easiest, to rename the `SUCCESS` defined by the STM driver
- on embedded targets, there might not be a definition of `_gettimeofday`; the provided `./misc/timeofday.c` implements a dummy version of that function
- at the time of writing (2025-12-09) there is a problem in `qpOASES`: `acados/external/qpoases/src/QProblem.c`, line 472 should read `ConstraintsCPY(FROM->constraints, TO->constraints);`
