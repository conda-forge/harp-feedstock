#!/bin/bash
set -e
set -x

cd build
make install

if [[ "${PKG_NAME}" == "harp" ]]; then
    cmake --install . --component core
    cmake --install . --component python
elif [[ "${PKG_NAME}" == "r-harp" ]]; then
    cmake --install . --component r
fi
