#!/bin/bash
BUILD_DIR=$1
OUT_DIR=$2
mkdir -p ${OUT_DIR}
COMPILER_NAMES=("gcc" "clang" "gcc-o2" "clang-o2")
for compiler in ${COMPILER_NAMES[@]}
do
for entry in ${BUILD_DIR}/${compiler}/bin/*
do
  NAME=`basename "${entry}"`-${compiler}
  cp ${entry} ${OUT_DIR}/${NAME}
done
done