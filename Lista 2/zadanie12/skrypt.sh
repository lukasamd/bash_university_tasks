#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]\
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi



for i in `ls $1`
do
    if [ -d $i ]
    then
        mv $1/$i/* $1/
        rm -rf $i
    fi
done
