#! /bin/bash
################################################################################################
# Acepta parámetros. Una frase, por ejemplo
# Comprueba la existencia de, al menos, un parámetro.
# Presenta el número de parámetros y todos ellos separados de +
################################################################################################
clear
if [ $# -eq 0 ]
then
   echo "ERROR! Se eperaban valores"
else
   echo "Has escrito $# valores"
   IFS='+'
   echo "$*"
fi
sleep 3
clear
