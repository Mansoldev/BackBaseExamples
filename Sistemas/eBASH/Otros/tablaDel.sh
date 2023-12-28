#! /bin/bash
###############################################################################
# Recibe un número como parámetro y escribe su tabla de multiplicar                         #
###############################################################################
if [ $# -ne 1 ]
then
 echo "ERROR: Necesito un número; un sólo número"
else
# comprobar si es un número
cuantosSi=0
n=(`echo $1|sed "s/[.]*/ /g"`)
for x in ${!n[*]}
do
 case ${n[$x]} in
 [0-9]) cuantosSi=`expr ${cuantosSi} + 1` ;;
 esac
done
# si todos son dígitos entonces es número
if [ ${cuantosSi} -eq ${#n[*]} ]
then
y=10
while [ ${y} -ge 1 ]
do
echo "$1 X ${y}=`expr $1 \* ${y}`"
y=`expr ${y} - 1`
done
else
echo "No es un número"
fi
fi

