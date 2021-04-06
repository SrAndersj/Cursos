#!/bin/bash
#programa para ejemplificar como capturar informacion del usuario utilizando echo, re ad y $REPLY





option=0
backupName=""


echo "programa utilidades postgres"
echo -n "ingresar una opcion:"
read
option=$REPLY
echo -n "ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "opcion :$option,backupName:$backupName"
