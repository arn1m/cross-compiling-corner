# system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# cross-compilers
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_ASM_COMPILER gcc)
set(CMAKE_AR ar)

# flags
set(CMAKE_C_FLAGS "-O3 -march=native")
set(CMAKE_CXX_FLAGS "-O3 -march=native")
set(CMAKE_ASM_FLAGS "-march=native")
