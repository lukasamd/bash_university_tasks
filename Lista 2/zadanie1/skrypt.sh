#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowy argument"
	exit 1
fi

# Usuwanie starych plikow
rm $1/*.old


#for i in $1/*
#do
#	if [ -w $i ]
#	then
#		mv $i ${i}.old
#	fi
#done


for i in `ls $1`
do
	if [ -w $1/$i ]
	then
		mv $1/$i $1/${i}.old
	fi
done


# sprobowac metode for i in $1/*
# ciekawostka: mv $1/* - zależy od argumentow