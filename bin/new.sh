#!/bin/sh
TEST_DIR=`dirname $0`/../test/
TEST_DIR=`realpath $TEST_DIR`

echo "Please enter test case name:"
echo "Note that we only accept following pattern [a-zA-Z][0-9a-zA-Z]*."
read -p ">> " NAME
echo "Test case name : " $NAME
echo

echo "Please enter peg definition:"
read -p ">> " PEG
echo "Peg : " $PEG
echo

echo "Please enter example text:"
read -p ">> " TXT
echo "Input text : " $TXT

echo "Peg file always pass inputted text? (y/n)"
read -p ">> " ANSWER

mode=""
case $ANSWER in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" ) mode="pass";;
    * ) mode="fail";;
esac

echo $mode

echo "Generating test case..."
count=`ls -1 $TEST_DIR/${mode}*.nez | wc -l`
echo $count
index=`expr $count + 1`
index=`printf "%03d" $index`
PEG_FILE=$TEST_DIR/${mode}${index}_${NAME}.nez
TXT_FILE=$TEST_DIR/${mode}${index}_${NAME}.txt

echo $PEG > $PEG_FILE
echo $TXT > $TXT_FILE

echo "Generated test case:"
echo "   * $PEG_FILE"
echo "   * $TXT_FILE"
