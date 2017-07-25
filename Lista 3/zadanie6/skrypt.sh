#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


$nazwa1=''
$typ1=''

find $1 \( -type f -printf "%f f\n" \) -or \( -type d -printf "%f d\n" \) | sort | while read nazwa2 typ2 
do
	if [ $nazwa -eq $nazwa1 ]
	then		
		# jezeli inny typ a ta sama nazwa, listujemy
		if [ ! $typ1 -eq $typ2 ]
		then
			echo $nazwa
			$typ1=$typ2
		fi
	# zmieniona nazwa, aktualizujemy dane do porownia
	else
		$typ1=$typ2
		$nazwa1=$nazwa
	fi
done
