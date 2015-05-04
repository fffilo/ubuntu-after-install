#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Ubuntu restricted extras ###"
echo "################################"
#sudo debconf-set-selections <<< "???? ????/???? ????"
sudo apt-get install -y ubuntu-restricted-extras
