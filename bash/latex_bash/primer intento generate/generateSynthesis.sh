#1/bin/bash

#synthesis section


echo "\schemestart"
echo "\chemfig{$mol2}"
echo "\hspace{3em}"
if [[ ! $mol3 ]] 
then
echo "\arrow{$arrowSyn[$arrowUp][$arrowDown]}"
echo "\hspace{3em}"
echo "\chemfig{$mol1}"
echo "\schemestop" 
else
echo "\chemfig{$mol3}"
echo "\arrow{0}[,0]\+"
echo "\arrow{$arrowSyn[$arrowUp][$arrowDown]}"
echo "\hspace{3em}"
echo "\chemfig{$mol1}" 
echo "\schemestop" 
fi


