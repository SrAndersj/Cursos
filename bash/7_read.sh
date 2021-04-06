#!/bin/bash
#programa para ejemplificar como capturar informacion del usuario utilizando elo comando read





option=0
backupName=""


echo "programa utilidades postgres"
read -p "ingresar una opcion:"option

read -p "ningresar el nombre del archivo del backup:"buckupName


echo "opcion :$option,backupName:$backupName"
