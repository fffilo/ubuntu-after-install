#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Classic Menu Indicator #####"
echo "################################"
dpkg -l classicmenu-indicator >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:diesch/testing
	sudo apt-get update
	sudo apt-get install -y classicmenu-indicator
	/usr/bin/classicmenu-indicator >/dev/null 2>&1 &
fi
