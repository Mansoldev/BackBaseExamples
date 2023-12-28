#!/bin/bash
clear
echo "Demo de funcionamiento de parámetros"
echo "*** Todos los parámetros presentados usando \$@ ***"
echo $@
echo "*** Todos los parámetros presentados usando \$* ***"
echo $*
sleep 3
#### Coloco IFS con | ####
IFS='|'
 
echo "Demo de funcionamiento de parámetros"
 
echo "***  Todos los parámetros presentados usando \$@ ***"
echo "$@"        #*** he añadido dobles comillas ***#
 
echo "*** Todos los parámetros presentados usando \$* ***"
echo "$*"        #*** con dobles comillas ***#
