#!/bin/bash
clear
select i in Continuar Finalizar
do
#Si el usuario elige finalizar el programa, entonces con break salimos del ciclo.
if [ ${i} == "Finalizar" ]
    then
        break
    else
        clear
fi
done

