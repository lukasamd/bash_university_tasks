#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -d $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi



for i in `ls $2`
do
    if [ -f $1/$i ] && [ ! -d $1/$i ]
    then
        rm -rf $1/$i
    fi
done
