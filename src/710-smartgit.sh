#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### SmartGit ###################"
echo "################################"
dpkg -l smartgit >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:eugenesan/ppa
	sudo apt-get update
	sudo apt-get install -y smartgit
fi
