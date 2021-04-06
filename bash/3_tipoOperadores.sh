#!/bin/bash
#programa ara revisar los tipos de operadores
#autor:Anders @byandersj

A=10
B=4

echo "Operadores aritmeticos"


echo "numeros a=$A y B=$B"
echo "sumar a+b=  $((A+B))"
echo "restar a-b= $((A-B))"
echo "multiplicacion a*b= $((A*B))"
echo "residuo a%b = $((A/B))"


#operadores racionales
echo -e "\nOperadores relaciones"



echo "numeros  a=$A  y b=$B"
echo "a>b  = $((A>B))"
echo "a<b = $((A>B))"
echo "a>=b = $((A >= B))"
echo "a<=b = $((A <= B))"
echo "a==b = $((A == B))"
echo "a!=b = $((A!= B))"

#operadores racionales
echo -e "\nOperadores de asignacion "



echo "a +=b = $((A += B))"

echo "a -=b = $((A -= B))"

echo "a *=b = $((A *= B))"


echo "a /=b = $((A /= B))"


echo "a %=b = $((A %= B))"







