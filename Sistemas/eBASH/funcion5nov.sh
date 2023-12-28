#version 2 comprobar si te han dado variables
#! /bin/bash
if [ $1 ]
then
  resultado=$1
  contador=$1
  cadena="$1"
  while [ $contador -gt 1 ]
  do
    (( contador-- ))
    resultado=$(( $resultado*$contador ))
    cadena="$cadena*$contador"
  done
  notify-send "Factorial de $1=""$cadena=$resultado"
else
  notify-send "ERROR ""No has escrito un parametro."
fi

