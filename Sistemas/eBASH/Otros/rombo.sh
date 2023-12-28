#! /bin/bash
if [ $# -ne 1 ]
then
  echo "ERROR! Esperaba un número entre 5 y 9, ambos incluidos"
else
  if [ $1 -lt 5 ] || [ $1 -gt 9 ]
  then
    echo "ERROR! Esperaba un número entre 5 y 9, ambos incluidos"
  else
    ne=10
    nd=1
    d=1
    for linea in `seq 1 $1`
    do
      for espacios in `seq 1 ${ne}`
      do
        echo -n " "
      done
      for digitos in `seq 1 ${nd}`
      do
        echo -n ${d}
      done
    echo
    nd=`expr ${nd} + 2`
  ne=`expr ${ne} - 1`
    d=`expr ${d} + 1`
    done
#======================================= Descendente
    nd=`expr ${nd} - 4`
    ne=`expr ${ne} + 2`
    d=`expr ${d} - 2`
    for linea in `seq  $1 -1  2`
    do
      for espacios in `seq 1 ${ne}`
      do
        echo -n " "
      done
      for digitos in `seq 1 ${nd}`
      do
      echo -n ${d}
      done
    echo
    nd=`expr ${nd} - 2`
    ne=`expr ${ne} + 1`
    d=`expr ${d} - 1`
    done
 fi
fi

