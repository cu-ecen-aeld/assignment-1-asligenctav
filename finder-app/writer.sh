#!/bin/sh

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
    echo "number of arguments $# less than 2"
    exit 1
fi

mkdir -p $(dirname $writefile)

echo "$writestr" > $writefile

if [ ! -f $writefile ]
then
    echo "$writefile no created"
    exit 1
fi
