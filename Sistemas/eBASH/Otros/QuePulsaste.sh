#! /bin/bash
#############################################################################
# Saber si la tecla pulsada es n�mero, letra o caracter especial            #
#############################################################################
clear
read -n 1 -p "Pulsa una tecla" tecla
echo
case $tecla in
[a-z,A-Z]) echo "Has pulsado una letra" ;;
[0-9]) echo "Has pulsado un n�mero" ;;
*) echo "Has pulsado un caracter especial" ;;
esac
