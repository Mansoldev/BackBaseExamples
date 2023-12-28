#! /bin/bash
#Menu con las opciones de carpetas
oPS3=$PS3
PS3="Onde me cambio "

select car in `find . -maxdepth 1 -type d|sed 's/.\///'|sed '1d'`
do
  cd $car
  break
done
