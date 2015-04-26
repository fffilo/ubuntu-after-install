#!/bin/bash

clear
echo "Clean Up"
sudo apt-get -f install
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
