#! /bin/bash
if [ $1 ]
then
  resultado=$1
  contador=$1

  echo "El numero dado es: "$contador
  while [ $contador -gt 0 ]
  do
    (( contador-- ))
    resultado=$(( $resultado*$contador ))
  done
  notify-send "$1"*"$resultado"
else
  notify-send "ERROR ""No has escrito un parametro."
