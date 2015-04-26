#!/bin/bash

echo "################################"
echo "### VirtualBox #################"
echo "################################"
# get latest version
sudo wget http://download.virtualbox.org/virtualbox/4.3.26/virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb
sudo dpkg -i virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb
sudo rm virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb
