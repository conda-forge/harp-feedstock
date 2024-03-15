#!/bin/bash
set -e
set -x

mkdir build
cd build

cmake $CMAKE_ARGS \
  -DCMAKE_BUILD_TYPE="Release" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DHARP_BUILD_PYTHON=True \
  -DPython_FIND_STRATEGY=LOCATION \
  -DPython_ROOT_DIR="$PREFIX" \
  -DHARP_BUILD_R=$HARP_BUILD_R \
  -DCODA_INCLUDE_DIR="$PREFIX/include" \
  -DCODA_LIBRARY_DIR="$PREFIX/lib" \
  ..

make -j$CPU_COUNT
