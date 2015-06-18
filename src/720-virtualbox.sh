#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### VirtualBox #################"
echo "################################"

# get latest version
path="http://www.oracle.com/technetwork/server-storage/virtualbox/downloads"
html=$(wget ${path} --max-redirect=5 -q -O -)
file=$(echo "$html" | grep -Po "href=\".*?virtualbox-.*?~Ubuntu~raring_amd64\.deb\"" | tail -n 1 | tail -c +7 | head -c -2)
if [[ $file == "" ]]; then
	echo "E: unable to determine download url of lates screencloud version."
	exit 1
fi

# fix path/file
path=$(dirname $file)
file=$(basename $file)

# download and install
sudo wget ${path}/${file}
sudo gdebi -n ${file}
sudo rm ${file}
