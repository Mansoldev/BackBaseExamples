#!/bin/bash
sudo apt-get -y update;
echo "Se ha completado el paso 1, update";
sudo apt-get -y upgrade;
echo "Se ha completado el paso 2, upgrade";
sleep 5000;
sudo apt-get -y install wspanish myspell-es libreoffice-help-es libreoffice-l10n-es firefox-locale-es;
echo "Se ha completado el paso 3, paquetes en español";
sudo apt-get -y purge firefox-locale-en hunspell-en-us libreoffice-help-en-us language-pack-en-base language-pack-gnome-en-base;
echo "Se ha completado el paso 4, purgar paquetes ingles";
sleep 5000;
sudo apt-get -y install localepurge;
echo "Se ha completado el paso 5, instalar localpurge";
sudo apt-get -y purge localepurge;
echo "Se ha completado el paso 6, purgar";
sleep 5000;
sudo apt-get -y install arj libuu0 mpack p7zip-full p7zip-rar rar sharutils unace uudeview;
echo "Se ha completado el paso 7, servicios de compresion";
sudo apt-get -y install compizconfig-settings-manager compiz-plugins-extra synaptic;
echo "Se ha completado el paso 8, instalar otros";
sleep 5000;
sudo add-apt-repository ppa:tualatrix/ppa;
echo "Se ha completado el paso 9, actualizar repositorios";
sudo apt-get update; sudo apt-get install -y ubuntu-tweak;
echo "Se ha completado el paso 10, tweak";
sleep 5000;
sudo apt-get -y install unity-tweak-toold; sudo apt-get -y install gnome-tweak-tool;
echo "Se ha completado el paso 11, otro tweak";
pause
