#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Ubuntu Tweak ###############"
echo "################################"
dpkg -l ubuntu-tweak >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:tualatrix/ppa
	sudo apt-get update
	sudo apt-get install -y ubuntu-tweak
fi
