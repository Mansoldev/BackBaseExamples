#####################
# Acronimo de 1 frase
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

cadena=${frase:0:1} #Tenemos en nuestra variable cadena el 1º caracter, el 1 es la cantidad de caracteres que escojemos

for i in `seq 1 1 ${#frase}` #leemos los caracteres de la variable frase
do
   if [ "${frase:$i:1}" == " " ] #si el caracter escogido es 1 espacio
   then
       (( i++ )) # Como hemos localizado un espacio cogemos el siguiente caracter
        cadena=${cadena}${frase:$i:1} #cadena es lo que hubiese en cadena mas el caracter que le hemos dicho
   fi
done

echo $cadena
