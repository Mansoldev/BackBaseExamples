#!/bin/bash
#script que vuelca una tabla de la base 
#de datos y la envia por email
#como archivo adjunto 
#   $1 nombre de la base de datos
#   $2 nombre de la tabla
#   $3 dirección de correo
#procesamos los parámetros
while [ $1 ]; do
    param=${1%=*}
    valor=${1#*=}
   
    if [ $param = "--bd" ]; then
       bbdd=$valor
    fi
	
    if [ $param = "--tabla" ]; then
       tabla=$valor
    fi
	
    if [ $param = "--mail" ]; then
       email=$valor
    fi     
  shift
done

#echo $basedatos
#echo $tabla
#echo $email
fail="no"

if [ -z $bbdd ]; then
  echo "Tienes que especificar la base de datos"
  fail="si"
fi
if [ -z $tabla ]; then
  echo "Tienes que especificar la tabla"
  fail="si"
fi
if [ -z $email ]; then
  echo "Tienes que especificar la base de datos"
  fail="si"
fi

if [ $fail = "no" ]; then
  /usr/mysql56/bin/mysqldump -u root -pasir2 $bbdd         $tabla>volcado.sql
  fecha=$(date +%Y-%m-%d)
  uuencode volcado.sql volcado$tabla.sql|mail -s "volcado de $bbdd.$tabla a $fecha" $email
else
  echo "USO DEL SCRIPT: ./fichero.sh --bd=* --tabla=* --mail=*"
fi

 

