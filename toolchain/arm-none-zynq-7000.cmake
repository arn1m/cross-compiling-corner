# system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# cross-compilers
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
set(CMAKE_AR arm-none-eabi-ar)

# don't try to compile simple test program
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)

# flags
set(CMAKE_C_FLAGS "-O3 -specs=nosys.specs -mcpu=cortex-a9 -mfloat-abi=hard -mfpu=neon-vfpv3 -mthumb")
set(CMAKE_CXX_FLAGS "-O3 -specs=nosys.specs -mcpu=cortex-a9 -mfloat-abi=hard -mfpu=neon-vfpv3 -mthumb")
set(CMAKE_ASM_FLAGS "-mcpu=cortex-a9 -mfloat-abi=hard -mfpu=neon-vfpv3 -mthumb")
