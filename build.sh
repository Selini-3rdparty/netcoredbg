#!/bin/bash
set -euxo pipefail

rm -rf build
mkdir build
cd build

CC=clang CXX=clang++ cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$(pwd)/../dist

make -j$(nproc)
make install

cd ..
mkdir -p bin
cp dist/* bin/
tar cvzf netcoredbg-x86_64-unknown-linux-gnu.tar.gz bin/
rm -rf build dist .coreclr .dotnet bin
