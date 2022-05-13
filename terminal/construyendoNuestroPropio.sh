#!/usr/bin/bash

NEW_DIR=DirectorioByAndersj

#lectura de syntaxis
#si estedirectorio no existe 

if[ ! -d  "/home/anders/Escritorio/$NEW_DIR"]; then
        mkdir /home/anders/Escritorio/$NEW_DIR/

fi
    
cp Documentos /root/$NEW_DIR/

echo "`date`:todo listo jefe "
