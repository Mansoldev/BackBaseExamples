#! /bin/bash
if [ $# -eq 1 ] #Comprobar si hay un parámetro
then
   if [ -d $1 ] #Comprobar si el valor es el nombre de una carpeta
   then
    nmayor="ASIR-1-2014"
    let pmayor=0
    nombres=(`ls -lah $1|grep -v -e "^drw" -e "^to"|tr -s " " "*"|cut -d "*" -f 9`)
    tama=(`ls -la $1|grep -v -e "^drw" -e "^to"|tr -s " " "*"|cut -d "*" -f 5`)
    for m in ${!nombres[*]}
    do
     if [ ${tama[${m}]} -gt ${pmayor} ]
     then
       nmayor=${nombres[${m}]}
       pmayor=${tama[${m}]}
     fi 
    done
    if [ ${nmayor} == "ASIR-1-2014" ]
    then
      echo "En la carpeta $1 no hay ficheros o están vacíos"
    else
      echo "El fichero con más peso encontrado en $1"
      echo ${nmayor}" con ${pmayor} bytes" 
    fi
   else
    echo "Error! Se esperaba un nombre de carpeta"
   fi
else
 echo "Error en el número de parámetros"
fi
