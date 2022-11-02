#!/bin/bash
set -e
set -x

cd build
make install

if [[ "${PKG_NAME}" == "harp" ]]; then
    rm -rf ${PREFIX}/lib/R/site-library/harp
elif [[ "${PKG_NAME}" == "r-harp" ]]; then
    rm -rf ${PREFIX}/lib/libharp*
    rm -rf ${PREFIX}/lib/python*
    rm -rf ${PREFIX}/bin
    rm -rf ${PREFIX}/share
    rm -rf ${PREFIX}/include
fi
