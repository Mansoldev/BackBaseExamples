#! /bin/bash

traducemes hora

function hora(){
mes=`date +%D|cut -d "/" -f 1`
}


function traducemes(){
case $1 in
1)nmes="Enero";;
2)nmes="Febrero";;
3)nmes="Marzo";;
4)nmes="Abril";;
5)nmes="Mayo";;
6)nmes="Junio";;
7)nmes="Julio";;
8)nmes="Agosto";;
9)nmes="Septiembre";;
10)nmes="Octubre";;
11)nmes="Noviembre";;
12)nmes="Diciembre";;
esac
echo $nmes
}


