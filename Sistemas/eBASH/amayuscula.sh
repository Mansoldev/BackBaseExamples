#! /bin/bash
palabras=(`cat tempo2|sed '/^$/d'|tr " " "-"`)
for n in ${!palabras[*]}
do
palabra=`echo ${palabras[$n]}|cut -d "-" -f 2`
done
