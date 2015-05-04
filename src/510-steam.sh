#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Steam ######################"
echo "################################"
#sudo debconf-set-selections <<< "steam steam/purge note"
#sudo debconf-set-selections <<< "steam steam/question select I\ AGREE"
#sudo debconf-set-selections <<< "steam steam/licence note"
#sudo add-apt-repository -y ppa:thor27-gmail/steam-desktop
#sudo apt-get update
#sudo apt-get install -y steam steam-login
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo apt-get install -y libgl1-mesa-glx-lts-utopic:i386
sudo dpkg -i steam.deb
sudo rm steam.deb
