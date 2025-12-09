# Cross-Compiling Corner
Collection of different cross-compiling instructions and experiences, mostly for scientific packages and targeting embedded hardware.

Projects done so far:
 - fully static build of `GNU GSL` (https://www.gnu.org/software/gsl/)
 - build of `acados` (https://github.com/acados/acados), e.g., with HPIPM and qpOASES solvers
 - build of `blasfeo` (https://github.com/giaf/blasfeo)
 - build of `fatrop` (https://github.com/meco-group/fatrop)

Tested embedded environments:
 - STM32-H7 series (ARM Cortex-M7), bare-metal
 - STM32-N6 series (ARM Cortex-M55), bare-metal
 - Xilinx Zynq7000 series (ARM Cortex-A9), bare-metal
 - BeagleBone blue (ARM Cortex-A8), Linux
 - Raspberry Pi 5 (ARM Cortex-A76), Linux

## Compilers for ARM
... are listed in the `./toolchain` directory.
