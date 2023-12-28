#! /bin/bash
clear
letras=(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
read -p "Escribe una frase " frase
if [ -z ${frase} ]
then
  echo "Se esperaba una frase para codificar"
  sleep 3
else
  ############# separo las carácteres, uno a uno, con un asterisco, para conseguir un array de la frase
  ############# esta vez uso, como separador, asterisco, por si la frase contiene :
  IFS="*"
  aletras=(`echo "${frase}"|sed "s/[.]*/*/g"`)
  cadena=" "
    for l in ${!aletras[*]}
    do
     ############# buscar cada carácter de frase entre los elementos del array letras.
     ############# si lo encuentra guarda en pos la posición que ocupa en el array letras
     ############# si no lo encuetra pos seguirá siendo 1000
     let pos=1000
     for k in ${!letras[*]}
     do
       if [ "${aletras[${l}]}" == "${letras[${k}]}" ]
       then
        let pos=${k}
       fi 
     done
     ############## comprobar si encontró el carácter entre los del array de letras
     ############## si lo encontró concatena la posición, si no es que no era letra y lo concatena tal cual 
     if [ ${pos} -ne 1000 ]
     then
        cadena=${cadena}${pos}
     else
        cadena=${cadena}${aletras[${l}]}
     fi
  done
  echo ${cadena}
fi
