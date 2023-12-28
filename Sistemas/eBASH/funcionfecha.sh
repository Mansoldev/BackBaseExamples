#! /bin/bash
# presenta así la fecha 14 de Octubre de 2014

function fecha(){
dia=`date +%D|cut -d "/" -f 2`;
mes=`date +%D|cut -d "/" -f 1`;
year=`date +%Y`;

case $mes in
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
echo $dia" de "$nmes" de "$year;
}
banner `fecha`
fecha

#$date +"%A %d en %B de %Y (%r)";

