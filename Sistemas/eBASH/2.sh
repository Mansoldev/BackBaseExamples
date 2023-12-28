###############################################################################
# Script que sea capaz de pedir o aceptar una frase y devolver como resultado
# a) la frase sin espacios   ¿frase=$frase|sed 's/ //g'?
# b) la frase al reves   ¿investigar comando rev?
# c) el acronimo de sus palabras, es decir, las iniciales
###############################################################################
#! /bin/bash
clear
if [ -z $1 ]
then
    read -p "Que frase quiere " frase 
    #se=(`echo $frase`)
    #echo ${se[*]}
    echo $frase|sed 's/ //g'
    
else
    echo "Su frase es: $* "
    frase2=$*
fi

