#
# blasfeo build
#

# toolchain
export TOOLCHAIN_DIR=$(pwd)/../toolchain/arm-gnu-toolchain-14.3.rel1-x86_64-arm-none-eabi
export TOOLCHAIN_FILE=$(pwd)/../toolchain/arm-none-zynq-7000.cmake

# install directory
export INSTALL_PREFIX=$(pwd)/install

# build
export PATH=$PATH:$TOOLCHAIN_DIR/bin

cd ./blasfeo
rm -rf ./build
mkdir ./build
cd ./build

cmake -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
      -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
      -DTARGET=ARMV7A_ARM_CORTEX_A9 \
      ..

make -j 12 && make install
