#!/bin/bash

echo "################################"
echo "### System Load Indicator ######"
echo "################################"
dpkg -l indicator-multiload >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
	sudo apt-get update
	sudo apt-get install indicator-multiload
fi
if [ ! -f ~/.config/autostart/indicator-multiload.desktop ]; then
	echo "[Desktop Entry]" > ~/.config/autostart/indicator-multiload.desktop
	echo "Type=Application" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Exec=/usr/bin/indicator-multiload" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Hidden=false" >> ~/.config/autostart/indicator-multiload.desktop
	echo "NoDisplay=false" >> ~/.config/autostart/indicator-multiload.desktop
	echo "X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Name[en_US]=SystemLoadIndicator" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Name=SystemLoadIndicator" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Comment[en_US]=" >> ~/.config/autostart/indicator-multiload.desktop
	echo "Comment=" >> ~/.config/autostart/indicator-multiload.desktop
fi
