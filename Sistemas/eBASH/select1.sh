#! /bin/bash
clear
oPS3=$PS3
PS3="Escoge una opcion "
tput bold
select v in listar salir continuar
do
  echo "Has escogido la opción número: $REPLY que corresponde a $v"
  sleep 1
  clear
  case $REPLY in
  1)find -maxdepth 1 -type d|sed 's/.\///'|sed '1d';sleep 2;break;;
  2)break;;
  3)sigue="si";break;;
  esac
done
if( "$sigue" == "si" )
then
  . select1.sh
fi
tput init

