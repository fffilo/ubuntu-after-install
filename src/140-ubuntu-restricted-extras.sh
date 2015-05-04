#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Ubuntu restricted extras ###"
echo "################################"
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt-get install -y ubuntu-restricted-extras
