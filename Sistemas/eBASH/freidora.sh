#################################################################################
# Version 2.0
# Utilizando el /etc/shadow
# configurar un script que elimine del sistema los usuarios contenidos de ese 
# fichero, asi como sus residuos, el home
#################################################################################
#! /bin/bash
clear
sudo cat /etc/shadow|grep SA|cut -d ":" -f 1 >borrausuarios.txt
while read linea
do
  echo -e "BORRANDO El USUARIO "`tput bold`${linea}`tput init`
  sudo userdel -rf $linea 2>/dev/null
done <borrausuarios.txt
rm borrausuarios.txt
