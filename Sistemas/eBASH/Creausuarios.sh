#! /bin/bash
clear
sudo groupadd alumnos 2>/dev/null
while read linea
do
######### Preparar nombre de usuario: Minúsculas, sin espacio, al menos cinco caracteres...
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

######### Preparar password estandarizada de usuario....
nm=`echo ${linea}|tr '[:lower:]' '[:upper:]'`
inicial=${nm:0:1}
resto=${linea:1:4}
a=`date`&&a=${a:24:4}
pas=${inicial}${resto}User$a
echo -e "CREANDO El USUARIO "`tput bold`${linea}`tput init`"\t"$pas 
sudo useradd -m -g alumnos -p `perl -e 'print crypt("'"$pas"'","SA"), "\n";'` -s /bin/bash $linea
sudo mkdir /home/$linea/Desktop -m 755
sudo chown $linea /home/$linea/Desktop
sudo chgrp alumnos /home/$linea/Desktop
done<alumnos.txt

