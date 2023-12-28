#! /bin/bash

archivo=`find $HOME/backups -type f -name "*~"`
for n in $archivo
do
  mv $n $HOME/rebackups
done
