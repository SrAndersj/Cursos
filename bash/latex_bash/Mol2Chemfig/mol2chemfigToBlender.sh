#1/bin/bash



molecula="\schemestart
\chemname{\chemfig{H-[:40](-[:320]H)(<:[:40]H)<[:120]H}}{most reduced form of carbon}
\arrow{->[$[O]$]}
\chemfig{H-[:40](-[:320]OH)(<:[:40]H)<[:120]H}
\arrow{->[$[O]$]}
\chemfig{H-[:40](=[:90]O)-[:320]H}
\arrow{->[$[O]$]}
\chemfig{H-[:40](=[:90]O)-[:320]OH}
\arrow{->[$[O]$]}
\chemname{\chemfig{O=C=O}}{most oxidized form of carbon}
\schemestop"


    # echo $molecula

	
str=$molecula #crear un array a partir del string 
for (( i=0 ; i < ${#str} ; i++ )) {
    arr[$i]=${str:i:1}
	 moleculaArray[$i]=${arr[$i]}
	 moleculaArrayCounter[$i]=${arr[$i]}
}




echo ${#moleculaArray[@]}






	l=${#molecula} #length of string
	a=0
	b=1
	c="%"
	d=">"
	
	echo "
	 "

	





while [ $a -lt ${#moleculaArrayCounter[@]} ] # imprime segundo y tercer grado osea 2 semitonos , dos semitonos
        do

        #  echo "mesaje numero :"$a "el caracter es:${moleculaArray[$a]} "
		 
		if [ "${moleculaArray[$a]}" = "$c" ]; then
        #    echo "Strings are equal first"
		   
		   b=$a
		   
		#    echo ${moleculaArray[$b]}
		   unset moleculaArray[$b]      #unset borra el caracter en ese array
		#    echo ${moleculaArray[$b]}
		   b=$(( $b + 1 ))
		   unset moleculaArray[$b]
		#    echo ${moleculaArray[$b]}
		   b=$(( $b + 1 ))
		   unset moleculaArray[$b]
		#    echo ${moleculaArray[$b]}
		   


        #  else
        #    echo "Strings are not equal."
        fi

		if [ "${moleculaArray[$a]}" = "$d" ]; then
        #    echo "Strings are equal second"		
		   b=$a
		   
		#    echo ${moleculaArray[$b]}
		   unset moleculaArray[$b]      #unset borra el caracter en ese array
		#    echo ${moleculaArray[$b]}
		   b=$(( $b + 1 ))
		   unset moleculaArray[$b]
		#    echo ${moleculaArray[$b]}
		   b=$(( $b + 1 ))
		   unset moleculaArray[$b]
		#    echo ${moleculaArray[$b]}
		  
        fi

		
	echo -n ${moleculaArray[$a]}


a=$(( $a + 1 ))
        done


# echo -n ${moleculaArray[@]}


if [ "${moleculaArray[$a]}" = "$c" ]; then
           echo "Strings are equal."
		  

        #  else
        #    echo "Strings are not equal."
        fi

# if [ "${molecula[0]}" = "$c" ]; then
#     echo "Strings are equal."
# else
#     echo "Strings are not equal."
# fi

		
# str="Hello world!"
# for (( i=0 ; i < ${#str} ; i++ )) {
#     arr[$i]=${str:i:1}
# }

# #print
# printf "=%s=\n" "${arr[@]}"
	



# str="Hello world!"
# for (( i=0 ; i < ${#str} ; i++ )) {
#     arr[$i]=${str:i:1}
# 	echo ${arr[$i]}
# }