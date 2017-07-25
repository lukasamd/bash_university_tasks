#!/bin/sh

if [ $# -ne 2 ] || [ ! -d $1 ] || [ ! -f $2 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


# Sprawdzenie katalogu i listy jednoczesnie
for i in `ls $1`
do
    if [ -f $1/$i ]
    then
		znaleziono=0

        for j in `cat $2`
        do
            if [ "$i" = "$j" ]
            then
                znaleziono=1
                break
            fi
        done

        if [ $znaleziono -ne 1 ]
        then
            echo "Brak na liście: $i"
        fi
    fi
done


for i in `cat $2`
do
    if [ ! -f $1/$i ]
    then
        echo "Brak w katalogu: $i"
    fi
done