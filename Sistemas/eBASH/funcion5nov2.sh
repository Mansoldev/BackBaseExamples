#version 3 comprobar si la variable pasada es numerico entre 2 y 12

#! /bin/bash
  if [ $1 ]
  then
    if [ 2 -le $1 -ge 12 ]
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
      notify-send "ERROR ""No has introducido un número"
    fi
  else
    notify-send "ERROR ""No has escrito un parametro."
  fi




