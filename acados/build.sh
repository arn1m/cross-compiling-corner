rm -rf ./build
mkdir build
cd build

export CC=arm-none-eabi-gcc
export CXX=arm-none-eabi-g++
export AR=arm-none-eabi-ar

export CFLAGS="-g -Og -specs=nosys.specs -mcpu=cortex-m7 -mfloat-abi=hard"
export CXXFLAGS=$CFLAGS

cmake -DBLASFEO_TARGET=GENERIC -DBUILD_SHARED_LIBS=OFF ..
