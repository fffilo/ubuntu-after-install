#!/bin/bash

echo "################################"
echo "### Steam ######################"
echo "################################"
#sudo debconf-set-selections <<< "steam steam/purge note"
#sudo debconf-set-selections <<< "steam steam/question select I\ AGREE"
#sudo debconf-set-selections <<< "steam steam/licence note"
sudo apt-get install -y steam
