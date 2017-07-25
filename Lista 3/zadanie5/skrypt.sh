#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


#find $1 -printf '%s %p\n' | sort -nr | head -n 3 | awk '{ print $2 }'

find $1 -type f -printf "%s %p\n" | sort -nr | head -n 3 | while read rozmiar nazwa
do
    echo $nazwa
done