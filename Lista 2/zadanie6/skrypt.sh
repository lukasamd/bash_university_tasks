#!/bin/sh

if [ $# -ne 1 ] || [ ! -f $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


for i in `cat $1`
do
    echo "$i"
    cat "$i"
done > $1
