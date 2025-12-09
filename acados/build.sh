#
# acados build
#

# toolchain
export TOOLCHAIN_DIR=$(pwd)/../toolchain/arm-gnu-toolchain-14.3.rel1-x86_64-aarch64-none-linux-gnu
export TOOLCHAIN_FILE=$(pwd)/../toolchain/arm-linux-pi5.cmake

# install directory
export INSTALL_PREFIX=$(pwd)/install

# build
export PATH=$PATH:$TOOLCHAIN_DIR/bin

cd ./acados
rm -rf ./build
mkdir ./build
cd ./build

cmake -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
      -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
      -DBLASFEO_TARGET=GENERIC \
      -DBUILD_SHARED_LIBS=OFF \
      -DACADOS_WITH_QPOASES=ON \
      ..

make -j 12 && make install
