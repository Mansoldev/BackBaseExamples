# Pide un nombre de usuario y genera un pdf con su historico actual
#! /bin/bash
ruta=`pwd`

read -p "Nombre de usuario: " usuario
echo "historico de $usuario " >historico.txt
cd /home/$usuario
cp .bash_history /home/asir2user2014/historico.txt
cd $ruta
cat historico.txt|ps2pdf - >historico.pdf
