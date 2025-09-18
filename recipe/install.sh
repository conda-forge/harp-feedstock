#!/bin/bash
set -e
set -x

cd build

cmake --install . --component core
cmake --install . --component python
