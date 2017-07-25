#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -d $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


for i in `ls $d1`
do
    if [ -f $i ] && [ -x $i ]
    then
        mv $1/$i $2/$i
    fi
done
