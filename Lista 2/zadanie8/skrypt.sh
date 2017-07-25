#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi

poziom=0
max=$2

listuj_katalog ()
{
	for i in `ls $1`
	do
		poziom=`expr $poziom + 1`

    	echo $1/$i
		if [ -d $1/$i ] && [ $max -gt $poziom ]
		then
			listuj_katalog $1/$i
		fi
	done
}

listuj_katalog $1

# find $d1 -print -maxdepth 2