#! /bin/bash
clear
read -p "Cual es tu nombre " respuesta
echo
if [ -z ${respuesta} ] 
then
echo "No has escrito nada"
sleep 2
else
echo "Has escrito ${respuesta}"
fi
