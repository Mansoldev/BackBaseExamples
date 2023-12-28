#! /bin/bash
function Prueba()
{
echo "Todos los parámetros pasados "$*
echo "Cuantos parámetros han sido pasados "$#
echo "El valor del primer parámetro pasado "$1
echo "Tercer valor "$3
}
function cartel()
{
banner $1
return
}
function cal()
{
n1=$1
op=$2
n2=$3
ans=0
if [ $# -eq 3 ]
 then
  ans=$(( $n1 $op $n2 ))
  echo "$n1 $op $n2 = $ans"
  return $ans
 else
  echo "La Función cal requiere tres argumentos"
fi
 return
}
 ################################ LLAMADAS A FUNCIONES
cal 5 \* 7
resultado=$?
echo ${resultado}
cartel Carlos

