#! /bin/bash
clear
read -p "Qué directorio ? " directorio
if [ -d ${directorio} ]
then 
read -n 2 -p "El directorio existe. Quieres cambiarte a él ? " respuesta
if [ "${respuesta}" != "si" ]
then
break
else
echo
cd ${directorio}
fi
else
echo "El directorio no existe"
fi
