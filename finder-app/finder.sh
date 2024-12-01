#!/bin/sh

filesdir=$1
searchstr=$2

#echo "Number of args: $#"
#echo "Searching path: $filesdir"
#echo "Pattern to find: $searchstr"

if [ "$#" -ne 2 ]; then
    echo "There is a wrong number of parameters given."
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Given path is not a driectory or does not exsit."
    exit 1
fi

numberOfFiles=$(grep -rls "$searchstr" $filesdir | wc -l)
numberOfLines=$(grep -rs "$searchstr" $filesdir | wc -l)

echo "The number of files are $numberOfFiles and the number of matching lines are $numberOfLines"
