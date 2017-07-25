# Zadanie:
# W zadanym drzewie katalogow
# znalezc pliki regularne
# o takich samych nazwach


#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi

# dane do porownywania
nazwa1=""
sciezka1=""
znaleziono=0

find $1 \( -type f -printf "%f %p\n" \) | sort | while read nazwa2 sciezka2
do
	# jezeli ta sama nazwa, listujemy
	if [ "$nazwa2" = "$nazwa1" ]
	then
		if [ $znaleziono -eq 0 ]
		then
			echo "\nDuplikaty nazwy:" $nazwa2
			echo $sciezka2
			echo $sciezka1
			znaleziono=1
		else
			echo $sciezka2
		fi

	# zmieniona nazwa
	else
		nazwa1=$nazwa2
		sciezka1=$sciezka2
		znaleziono=0
	fi
done

# Inna metoda
find $1 \( -type f -printf "%f\n" \) | sort | uniq -d
