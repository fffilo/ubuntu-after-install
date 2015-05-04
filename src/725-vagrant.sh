#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Vagrant ####################"
echo "################################"
# get latest version
sudo wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo apt-get install -f -y
sudo dpkg -i vagrant_1.7.2_x86_64.deb
sudo rm vagrant_1.7.2_x86_64.deb
