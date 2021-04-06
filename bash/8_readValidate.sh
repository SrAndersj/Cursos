#!/bin/bash
#programa para ejemplificar como capturar informacion del usuario y validarla

option=0
buckupName=""
clave=""

echo "programa utilidades postgres"
#acepta el ingreso de informacion de solo un caracter, en este caso hasta que solo reconozca un caracter 
read -n1 -p "ingresar una opcion:" option

echo -e "\n"

read -n10 -p "inngresar el nombre del archivo del backup:" buckupName


echo -e "\n"

echo "opcion :$option,backupName: $buckupName"

#datos sensibles -s ,para la  clave
read -s -p "Clave:" clave

echo " $clave"