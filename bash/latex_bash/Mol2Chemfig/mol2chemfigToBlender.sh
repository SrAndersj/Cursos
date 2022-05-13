#1/bin/bash



molecula="\chemfig{
                 OH% 2
        -[:90,,1]% 1
           -[:30]% 3
                    (
                    -O% 22
                    -% 23
              -[:300]% 24
                   =^% 25
               -[:60]% 26
                        (
                        -N% 31
                            (
                       -[:60]% 34
                            )
                  -[:300]% 33
                  -[:240]% 32
                  -[:180]O% 30
                  -[:120]% -> 25
                        )
             =^[:120]% 27
              -[:180]% 28
                        (
              -[:120,,,2]HO% 29
                        )
             =^[:240]% -> 23
                    )
          =^[:90]% 4
          -[:150]% 5
                    (
               -[:90]% 19
                        (
               -[:30,,,1]OH% 21
                        )
              =[:150]O% 20
                    )
         =^[:210]% 6
          -[:270]% 7
                    (
             =^[:330]% -> 1
                    )
    -[:180,1.268]% 10
          -[:210]% 8
                    (
          -[:270,,,1]OH% 9
                    )
         =_[:150]% 14
                    (
          -[:210,,,2]HO% 15
                    )
           -[:90]% 13
          =_[:30]% 12
                    (
              -[:330]% 11
             =_[:270]% -> 10
                    )
           -[:90]% 16
                    (
              =[:150]O% 17
                    )
       -[:30,,,1]OH% 18
}"


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