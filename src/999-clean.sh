#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Clean Up ###################"
echo "################################"
sudo apt-get -f install
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
