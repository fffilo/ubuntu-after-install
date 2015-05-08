#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Timezone ###################"
echo "################################"
sudo timedatectl set-timezone Europe/Zagreb
gsettings set com.canonical.indicator.datetime show-date true
gsettings set com.canonical.indicator.datetime show-day true
gsettings set com.canonical.indicator.datetime show-seconds true
gsettings set com.canonical.indicator.datetime show-week-numbers true
gsettings set com.canonical.indicator.datetime show-year true

echo ""
echo ""
echo "################################"
echo "### Aliases ####################"
echo "################################"
echo "" >> ~/.bashrc
echo "# https://github.com/fffilo/ubuntu-after-install/blob/master/src/020-init.sh" >> ~/.bashrc
echo "alias la='ls -lah'" >> ~/.bashrc
echo "alias cdd='cd -'" >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias ...='cd ../..'" >> ~/.bashrc
echo "alias ....='cd ../../..'" >> ~/.bashrc
echo "alias .....='cd ../../../..'" >> ~/.bashrc
echo "alias ......='cd ../../../../..'" >> ~/.bashrc
