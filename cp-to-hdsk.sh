#!/bin/bash

if [ ! ${1} ]; then
  echo
  echo "usage: $0 HDSK_NAME"
  echo "       This script will copy all files in the current"
  echo "       directory to the HDSK file specified."
  echo "       The target HDSK should be in the parent directory"
  echo "       of the directory containing the files to be copied."
  echo
  exit 1
fi
TGTHD=${1}

for FILE in `ls -1`
do
  cpmcp -f AltairDuino-cpm22 ../${TGTHD} ${FILE} 0:${FILE}
done

# EOF
