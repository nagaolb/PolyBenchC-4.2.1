#!/bin/bash
mkdir -p build/gcc && cmake -S. -Bbuild/gcc -DCMAKE_TOOLCHAIN_FILE=cmake/aarch64-linux-gnu.toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
mkdir -p build/clang && cmake -S. -Bbuild/clang -DCMAKE_TOOLCHAIN_FILE=cmake/aarch64-clang.toolchain.cmake -DCMAKE_BUILD_TYPE=Debug