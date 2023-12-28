# cat tempo2|sed -n '/0\>/p'|tr '[:lower:]' '[:upper:]'
# palabra=(`echo "demasiado"|sed 's/[.]*/ /g'`)
# cat tempo2|sed  '/^$/d'|cut -d " " -f 2 solo cogemos las palabras y no los numeros ademas de quitar lineas en blanco

#! /bin/bash
palabras=(`cat tempo2|sed '/^$/d'|tr ' ' '-'`)
for n in ${!palabras[*]}
do
	cadapalabra=`echo ${palabras[$n]}|cut -d "-" -f 2`
done

