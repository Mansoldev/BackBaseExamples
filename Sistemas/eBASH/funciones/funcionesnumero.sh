###############################################################################################################
# Funcion capaz de recibir una variable y devolver como resultado si el contenido de la variable es numerica.
###############################################################################################################
#! /bin/bash
clear

function esnumero(){
if [ $# -eq 1 ]
then
  contn=no #switch logico que comprueba que cada cifra se corresponde con un numero del array $numeros
  cc=0 #contador que indica si estamos en la ultima vuelta del for
  numeros=(0 1 2 3 4 5 6 7 8 9) #numeros posibles a comprobar para cada cifra
  cadena=(`echo $1|sed 's/[.]*/ /g'`)
  for a in ${cadena[*]} #trabaja con cada caracter de la cadena
  do
    cc=`expr $cc + 1` #independientemente del resultado cuenta las vueltas.
    echo $cc" de "${#cadena[*]}
    echo "Comprobando el valor "$cc": "$a
    for b in ${numeros[*]} #trabaja con cada cifra del array numeros
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
  # podria haberlo resuelto en el if anterior, pero separado da mas claridad al código
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
