#1/bin/bash
source 2_variables_lilypond.sh 




# generate Mayor scale 
EM_function(){
# nns=0 #asignacion de la nota de la escala EM 
a=0 # contador para que el while se haga 8 veces 

nnsaux=$nns

while [ $a -lt 8 ] #menor que
do
     while [ $a -lt 2 ] # imprime segundo y tercer grado osea 2 semitonos , dos semitonos
        do
         EM_array[$a]=${scaleSostenido[${nns}]}
        #  echo -n ${scaleSostenido[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 2 ))
         a=$(( $a + 1 ))
        done

     while [ $a -lt 3 ] #imprime 4 grado osea 5 semitonos
         do
         EM_array[$a]=${scaleSostenido[${nns}]}         
        #  echo -n ${scaleSostenido[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 1 ))
         a=$(( $a + 1 ))
         
         done 

     while [ $a -lt 6 ]
         do
         EM_array[$a]=${scaleSostenido[${nns}]}
        #  echo -n ${scaleSostenido[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 2 ))
         a=$(( $a + 1 ))     
         done

     while [ $a -lt 8 ]
         do
         EM_array[$a]=${scaleSostenido[${nns}]}
        #  echo -n ${scaleSostenido[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 1 ))
         a=$(( $a + 1 ))     
         done
        
    
        
done
nns=$nnsaux

}





#generate minor scale Natural

EmN_function(){


a=0
# nns=0
nnsaux=$nns

while [ $a -lt 8 ] #menor que
do
     while [ $a -lt 1 ] # imprime segundo y tercer grado osea 2 semitonos , dos semitonos
        do
         EmN_array[$a]=${scaleBemol[${nns}]}
        #  echo -n ${scaleBemol[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 2 ))
         a=$(( $a + 1 ))
        done

     while [ $a -lt 2 ] #imprime 4 grado osea 5 semitonos
         do         
         EmN_array[$a]=${scaleBemol[${nns}]}
        #  echo -n ${scaleBemol[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 1 ))
         a=$(( $a + 1 ))
         
         done 

     while [ $a -lt 4 ]
         do
         EmN_array[$a]=${scaleBemol[${nns}]}
        #  echo -n ${scaleBemol[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 2 ))
         a=$(( $a + 1 ))     
         done

     while [ $a -lt 5 ]
         do
         EmN_array[$a]=${scaleBemol[${nns}]}
        #  echo -n ${scaleBemol[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 1 ))
         a=$(( $a + 1 ))     
         done

     while [ $a -lt 8 ]
         do
         EmN_array[$a]=${scaleBemol[${nns}]}
        #  echo -n ${scaleBemol[${nns}]}
        #  echo -n ' '  # -n para que no haga salto de linea
         nns=$(( $nns + 2 ))
         a=$(( $a + 1 ))     
         done

        #  echo  ${EmN_array[@]}
        #  clear

done

nns=$nnsaux
}






#