###################################################################################
# Script que acepte como parametro 1 palabra si esta vacia la pida al usuario
# analize la palabra aceptada y diga cuantas letras tiene
###################################################################################
#! /bin/bash
clear
if [ $# -eq 1 ]
then
	echo "Su palabra es $1"	
	palabra2=$1
	echo ${#palabra2}
else	
	read -p "Que palabra quiere contar las letras " palabra	
	echo ${#palabra}
fi

