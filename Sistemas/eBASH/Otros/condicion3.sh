#! /bin/bash
clear
read -p "Cual es tu nombre " respuesta
echo
if [ -n ${respuesta} ] 
then
echo "Te llamas ${respuesta} y tu nombre tiene ${#respuesta} letras"
sleep 2
else
echo "No has escrito nada"
fi
