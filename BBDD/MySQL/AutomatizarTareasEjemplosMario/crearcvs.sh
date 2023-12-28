#!/bin/bash

while [ $1 ]
do
  param=${1%=*}
  valor=${1#*=}
  if [ $param = "--email" ]; then
     email=$valor
  fi
  if [ $param = "--fichero" ]; then
     fichero=$valor
  fi
  shift
done

if [ -z $email ];then
  echo "Necesitas especificar --email=example@domain.extension"
  exit
fi
if [ -z $fichero ];then
  fichero="selectuser.csv"
  echo "selectuser.csv"
fi

usuario=`whoami`
if [ $usuario != "root" ]; then
  echo "Debes de ser el usuario root para lanzar este script"
else
  echo "usuario;host;privilegioselect">$fichero
  /usr/mysql56/bin/mysql -u root -pasir2 -Bse "select concat(user,';',host,';',Select_priv) from mysql.user;">>$fichero
  uuencode $fichero encode$fichero|mail -s "fichero .csv con los privilegios select globales sobre los usuarios del gestor" $email
fi
