#!/bin/bash
#programa que exporte todas las tablas de una base de datos, cada tabla a un fichero csv.
while [ $1 ]
do
  param=${1%=*}
  valor=${1#*=}
  if [ $param = "--email" ]; then
     email=$valor
  fi
  if [ $param = "--bbdd" ]; then
     bbdd=$valor
  fi
  if [ $ruta = "--ruta" ]; then
     ruta=$valor
  fi
  shift
done

if [ -z $email ];then
  echo "Necesitas especificar --email=example@domain.extension"
  exit
fi
if [ -z $bbdd ];then
  echo "Necesitas especificar --bbdd=basededatos"
  exit
fi
if [ -z $ruta ];then
  echo "Necesitas especificar la ruta"
  exit
fi

usuario=`whoami`
if [ $usuario != "root" ]; then
  echo "Debes de ser el usuario root para lanzar este script"
else
  var=mysql -u root -pasir2 -Bse "use information_schema;select SCHEMA_NAME from SCHEMATA where SCHEMA_NAME='$bbdd';"|wc -l
  if [ $var -eq 0 ]; then
    echo "$bbdd no existe"
    exit
  else
    for tabla in `/usr/mysql56/bin/mysql -u root -pasir2 $bbdd -Bse "show tables;"`
  do
    #echo $tabla
    /usr/mysql56/bin/mysql -u root -pasir2 -Bse "select * from $bbdd.$tabla INTO OUTFILE '$ruta/$tabla.csv' FIELDS TERMINATED BY ';';"
    #uuencode $tabla.csv encode$tabla.csv|mail -s "fichero .csv con las tablas de la base de datos $bbdd" $email
  done
  fi
fi
