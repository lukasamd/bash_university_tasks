#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -d $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


find $1 -type d -printf "%P\n" | head | while read nazwa
do
	if [ ! "$nazwa" = "" ] && [ -d "$2/$nazwa" ]
	then		
		echo $nazwa
	fi
done