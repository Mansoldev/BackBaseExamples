#########################################################################################
# Script que saca una lista de todos los usuarios que en el directorio /home no tienen
# el suyo propio
# Script que automatice la creacion básica de un grupo de usuarios, los nombres de usuario
# procesados estaran en un fichero de texto llamado alumnos (genesis), para ellos necesitas
# hacer el escritorio de cada uno.
# basandose en el mismo fichero elimine esos usuarios y sus carpetas. (cepillo o freidora)
#########################################################################################
#! /bin/bash

archivo=alumnos.txt
while read -r usuario
do
  echo $usuario
done < $archivo




