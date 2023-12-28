#! /bin/bash

function suma(){
total=`expr $1+$2`
return $total
}
read -p "Introduce un numero: "num1
read -p "Introduce un segundo número: "num2
suma $num1 $num2
echo "La suma de la función es: $?"
