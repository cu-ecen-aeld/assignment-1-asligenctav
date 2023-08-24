#!/bin/bash

if ! [ $# -eq 2 ]
then
    echo "There should be two arguments.."
    exit 1
fi

filesdir=$1

searchstr=$2

if ! [ -d $filesdir ]
then
    echo "Directory does not exits.."
    exit 1
fi

X=$(find $filesdir -type f | wc -l)
Y=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"

