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
    if [ $param = "--tabla" ]; then
       tabla=$valor
    fi

    shift #rotamos
done

if [ -z $tabla ]; then
   echo "Tienes que especificar la tabla"
   exit
fi

if [ -z $bbdd ]; then
   echo "Tienes que especificar la bbdd"
   exit
fi
if [ -z $email ]; then
   echo "Tienes que especificar el email"
   exit
fi

/usr/mysql51/bin/mysqldump -u root -pasir2 $bbdd $tabla > volcado.sql
fecha=$(date +%Y-%m-%d)
uuencode volcado.sql volcado.sql |mail -s "volcado $bbdd.$tabla $fecha" $email

