#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Google Chrome ##############"
echo "################################"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome*.deb
sudo rm google-chrome*.deb
