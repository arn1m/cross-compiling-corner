# Instructions for Cross-compiling fatrop Library
*(tested 2025-12-09)*

## Steps
- clone library: `git clone https://github.com/meco-group/fatrop.git`
- for a __static__ library build:
  - set `CMAKE_POSITION_INDEPENDENT_CODE` to `OFF` (top-level `CMakeLists.txt`)
  - adjust library type (`CMakeLists.txt` in `./src`): `add_library(fatrop STATIC ${FATROP_SOURCES})`
- in top-level `CMakeLists.txt`, remove build flags for release and debug setting, except for `-DNDEBUG`
- adapt variables in `build.sh`
  - compiler toolchain directory
  - toolchain file (also see settings there!)
  - install directory path (same as blasfeo)
  - set build type (`Release` or `Debug`)


## Hints
- when linking the static library `libfatrop.a` on embedded Linux platforms, the linker might prefer a position independent executable, giving errors about unsupported relocations; in this case, you may add `-no-pie` to your `gcc` call.
- on embedded targets, there might not be a definition of `_gettimeofday`; the provided `./misc/timeofday.c` implements a dummy version of that function
