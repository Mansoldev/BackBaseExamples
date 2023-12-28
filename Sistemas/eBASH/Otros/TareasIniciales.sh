#! /bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wspanish myspell-es libreoffice-help-es libreoffice-l10n-es firefox-locale-es
sudo apt-get purge firefox-locale-en hunspell-en-us libreoffice-help-en-us language-pack-en-base language-pack-gnome-en-base
sudo apt-get install localepurge
sudo apt-get purge localepurge
sudo apt-get install arj libuu0 mpack p7zip-full p7zip-rar rar sharutils unace uudeview
sudo apt-get install compizconfig-settings-manager compiz-plugins-extra synaptic
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update; sudo apt-get install ubuntu-tweak
sudo apt-get install unity-tweak-tool
sudo apt-get install gnome-tweak-tool






