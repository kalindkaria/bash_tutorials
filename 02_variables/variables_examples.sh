#!/bin/bash

PRICE_PER_APPLE=5
echo "The price of an Apple today is: \$ $PRICE_PER_APPLE."

MyFirstLetters=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ."

greeting='Hello       world  !'
echo $greeting" and now with spaces: $greeting"

CURR_DIR=$(pwd)
echo "The path of current working directory is: ${CURR_DIR}"

FILELIST=`ls`
echo "The list of files in directory are: "${FILELIST}
