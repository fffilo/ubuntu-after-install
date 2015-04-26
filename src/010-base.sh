#!/bin/bash

clear
echo "################################"
echo "### Base install ###############"
echo "################################"
#sudo apt-get update
sudo apt-get install -y build-essential software-properties-common python-software-properties python-dev python-pip git git-core openjdk-7-jdk curl
git config --global alias.stat "status"
git config --global alias.hist "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
