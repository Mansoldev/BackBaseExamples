#! /bin/bash
#############################################################################
# Saber si la tecla pulsada es número, letra o carácter especial                                                        #
#############################################################################
clear
read -n 1 -p "Pulsa una tecla " tecla
echo
case ${tecla} in
[a-z,A-Z]) echo "Has pulsado una letra" ;;
[0-9]) echo "Has pulsado un número" ;;
*) echo "Has pulsado un caracter especial" ;;
esac

