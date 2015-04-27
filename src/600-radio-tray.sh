#!/bin/bash

echo "################################"
echo "### Radio Tray #################"
echo "################################"
sudo apt-get install -y radiotray
if [ ! -f ~/.config/autostart/radiotray.desktop ]; then
	echo "[Desktop Entry]" > ~/.config/autostart/radiotray.desktop
	echo "Type=Application" >> ~/.config/autostart/radiotray.desktop
	echo "Exec=/usr/bin/python /usr/bin/radiotray" >> ~/.config/autostart/radiotray.desktop
	echo "Hidden=false" >> ~/.config/autostart/radiotray.desktop
	echo "NoDisplay=false" >> ~/.config/autostart/radiotray.desktop
	echo "X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/radiotray.desktop
	echo "Name[en_US]=SystemLoadIndicator" >> ~/.config/autostart/radiotray.desktop
	echo "Name=SystemLoadIndicator" >> ~/.config/autostart/radiotray.desktop
	echo "Comment[en_US]=" >> ~/.config/autostart/radiotray.desktop
	echo "Comment=" >> ~/.config/autostart/radiotray.desktop
fi
