#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


licznik=0

for i in `ls $1`
do
    if [ -f $i ] && [ -x $i ]
    then
        licznik=`expr $licznik + 1`
    fi

done

echo "Liczba plikow w $1 wynosi $licznik"
