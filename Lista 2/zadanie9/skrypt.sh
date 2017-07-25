#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ "$2" = "" ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi



#find $1 -maxdepth 1 -type f -empty -print0|xargs -0 echo rm -f

for i in `ls $1`
do
    if [ -f $i ] && [ ! -L $i ]
    then
        echo "$i"
        rm -rf $1/$i
    fi
done > $2
