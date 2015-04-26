#!/bin/bash

clear
echo "################################"
echo "### Skype ######################"
echo "################################"
#sudo apt-get remove --purge -y skype
#sudo apt-get install -f -y
sudo wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo dpkg -i skype-ubuntu-*.deb
sudo rm skype-ubuntu-*.deb
sudo apt-get install -y sni-qt:i386
