#!/bin/bash


#procesamos los parámetros
while [ $1 ]
do
    param=${1%=*} #obtenemos el parámetro 
    valor=${1#*=} #obtenemos el valor del parámetro
    if [ $param = "--email" ]
    then
       email=$valor
    fi


    if [ $param = "--bbdd" ]; then
       bbdd=$valor
    fi

    if [ $param = "--ruta" ]; then
       ruta=$valor
    fi


    shift #rotamos
done

if [ -z $email ]; then
    email="ilopezmon@gmail.com"
fi


if [ -z $bbdd ]; then
   echo "Tienes que indicar la bbdd a exportar"
   exit
fi

if [ -z $ruta ]; then
   echo "especifica la ruta donde guardar"
   exit
fi
var=`mysql -u root -pasir2 -Bse "use information_schema;select SCHEMA_NAME from SCHEMATA where SCHEMA_NAME='$bbdd';" |wc -l`

if [ $var -eq 0 ]; then
  echo "$bbdd no existe"
  exit;
fi

echo "El log se enviará a $email"

for tabla in `mysql -u root -pasir2 -Bse "use $bbdd;show tables"`
do
    mysql -u root -pasir2 -Bse "select * from $bbdd.$tabla INTO OUTFILE '$ruta/$tabla.csv' FIELDS TERMINATED BY ';'"
    uuencode $ruta/$tabla.csv $tabla.csv |mail -s "tabla $tabla" $email
done

