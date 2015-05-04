#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Git ########################"
echo "################################"
sudo apt-get install -y git git-core
# git config --global user.name "John Doe"
# git config --global user.email johndoe@example.com
git config --global alias.stat "status"
git config --global alias.hist "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git clone https://github.com/fffilo/gitsound.git /tmp/gitsound
chmod +x /tmp/gitsound/gitsound.sh
yes | /tmp/gitsound/gitsound.sh
rm /tmp/gitsound -rf

