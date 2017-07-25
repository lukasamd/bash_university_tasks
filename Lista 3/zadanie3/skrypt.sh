#!/bin/sh

if [ $# -ne 1 ] || [ ! -d $1 ]
then
	echo "Nieprawidlowe argumenty"
	exit 1
fi


find $1 -type d -perm -u=r ! -perm -u=w,u=x ! -perm -g=r


# Inne zadanie - tylko user moze zapisywac, reszta nie moze
# O co tu chodzi? - oraz + lub /
# Zera są ignorowane, nie sprawdza uprawnien!
# - -> sprawdza z warunkiem AND, a więc -200 = dla usera 200, reszta nie ma znaczenia
# +/ -> OR, +022 - grupa LUB inni mają zapis
#find $1 -type f -perm -u=w ! -perm /g=w,o=w
find $1 -type f -perm -200 ! -perm +022