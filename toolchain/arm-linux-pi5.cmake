# system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# cross-compilers
set(CMAKE_C_COMPILER aarch64-none-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-none-linux-gnu-g++)
set(CMAKE_ASM_COMPILER aarch64-none-linux-gnu-gcc)
set(CMAKE_AR aarch64-none-linux-gnu-ar)

# don't try to compile simple test program
# set(CMAKE_C_COMPILER_WORKS TRUE)
# set(CMAKE_CXX_COMPILER_WORKS TRUE)

# flags
set(CMAKE_C_FLAGS "-O3 -march=armv8-a+crc+crypto+simd")
set(CMAKE_CXX_FLAGS "-O3 -march=armv8-a+crc+crypto+simd")
set(CMAKE_ASM_FLAGS "-march=armv8-a+crc+crypto+simd")
