#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Google Chrome ##############"
echo "################################"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo dpkg -i google-chrome*.deb
sudo rm google-chrome*.deb
