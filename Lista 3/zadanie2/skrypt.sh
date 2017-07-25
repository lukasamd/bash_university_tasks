#!/bin/sh

if [ $# -ne 3 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


find $1 -maxdepth 1 -links +2 -and -not -links +3