#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi



for i in `ls $1`
do
    if [ -f $i ] && [ -w $i ]
    then
        touch $1/$i
    fi
done
