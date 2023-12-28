#! /bin/bash
################################################################################################
# Acepta dos parámetros: una carpeta y un fichero.
# Comprueba la existencia de la carpeta y, en ella, el fichero.
# Si existe el fichero en la carpeta escribe su tipo y el tamaño que tiene.
################################################################################################
clear
if [ $# -ne 2 ]
then
   echo "ERROR! Se eperaban dos valores una carpeta y un fichero"
   sleep 3
else
   if [ -d $1 ]
   then
      camino=$1"/"$2
      if [ -e ${camino} ]
         then
         file ${camino}
         du -hs ${camino} 
         sleep 3
         else
         echo "El fichero no existe"
         sleep 3
      fi
      sleep 3
   else
      echo "carpeta no existe"
      sleep 3
   fi
fi
clear
