#####################
# frase al reves
#####################

#! /bin/bash
clear
salir="no" #switch de control

until [ "${salir}" = "si" ] #bucle para que si da enter en vacio vuelva a la pregunta 1 y otra vez
do
 clear
 read -p "Frase " frase

 if [ ! -z "${frase}" ] #si no esta vacio el array frase
 then
     salir="si"
 fi
done

cadena="" #Inicializamos cadena

for i in `seq ${#frase} -1 0` #desde el nº de caracteres -1 hasta 0
do
cadena=${cadena}${frase:$i:1} #coge de cadena caracter a carater desde el final
done

echo $cadena
