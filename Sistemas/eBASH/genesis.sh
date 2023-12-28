# Script que automatice la creacion básica de un grupo de usuarios, los nombres de usuario
# procesados estaran en un fichero de texto llamado alumnos (genesis), para ellos necesitas
# hacer el escritorio de cada uno.
###############################################################################################
#! /bin/bash

archivo=alumnos.txt
while read -r linea
do
# Cogiending usuaring
  linea=`echo $linea|tr 'A-Z' 'a-z'`
  usuario=`echo $linea|tr 'A-Z' 'a-z'`
  usuarioA=(`echo $usuario|sed 's/[.]*/ /g'`)
  echo ${usuarioA[*]}
  nc=${usuarioA[*]}
  echo "Tiene ${#usuarioA[*]} caracteres"
  if [ $nc -lt 6 ]
  then
    let dif=$(( 6 - $nc ))
    for n in `seq 1 1 $dif`
    do
      usuario=$usuario$n
    done
  fi
$usuario=${usuario:0:6}

# Creanding contraseñing
nm=`echo ${usuario}|tr '[:lower:]' '[:upper:]'`
inicial=${nm:0:1}
resto=${usuario:1:4}
a=`date`&&a=${a:24:4}
$pas=${inicial}${resto}User$a

# Creanding usuaring
echo -e "CREANDO EL USUARIO "`tput bold`$linea`tput init`"\t"$pas
sudo useradd –m –g alumnos –p `perl –e ´print crypt("'"$pas"'","SA")´
sudo mkdir /home/$usuario/Desktop -m 755
sudo chown $linea /home/$usuario/Desktop
sudo chgrp alumnos /home/$usuario/desktop
done < $archivo
