#! /bin/bash
################################## comprobar si hay un parámetro  
if [ ! $# -eq 1 ]
then
   echo "ERROR! Se esperaba una cifra entre 5 y 12"
else
   ################################## comprobar si el valor es una cifra
   IFS=":"
   dato=(`echo $1|sed "s/[.]*/:/g"`) 
   vale="si"
   for m in ${!dato[*]}
   do
     if [ ${m} -ne 0 ]  # pasando de la posición 0
     then
        case ${dato[${m}]} in
        [0-9]);;
         *) vale="no";;
        esac
     fi
   done
   IFS=" " 
   if [ ${vale} == "si" ] #si todos eran dígitos..
   then
     ############################### comprobar que está entre 5 y 12
     if [ $1 -ge 5 ] && [ $1 -le 12 ] # Dedicado a Mario
     then
        ############################ calcular el factorial
        cadena="$1!="
        let res=1
        let multiplicador=$1
        cadena="$1!="
        while [ ${multiplicador} -gt 1 ]
        do
          res=`expr ${res} \* ${multiplicador}`
          #################################################### preparando cadena de salida
          if [ ${multiplicador} -gt 2 ]
          then
          cadena=${cadena}${multiplicador}"x"
          else
          cadena=${cadena}${multiplicador}"="${res}
          fi
          ####################################################
          multiplicador=`expr ${multiplicador} - 1`
        done
        echo ${cadena}

     else
        echo "ERROR! Se esperaba una cifra entre 5 y 12"
     fi
   else
     echo "ERROR! Se esperaba una cifra entre 5 y 12"
   fi
fi

