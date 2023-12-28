#! /bin/bash
#############################################################################
# Pide al usuario un nombre de animal y dice cuantas patas tiene                                                  #
#############################################################################
clear
echo -n "Escribe un nombre de animal "
read ANIMAL
echo -n "${ANIMAL} tiene "
case ${ANIMAL} in
  caballo | perro | vaca | político | gato | conejo | cerdo ) echo -n "cuatro ";;
  hombre | canguro | pollo | pájaro ) echo -n "dos ";;
  *) echo -n " desconozco el número de";;
esac
echo "patas."

