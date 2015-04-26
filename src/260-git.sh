#!/bin/bash

clear
echo "################################"
echo "### Git ########################"
echo "################################"
sudo apt-get install -y git git-core 
git config --global alias.stat "status"
git config --global alias.hist "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
chmod +x gitsound/gitsound.sh
yes | ./gitsound/gitsound.sh
rm gitsound -rf
