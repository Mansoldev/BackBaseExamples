#!/bin/bash

#recibe como parámetros --email=ZZZ --fichero=YYY

#procesamos los parámetros
while [ $1 ]
do
    param=${1%=*} #obtenemos el parámetro 
    valor=${1#*=} #obtenemos el valor del parámetro
    if [ $param = "--email" ]
    then
       email=$valor
    fi

    if [ $param = "--fichero" ]; then
       fichero=$valor
    fi

    shift #rotamos
done

if [ -z $email ]; then
    email="ilopezmon@gmail.com"
fi

if [ -z $fichero ]; then
   fichero="exportado.csv"
fi

echo "El log se enviará a $email"
echo $fichero
>$fichero
echo "usuario;host;privilegio_select">>$fichero
mysql -u root -pasir2 -Bse " select concat(user,';',host,';',select_priv) from mysql.user where select_priv='Y';" >>$fichero
#alternativa:
#mysql -u root -pasir2 -s <query.sql >>$fichero
uuencode $fichero $fichero |mail -s "exportación de usuarios" $email

