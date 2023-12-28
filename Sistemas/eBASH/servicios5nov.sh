#EJ: Presenta utilizando un while, todos squellos servicios que están activos. (service –status-all)
#servicios con + activos, - inactivos. ? no se
#! /bin/bash
service --status-all 2>&1|while read c1 es c2 servicio
do
  if [ $es == "+" ]
  then
    echo `tput bold`$es`tput init`" "$servicio
  fi
done


