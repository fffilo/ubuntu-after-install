#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Steam ######################"
echo "################################"
sudo wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo gdebi -n steam.deb
sudo rm steam.deb
