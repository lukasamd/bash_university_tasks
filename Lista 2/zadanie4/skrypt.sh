#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi

numer=0
for i in `ls -S $1`
do
    if [ -x $1/$i ] && [ -f $1/$i ]
    then
        mv $1/$i $1/${i}.${numer}

	numer=`expr $numer + 1`
	#let "numer += 1"
    fi
done
