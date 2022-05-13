¡Encontré este sitio debuggex.com, en el que se puede ver el flujo lógico de las expresiones regulares!
 
 este tambien 
https://regexr.com/

# clases
```
.
...


\d      #digitos

\d\d\d

[0-9]=\d


\w        #caracteres de palabras

\s          #espacios/invisibles


[a-d]

[0-9] ~\d

[0-9a-zA-Z_] ~w

[a-fA-z]

[a-fA-z0-9]

[a-fA-z0-9_\.]    \. para poder integrar el caracter punto

```


# delimitadores
## * greedy -TODO , 0 o muchas , puede aparecer o no  
## + uno o mas 
## ? cero o una 

##### si debe aparecer usaremos el simbolo de + , si pueden aparecer podemos usar el * que es cero o muchas o el simbolo de interrogacion que es cero o una


```
.*             #busca todos los caracateres
ejemplo 
1234567

  con el asterisco ya no busca el 1 el 2 y el 3 , lo que buscas son todos 1233 es decir el tipo de agrupacion 

\d*           # busca todos los numeros

\d+           #uno o mas digitos 

\d?           # cero o nada , vea si tengo Hola  1234  y le digo remplace por - lo que queda es  ----   -H-o-l-a-

\d+\w             uno o mas digitos y que al terminar encuentre un caracter palabra

\d+[a-z]~\d+\w

\d*[a-z]        puede o no un digito y luego letra


\d*[a-z] [a-z]?   #encuentra haya o no digitos , despues haya una letra y despues haya o no una letra 
```



# Los contadores {1,4}


\d{2,5}   # primer numero minimo , segundo maximo  \d digitos que quiero que tome, es decir almenos 2 digitos y maximo 5 digitos 

\d{4,} #minimo 4 maximo hasta el infinito 


bash

```termianl
grep -E ':[0-9]+' test.sh 
```