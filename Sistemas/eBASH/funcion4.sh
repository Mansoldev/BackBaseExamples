#! /bin/bash
# funcion mas que al ser llamada con un nombre de carpeta la busque
# 

function mas(){
if [ $# -eq 1 ]
then
  if [ -d $1 ]
  then
    nombre=`ls -la $1|grep "^-"|tr -s " " " "|sed 's/ /*/g'|cut -d "*" -f 5,9|sort -nr|head -1|sed "s/*/ /"|cut -d " " -f 2`
    tamano=`ls -la $1|grep "^-"|tr -s " " " "|sed 's/ /*/g'|cut -d "*" -f 5|sort -nr|head -1|sed "s/*/ /"`
    echo "El fichero mas grande es "$nombre" con "$tamano" bytes."
  else
    echo "No se ha encontrado la carpeta"
  fi
  else
  echo "No has introducido un parametro"
fi
}

mas $1


