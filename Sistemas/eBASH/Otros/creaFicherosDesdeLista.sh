#! /bin/bash
if [ ! -d Pruebas ]
then
mkdir Pruebas # Si no existía la carpeta Pruebas, la crea 
else
rm  Pruebas/* # Si ya existía borro los ficheros para empezar de cero 
fi
 
for fichero in `cat Lista`
do
  echo "Trabajando con el fichero ${fichero}"
  for linea in `seq 0 1 99`
  do
  if [ ${linea} -lt 10 ]
  then
   l="0${linea}"
  else
   l=${linea}
  fi
  echo "`date` ${l} ">>Pruebas/${fichero}
  done
done

