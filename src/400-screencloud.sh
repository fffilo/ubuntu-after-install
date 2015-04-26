echo "################################"
echo "### ScreenCloud ################"
echo "################################"
# get latest version
sudo wget http://download.opensuse.org/repositories/home:/olav-st/xUbuntu_14.04/amd64/screencloud_1.2.0-1_amd64.deb
sudo apt-get install -y libqtmultimediakit1 libqxt-core0 libqxt-gui0 libquazip0
sudo dpkg -i screencloud_1.2.0-1_amd64.deb
sudo rm screencloud_1.2.0-1_amd64.deb
