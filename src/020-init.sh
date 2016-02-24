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
echo "" >> ~/.bashrc
echo "# https://github.com/fffilo/ubuntu-after-install/blob/master/src/020-init.sh" >> ~/.bashrc
echo "alias xrandr-edp='echo \"eDP1 connected primary 1600x900+0+0 60Hz\";echo \"HDMI1 disconnected\";xrandr --output eDP1 --auto --primary --pos 0x0 --rate 60 --output HDMI1 --off'" >> ~/.bashrc
echo "alias xrandr-hdmi='echo \"eDP1 disconnected\";echo \"HDMI1 connected primary 1920x1080+0+0 60Hz\";xrandr --output HDMI1 --auto --primary --pos 0x0 --rate 60 --output eDP1 --off'" >> ~/.bashrc
echo "alias xrandr-dual=' echo \"eDP1 connected 1600x900+1920+0 60Hz\";echo \"HDMI1 connected primary 1920x1080+0+0 60Hz\";xrandr --output HDMI1 --auto --primary --pos 0x0 --rate 60 --left-of eDP1 --output eDP1 --auto --pos 1920x0 --rate 60'" >> ~/.bashrc
