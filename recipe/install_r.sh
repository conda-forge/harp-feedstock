#!/bin/bash
set -e
set -x

# Reuse build directory of regular HARP build
cd build

cmake $CMAKE_ARGS \
  -DCMAKE_BUILD_TYPE="Release" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DHARP_BUILD_R=True \
  -DCODA_INCLUDE_DIR="$PREFIX/include" \
  -DCODA_LIBRARY_DIR="$PREFIX/lib" \
  ..
make -j$CPU_COUNT
cmake --install . --component r
