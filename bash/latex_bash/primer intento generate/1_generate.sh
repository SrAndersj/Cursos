#1/bin/bash


declare -a arrow=('$\Longrightarrow$' '->'  '<=>');


echo "\schemestart"
echo "\chemfig{$moleculeOne}"
if [ $symboladd -eq 1 ]
then
  echo "\arrow{0}[,0]\+" 
  echo "\chemfig{$moleculeTwo}"
fi
echo "\hspace{1em}"
if [ $arrowType -eq 0 ]
then
  echo "\arrow{0}[,0] $arrow"
else
  echo "\arrow{${arrow[$arrowType]}[$arrowUp][$arrowDown]}"
fi
echo "\hspace{3em}"
echo "\chemfig{$moleculeNextArrow}"
echo "\schemestop"



# echo ${arrow[$arrowType]}

# if [ $symboladd -eq 1 ]
# then
#   echo "has value"
# fi



# para quitar los espacios en los strings

# var="  3918912k"
# echo ${var//[[:blank:]]/}