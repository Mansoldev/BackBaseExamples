#!/bin/bash

#procesamos los parámetros
while [ $1 ]; do
    param=${1%=*} #obtenemos el parámetro 
    valor=${1#*=} #obtenemos el valor del parámetro
   
    if [ $param = "--email" ]; then
       email=$valor
    fi
	

    shift #rotamos
done

numServidores=`ps -ef|grep mysqld|grep -v mysqld_safe|grep -v grep|wc -l`

>fichero.txt

cadena=`ps -ef|grep mysqld`
echo "Hay $numServidores servidores de mysql en el ordenador:">>fichero.txt
echo $cadena>>fichero.txt
mail -s "Servidores en ejecución" $email<fichero.txt
