#! /bin/bash

# Busca en $HOME todos los ficheros scripts que empiecen por #! /bin/bash para
# ponertelos en MisScripts.
function BackupC(){
if [ ! -d $HOME/MisScripts ]
then
  echo "No existia la carpeta"
  mkdir $HOME/MisScripts
fi
for script in `find $HOME -type f|grep -R "#! /bin/bash"|cut -d ":" -f 1`
do
  echo "Copiando el fichero "$script 
  cp $script $HOME/MisScripts
done
}

# Vacios: funcion capaz de recibir un nombre de carpeta y si existe buscar en ella los ficheros vacíos y eliminarlos.
function Vacios(){
if [ $# -eq 1 ]
then
  if [ -d $1 ]
  then
    find $1 -type f -empty -exec rm -f "{}" \;
  else
    echo "No se ha encontrado la carpeta"
  fi
  else
  echo "No has introducido un parametro"
fi
}

# Ahora: función capaz de presentar, de los ficheros accedidos o modificados en la última hora,  
# el nombre, el camino y  el usuario.

# Peligrosos: esta funcion es capaz de recibir un nombre de carpeta, la funcion creara un fichero de texto
# catalogo actualizado de todos aquellos ficheros peligrosos, con permisos rwx en todos.
function Peligrosos(){
if [ $# -eq 1 ]
then
  find $HOME -type f -perm -o=rwx>$1/peligrosos.txt
  else
  echo "Necesitas la carpeta donde te creará el fichero"
fi
}
Peligrosos $1

