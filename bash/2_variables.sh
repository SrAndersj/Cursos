#1/bin/bash
#programa para revisar la declaracion de variables


opcion=0
nombre=Anders


echo "Opcion: $opcion y Nombre:$nombre"
#exportar la variable nombre para que este disponible a los demas procesos

export nombre 

#llamar al siguiente script para recuperar la variable

./2_variables_2.sh
