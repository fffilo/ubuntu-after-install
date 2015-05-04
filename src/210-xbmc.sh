#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### XBMC #######################"
echo "################################"
dpkg -l kodi >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:team-xbmc/ppa
	sudo apt-get update
	sudo apt-get install -y kodi
fi
