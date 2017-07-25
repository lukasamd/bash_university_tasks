#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ "$2" = "" ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


for i in $1/*.${2}
do
    echo "$i"
    cat "$i"
done > pliki.txt
