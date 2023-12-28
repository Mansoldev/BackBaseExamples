#! /bin/bash
clear
if [ $# -gt 0 ]
then
   echo "------------------------ Toda la frase"
   echo "Tu frase es $*"
   echo "------------------------ Todas las palabras en columna"
   for a in `echo $*`
   do
     echo ${a}
   done
   echo "-------------------------- Las palabras al revés"   
   echo
   frase=(`echo $*`)
   for a in `seq ${#frase[*]} -1 0`
   do
   echo -n ${frase[${a}]}" "
   done
else
  echo "no hay frase" 
fi
