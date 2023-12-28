#!/bin/bash

numServidores=`ps -ef|grep mysqld|grep -v mysqld_safe|grep -v grep|wc -l`


cadena=`ps -ef|grep mysqld`
echo "Hay $numServidores servidores mysql en el ordenador">fichero.txt
echo $cadena>>fichero.txt
mail -s "Servidores lel" pruebaITSRI@gmail.com<fichero.txt
