#! /bin/bash
if [ $# -eq 1 ]
then
 $1 &>/dev/null
 if [ $? -eq 127 ]
 then
   echo "$1 No es un comando linux"
 else
   let c=0
   c=`history|grep -c $1`
   if [ ${c} -gt 0 ]
   then
    echo "Has usado el comando $1 ${c} veces"
    echo "Creado el fichero repaso$1"
    HISTTIMEFORMAT=" %D %T "
    history|grep $1|tr -s " " "+"|cut -d "+" -f 3-|tr "+" " ">repaso$1    
   else
    echo "No has usado nunca el comando $1"
   fi
 fi
else
 echo "ERROR! Se esperaba un parámetro con el nombre de un comando"
fi
