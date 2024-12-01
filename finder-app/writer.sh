#!/bin/sh

writefile=$1
writestr=$2

#echo "arg1: $writefile"
#echo "arg2: $writestr"
#dirname "$writefile"

if [ "$#" -ne 2 ]; then
    echo "Invalid number of arguments given."
    exit 1
fi

mkdir -p "$(dirname "$writefile")"
touch $writefile
echo $writestr > $writefile

