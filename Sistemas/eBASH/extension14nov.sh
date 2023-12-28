###########################################################################################
# Script capaz de aceptar o pedir una extensiones de fichero y un nombre de carpeta.
# Borrara de dicha carpeta todos los ficheros que no tengan esa extensión.
###########################################################################################
#! /bin/bash
clear

if [ $# -eq 2 ]
then
  extension=$1
  carpeta=$2
else
  let veces=1
  sigue="Si"
  until [ "$sigue" == "No" ]
  do
    clear
    read -p "Intento $veces/3 Introduce una extension y un nombre de fichero " extension carpeta
    if [ -z $carpeta ]||[ -z $extension ]
    then
      (( veces++ ))
      [ $veces -gt 3 ]&&return
    else
      sigue="No"
    fi
  done
fi
echo "La extension proporcionada es $extension y la carpeta $carpeta"
echo "$carpeta/*.$extension"
#rm $carpeta/*.$extension
#ls -la|sed '/.sh/d'
#ls -la machacar|sed '/.sh/d'

