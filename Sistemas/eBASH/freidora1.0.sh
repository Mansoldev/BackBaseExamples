#################################################################################
# Partiendo del fichero alumnos.txt en el que figura la lista de nuevos usuarios
# configurar un script que elimine del sistema los usuarios contenidos de ese 
# fichero, asi como sus residuos, el home
# La version 1.0 es usando su script para localizar los usuarios.
#################################################################################
#! /bin/bash
clear
while read linea
do
linea=`echo ${linea}|tr -d ' '`
linea=`echo ${linea}|tr '[:upper:]' '[:lower:]'`
nc=${#linea}
if [ $nc -lt 5 ]
then
 let dif=$(( 5 - $nc ))
 for n in `seq 1 1 $dif`
 do
 linea=$linea$n
 done 
fi
linea=${linea:0:5}
  echo -e "BORRANDO El USUARIO "`tput bold`${linea}`tput init`
  sudo userdel -rf $linea 2>/dev/null
done <alumnos.txt
