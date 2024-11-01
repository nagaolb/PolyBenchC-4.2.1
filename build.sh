#!/bin/bash
BUILD_DIR=build
mkdir -p ${BUILD_DIR}
bash cmake.sh
pushd ${BUILD_DIR}/gcc && make -j && popd
pushd ${BUILD_DIR}/clang && make -j && popd
bash copy_bin.sh ${BUILD_DIR} ${BUILD_DIR}/bin
bash disass_dir.sh ${BUILD_DIR}/bin ${BUILD_DIR}/asm