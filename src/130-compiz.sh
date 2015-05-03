#!/bin/bash

clear
echo "################################"
echo "### Compiz #####################"
echo "################################"
sudo apt-get install -y compiz compizconfig-settings-manager compiz-plugins dconf-editor
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 4
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 1
gsettings set com.canonical.Unity.Lenses remote-content-search none
# disable desktop-wall
# enable desktop-cube
# enable rotate-cube
# disable snapping-windows
# enable wobbly-windows
