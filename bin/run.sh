#!/bin/sh

TEST_DIR=`dirname $0`/../test/
TEST_DIR=`realpath $TEST_DIR`

for peg in `ls ${TEST_DIR}/pass*.nez`; do
    path=${peg%.*}
    input="$path.txt"
    echo "running " $peg
    # echo $input
done
