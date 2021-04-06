#1/bin/bash

x=""  #vacio

#Generate latex code

#Retrosynthesis section 
echo "\schemestart"
echo "\chemfig{$mol1}"
echo "\hspace{3em}"
echo "\arrow{0}[,0]{\Huge $arrowRetro}"
echo "\hspace{3em}"
echo "\chemfig{$mol2}"
if [[ ! $mol3 ]]    # preguntar si una variable esta vacia
then
    echo "\schemestop" 
else
    echo "\arrow{0}[,0]\+" 
    echo "\chemfig{$mol3}"
    echo "\schemestop" 
fi