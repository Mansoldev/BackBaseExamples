#! /bin/bash

function EnviarScripts(){
if [ $# -eq 1 ]
then
  mkdir $1
  for script in `find $HOME -type f|grep -R "#! /bin/bash"|cut -d ":" -f 1`
  do
    echo "Copiando el fichero "$script" al directorio "$HOME/$1 
    cp $script $HOME/$1
  done
else
echo "No has introducido un parametro"
fi
}

EnviarScripts $1
