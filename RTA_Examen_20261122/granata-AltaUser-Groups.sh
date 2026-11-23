#!/bin/bash
echo
echo "Para ejecutar:   ./granata-AltaUser-Groups.sh  Lista_Usuarios.txt"
echo

LISTA=$2
USUARIO_PASS=$1

ANT_IFS=$IFS
IFS=$'\n'
for LINEA in `cat $LISTA |  grep -v ^#`
do
	USUARIO=$(echo  $LINEA |awk -F ',' '{print $1}')
	GRUPO=$(echo  $LINEA |awk -F ',' '{print $2}')
	CONTRA=$(sudo grep $USUARIO_PASS /etc/shadow | awk -F ':' '{print $2}')
	HOMES=$(echo $LINEA | awk -F ',' '{print $3}')
	sudo groupadd -f $GRUPO
	sudo useradd -m -d $HOMES -s /bin/bash -g $GRUPO -p "$CONTRA" $USUARIO
done
IFS=$ANT_IFS
