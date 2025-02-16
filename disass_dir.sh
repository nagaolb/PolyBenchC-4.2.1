#!/bin/bash
IN_DIR=$1
OUT_DIR=$2
mkdir -p ${OUT_DIR}
for entry in ${IN_DIR}/*
do
  NAME=`basename "$entry"`
  objdump -d ${entry} > ${OUT_DIR}/${NAME}.asm
done
