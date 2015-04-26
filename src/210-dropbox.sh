#!/bin/bash

echo "################################"
echo "### DropBox ####################"
echo "################################"
# get latest version
sudo wget https://linux.dropbox.com/packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i dropbox_2015.02.12_amd64.deb
sudo rm dropbox_2015.02.12_amd64.deb
# /usr/bin/dropbox start -i
