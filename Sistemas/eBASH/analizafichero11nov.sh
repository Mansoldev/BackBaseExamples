###################################################################################
# Script capaz de aceptar como parametro o pedir por pantalla un nombre de fichero
# y presentar por pantalla  el /bin/bash y las lineas que no empiecen #
###################################################################################
#! /bin/bash
clear

if [ $1 ]
then
  fichero=$1
else
  let veces=1
  sigue="Si"
  until [ "$sigue" == "No" ]
  do
    clear
    read -p "Intento $veces/3 Introduce un nombre de fichero " fichero
    if [ -z $fichero ]
    then
      (( veces++ ))
      [ $veces -gt 3 ]&&return
    else
      sigue="No"
    fi
  done
fi

if [ -f $fichero ]
   then
    cat $fichero|sed '/^#[^\!]/d'
   else
    figlet "ERROR!"
    echo "El fichero no existe o está vacio"
fi

