#!/bin/bash
#programa para ejemplifical el paso de argumentos

nombreCurso=$1
horarioCurso=$2
echo "el nombre del curso es : $nombreCurso dictado en el horario de $horarioCurso"
echo "el numero de paramentros enviados es : $#"
echo "los paramentros enviados son:$*"
