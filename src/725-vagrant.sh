#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Vagrant ####################"
echo "################################"

# get latest version
path="https://dl.bintray.com/mitchellh/vagrant"
html=$(wget ${path} -q -O -)
file=$(echo "$html" | grep -Po "(/|\"|#)vagrant_.*?_x86_64\.deb\"" | tail -n 1 | tail -c +2 | head -c -2)
if [[ $file == "" ]]; then
	echo "E: unable to determine download url of lates screencloud version."
	echo -e "$html"
	exit 1
fi

# download and install
sudo wget ${path}/${file}
sudo gdebi -n ${file}
sudo rm ${file}
