# system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# cross-compilers
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
set(CMAKE_ASM_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_AR arm-linux-gnueabihf-ar)

# don't try to compile simple test program
# set(CMAKE_C_COMPILER_WORKS TRUE)
# set(CMAKE_CXX_COMPILER_WORKS TRUE)

# flags
set(CMAKE_C_FLAGS "-O3 -mcpu=cortex-a8 -mfloat-abi=hard")
set(CMAKE_CXX_FLAGS "-O3 -mcpu=cortex-a8 -mfloat-abi=hard")
set(CMAKE_ASM_FLAGS "-mcpu=cortex-a8 -mfloat-abi=hard")
