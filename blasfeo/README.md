# Instructions for Cross-compiling blasfeo Library
*(tested 2025-12-05)*

- clone library: `git clone https://github.com/giaf/blasfeo`
- in `CMakeLists.txt` empty out the target-specific C and ASM flags, such that they do not interfere with the flags set by ourselves in the toolchain file, e.g.,
  - `set(C_FLAGS_TARGET_ARMV7A_ARM_CORTEX_A9   "")`
  - `set(ASM_FLAGS_TARGET_ARMV7A_ARM_CORTEX_A9   "")`
- again, in `CMakeLists.txt` delete the section about "common C flags" (which automatically introduces `-O2 -fPIC`)
- adapt variables in `build.sh`
  - compiler toolchain directory
  - toolchain file (also see settings there!)
  - install directory path
  - blasfeo TARGET (for available targets, see `Makefile.rule`)
