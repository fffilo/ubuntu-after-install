#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### DropBox ####################"
echo "################################"

# get latest version
path="https://linux.dropbox.com/packages/ubuntu"
html=$(wget ${path} -q -O -)
file=$(echo "$html" | grep -Po "(/|\")dropbox_.*?_amd64\.deb\"" | tail -n 1 | tail -c +2 | head -c -2)
if [[ $file == "" ]]; then
	echo "E: unable to determine download url of lates screencloud version."
	exit 1
fi

# download, install and start
sudo wget ${path}/${file}
sudo gdebi -n ${file}
sudo rm ${file}
# /usr/bin/dropbox start -i
