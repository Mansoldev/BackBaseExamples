#################################################################################
# Version 2.0 pedraz
# Utilizando el /etc/shadow
# configurar un script que elimine del sistema los usuarios contenidos de ese 
# fichero, asi como sus residuos, el home
#################################################################################
#! /bin/bash
clear
sudo cat /etc/shadow >borrausuarios.txt
while IFS=: read -r usuario pass
do
#  if [ ${pass:0:2} == "SA" ]
#  then
   [ "${pass:0:2}" == "SA" ]&&echo -e "BORRANDO El USUARIO "`tput bold`${usuario}`tput init`&&sudo userdel -rf $usuario 2>/dev/null
#  fi
done <borrausuarios.txt
rm borrausuarios.txt
