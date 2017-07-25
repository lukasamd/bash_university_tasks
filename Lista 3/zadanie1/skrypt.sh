#!/bin/sh

if [ $# -ne 3 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


find $1 -cmin +$2 -and -not -cmin +$3