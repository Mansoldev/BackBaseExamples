#! /bin/bash
# funcion mas que al ser llamada con un nombre de carpeta la busque
# 

function Mas(){
if [ $# -eq 1 ]
then
  if [ -d $1 ]
  then
    nombre=`ls -laS $1|grep "^-"|tr -s " " " "|cut -d " " -f 5,9|head -1|cut -d " " -f 2`
    tamano=`ls -laS $1|grep "^-"|tr -s " " " "|cut -d " " -f 5|head -1`
    echo "El fichero mas grande es "$nombre" con "$tamano" bytes."
  else
    echo "No se ha encontrado la carpeta"
  fi
  else
  echo "No has introducido un parametro"
fi
}

mas $1


