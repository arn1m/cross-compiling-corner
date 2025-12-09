#
# fatrop build
#

# toolchain
export TOOLCHAIN_DIR=$(pwd)/../toolchain/arm-gnu-toolchain-14.3.rel1-x86_64-arm-none-eabi
export TOOLCHAIN_FILE=$(pwd)/../toolchain/arm-none-zynq-7000.cmake

# install directory
export INSTALL_PREFIX=$(pwd)/install

# build
export PATH=$PATH:$TOOLCHAIN_DIR/bin

cd ./fatrop
rm -rf ./build
mkdir ./build
cd ./build

cmake -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
      -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
      -DBUILD_TESTS=OFF \
      -DBUILD_EXAMPLES=OFF \
      -DCMAKE_BUILD_TYPE=Release \
      ..

make -j 12 && make install
