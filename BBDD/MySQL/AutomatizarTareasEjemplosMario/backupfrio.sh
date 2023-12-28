#!/bin/bash
#backup completo fisico en frio
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
  echo "Paramos el gestor $servicio"
  service $servicio stop
  echo "Comprimiendo el archivo"
  tar -cvf $destino $datadir
  echo "Iniciamos el gestor $servicio"
  service $servicio start
else
  echo "USO DEL SCRIPT: ./fichero.sh --bd=* --tabla=* --mail=*"
fi
