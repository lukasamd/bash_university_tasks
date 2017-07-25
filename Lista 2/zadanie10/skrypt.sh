#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -d $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi



for i in `ls $1`
do
    if [ -f $1/$i ] && [ -f $2/$i ]
    then
        echo "$i"
    fi
done
