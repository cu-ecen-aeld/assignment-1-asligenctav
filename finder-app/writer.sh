#!/bin/bash

if ! [ $# -eq 2 ]
then
    echo "There should be two arguments.."
    exit 1
fi

writefile=$1

writestr=$2

part1=$(dirname "$writefile")
part2=$(basename "$writefile")

if ! [ -d $part1 ]
then
    echo $part1
    mkdir -p $part1
fi

cd $part1

echo $writestr > $part2

if ! [ -e $writefile ]
then
    echo "File cannot be created"
    exit 1
fi

