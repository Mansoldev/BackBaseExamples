#################################################################################
# Script que programado a las 2:18, movera los ficheros backups desde home a
# un directorio llamado backups
#################################################################################
#! /bin/bash

if [ ! -d $HOME/backups ]
then
  mkdir $HOME/backups
fi

archivo=`find $HOME -type f -name "*~"`
for n in $archivo
do
  mv $n $HOME/backups
done
