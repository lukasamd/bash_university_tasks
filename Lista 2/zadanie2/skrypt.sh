#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -f $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


for i in `cat $2`
do
    if [ ! -f $1/$2 ]
    then
        touch $1/$2
    fi
done
