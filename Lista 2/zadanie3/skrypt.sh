#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


for i in `ls $1`
do
    if [ ! -x $1/$i ] && [ ! -f $1/$i ]
    then
        rm -rf $1/$i
    fi
done
