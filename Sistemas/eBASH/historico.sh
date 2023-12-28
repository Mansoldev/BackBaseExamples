# analiza el .bash_history de todos los usuarios y mete histsize y histtime
#! /bin/bash

# He cogido los usuarios desde el home, porque aunque no sea una forma muy elegante
# con los usuarios que no tengan directorio no podremos analizar su .bash_history

# Lanzar como root, sino no te deja manipular los .bashrc
ruta=`pwd`
user=`whoami`
for usuario in `ls -A /home|tr -s " " " "|cut -d " " -f 9`
do
  cd /home/$usuario
  sudo sed -i 's/HISTSIZE.*/HISTSIZE=5000/g' .bashrc
  sudo echo "HISTTIMEFORMAT=\"%D %T \"/g'" >>.bashrc
done
cd $ruta
su $user
