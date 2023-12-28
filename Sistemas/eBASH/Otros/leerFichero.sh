#! /bin/bash
##############################################################
# Leer un fichero linea a linea                              #
##############################################################
clear
numLinea=0
linea="nada"
while [ ! -z "$linea" ]
do
read linea
if [ ! -z "$linea" ]
then
   numLinea=`expr $numLinea + 1`
   echo "$numLinea--> $linea"
fi
done < /etc/passwd

