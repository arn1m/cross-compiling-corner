# acados
Workflow for cross-compiling the acados toolkit for embedded hardware targets.

Some very helpful hints are provided here:
https://discourse.acados.org/t/working-example-for-stm32h7-cortex-m7-32-bit/406


## Workflow (tested on 2025-09-18)
### Environment
 - Ubuntu 22.04 LTS
 - `cmake`, `build-essential`, etc. (you should be able to compile acados for Linux)
 - official `arm-none-eabi` compiler toolchain from https://developer.arm.com/downloads/-/gnu-rm
 - target microcontroller: STM32-H723 (ARM Cortex-M7)

### Steps
 - in acados main directory:
   - in `CMakeLists.txt`, set `CMAKE_POSITION_INDEPENDENT_CODE` to `FALSE`; otherwise the mapping of function pointers on a microcontroller might not work correctly
   - place `build.sh` into acados main directory
   - in `build.sh`, adapt compiler flags, the `BLASFEO_TARGET` (and possibly compiler) to your needs
   - __source__ the script, i.e., `. build.sh`
 - in build directory:
   - run `make`
   - run `make install` (this collects the libraries and headers)

### Usage Hints
 - the static libraries can be directly linked in the microcontroller's IDE
 - make sure to use the correct order, e.g., (`-lacados`, `-lblasfeo`, `-lm`)
 - provide enough heap space (usually in `*.ld` file)
 - some acados component(s) define `SUCCESS`, which collided with a definition of the `STM32-H7`; in my case it was easiest, to rename the `SUCCESS` defined by the STM driver
 - again, STM specific, there is no definition of `_gettimeofday`; the provided `timeofday.c` implements a dummy version of that function
