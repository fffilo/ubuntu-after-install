#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### ScreenCloud ################"
echo "################################"
# get latest version
sudo wget http://download.opensuse.org/repositories/home:/olav-st/xUbuntu_14.04/amd64/screencloud_1.2.0-1_amd64.deb
sudo gdebi -n screencloud_1.2.0-1_amd64.deb
sudo rm screencloud_1.2.0-1_amd64.deb
/usr/bin/screencloud >/dev/null 2>&1 &
