# Cross-Compiling Corner
Collection of different cross-compiling instructions and experiences, mostly for scientific packages and targetting embedded hardware.
This aims to collect the information I did not now, when I worked on these projects during research.

Projects done so far:
 - fully static build of `GNU GSL` (https://www.gnu.org/software/gsl/) for embedded usage
 - build of `acados` (https://github.com/acados/acados) for embedded usage
 - build of `blasfeo` (https://github.com/giaf/blasfeo) and `hpipm` (https://github.com/giaf/hpipm) for embedded usage

Targetted microcontrollers so far:
 - STM32-H7 series (ARM Cortex-M7), bare-metal
 - Xilinx Zynq7000 series (ARM Cortex-A9), bare-metal

## Compilers for ARM
ARM provides pre-built binaries of (cross-)compilers for the most relevant use cases, called the `GNU ARM Embedded Toolchain` https://developer.arm.com/downloads/-/gnu-rm.
So, whenever compiling a library, one does not have to search for the hidden `gcc`, the microcontroller's IDE brings, but can fall back to the GNU ARM compilers.
Most of the time, this eases development, avoiding the need of `cygwin` or similar alternatives... Just use a (virtual) Linux.
