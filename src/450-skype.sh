#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Skype ######################"
echo "################################"
#sudo apt-get remove --purge -y skype
sudo wget --content-disposition http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo apt-get install -f -y
sudo dpkg -i skype-ubuntu-*.deb
sudo rm skype-ubuntu-*.deb
sudo apt-get install -y sni-qt:i386
