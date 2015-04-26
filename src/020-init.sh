#!/bin/bash

clear
echo "################################"
echo "### Git ########################"
echo "################################"
sudo apt-get install -y git git-core 
git config --global alias.stat "status"
git config --global alias.hist "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

clear
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
