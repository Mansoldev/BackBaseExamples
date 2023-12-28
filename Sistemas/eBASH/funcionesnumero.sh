###############################################################################################################
# Funcion capaz de recibir una variable y devolver como resultado si el contenido de la variable es numerica.
###############################################################################################################
#
#
#! /bin/bash
clear

function esnumero(){
if [ $# -eq 1 ]
then
  contn=no
  cc=0
  numeros=(0 1 2 3 4 5 6 7 8 9)
  cadena=(`echo $1|sed 's/[.]*/ /g'`)
  for a in ${cadena[*]}
  do
    cc=`expr $cc + 1`
    echo $cc" de "${#cadena[*]}
    echo "Comprobando el valor "$cc": "$a
    for b in ${numeros[*]}
    do
      if [ $b == $a ]
      then
        contn=si
        break
      fi
    done
    if [ $contn == no ]
    then
      break
    else
      if [ $cc -eq ${#cadena[*]} ]
      then
        break
      fi
      contn=no
    fi
  done
  echo
  if [ $contn == si ]
  then
  echo "SI"
  else
  echo "NO"
  fi
else
  echo "No has escrito solo un parametro."
  sleep 2
  clear
fi
}

esnumero $1
