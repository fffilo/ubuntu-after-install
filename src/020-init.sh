#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Timezone ###################"
echo "################################"
sudo timedatectl set-timezone Europe/Zagreb

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
