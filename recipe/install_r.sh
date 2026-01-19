#!/bin/bash
set -e
set -x

# Reuse build directory of regular HARP build
cd build

cmake $CMAKE_ARGS -DHARP_BUILD_R=True ..
make -j$CPU_COUNT
cmake --install . --component r
