#!/bin/sh

TEST_DIR=`dirname $0`

for peg in `ls ${TEST_DIR}/pass*.nez`; do
    path=${peg%.*}
    input="$path.txt"
    echo $path
    echo $input
done
