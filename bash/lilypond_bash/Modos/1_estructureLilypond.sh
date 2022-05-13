

#1/bin/bash

source 2_variables_lilypond.sh # importar variables y funciones 

source ./0_generateScaleMayor.sh 




# # ------------------------
# echo  ${EM_array[@]}
# echo ${EmN_array[@]}
# echo ${EmN_array[2]:0:1}     # a = primer caracter
# echo ${#EmN_array[2]}
# -----------------------------

 #generate Doric scale Em +6


 jonico_function(){

    EM_function
  #  echo 'Escala jonica'
  
   echo -n ${EM_array[@]}
 


 }


dorico_function () {

EmN_function
a=0 #counter   
declare -a aux
while [ $a -lt 8 ]
do 

          dorico_array[$a]=${EmN_array[${a}]}

      
         if [ $a -eq 5 ]
          then
            if [ ${#EmN_array[${a}]} -eq 3 ]
             then
             
              dorico_array[$a]=${EmN_array[$a]:0:1}
                        
         
            
             elif [ ${#EmN_array[${a}]} -eq 1 ]
              then
                dorico_array[$a]=${EmN_array[$a]:0:1}$sostenido           

                 

            fi     
          fi
      

a=$(( $a + 1 ))


done 

# echo 'Escala Dorica  '
echo -n ${dorico_array[@]}

}



frigio_function () {

EmN_function
a=0 #counter   
declare -a aux
while [ $a -lt 8 ]
do 

          frigio_array[$a]=${EmN_array[${a}]}

      
         if [ $a -eq 1 ]
          then
            
              frigio_array[$a]=${EmN_array[$a]}$bemol
                        
                  
                  

                 

              
          fi
      

a=$(( $a + 1 ))


done 

# echo 'Escala Dorica  '
echo ${frigio_array[@]}

}






# #Declare first string
# string1="Welcome"
# #Declare second string
# string2=" everyone "
# #Combine first and second string
# string3=$string1$string2
# # Print the third string by combining with other string
# echo "$string3 to our site"



#  echo ${scaleSostenido[1]:0:1}     # a = imprime primer caracter 




# declare -a cadena=('abcABC123ABCabc' '5555')
# #      0123456789.....
# # (-)  ....09876543210
# #      Se empieza desde 0.

# echo ${cadena:0}       # abcABC123ABCabc
# echo ${cadena[1]:0:1}     # a = primer caracter
# echo ${cadena[0]:7}       # 23ABCabc
# echo ${cadena:7:3}     # 23A = 3 caracteres desde posición 7
# echo ${cadena:7:-3}    # 23ABCabc = desde posición 7 hasta el final
# echo ${cadena:(-4)}    # Cabc
# echo ${cadena: -4}     # Cabc (atención al espacio antes del menos)
# echo ${cadena: -4:2}   # Ca  (atención al espacio antes del menos)