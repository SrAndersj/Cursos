#1/bin/bash



variable="asdfABC abc %2"

# echo ${variable}| sed -e 's/["%"]*$//g'




var="  % 1
     -[:30]% 2
     -[:90]% 3
    -[:150]% 4
    -[:210]% 5
    -[:270]% 6
              (
        -[:330]% -> 1
              ) "

 echo ${var//[[:blank:]]/}

echo ${var//[]/}

echo "otro"


# echo ${var//[0-9]/*}

echo "otro"

var1=3


varDos="$var"

varTres=" echo ${varDos//[%]/}"


echo $varTres
# echo ${varTres//[->]/}

