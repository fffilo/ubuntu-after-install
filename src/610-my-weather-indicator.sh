#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### My Weather Indicator #######"
echo "################################"
dpkg -l my-weather-indicator >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:atareao/atareao
	sudo apt-get update
	sudo apt-get install -y my-weather-indicator
fi
if [ ! -f ~/.config/autostart/my-weather-indicator.desktop ]; then
	mkdir -p ~/.config/autostart/
	echo "[Desktop Entry]" > ~/.config/autostart/my-weather-indicator.desktop
	echo "Type=Application" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Exec=/usr/bin/python3 /opt/extras.ubuntu.com/my-weather-indicator/bin/my-weather-indicator" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Hidden=false" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "NoDisplay=false" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Name[en_US]=MyWeatherIndicator" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Name=MyWeatherIndicator" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Comment[en_US]=" >> ~/.config/autostart/my-weather-indicator.desktop
	echo "Comment=" >> ~/.config/autostart/my-weather-indicator.desktop
	/usr/bin/python3 /opt/extras.ubuntu.com/my-weather-indicator/bin/my-weather-indicator >/dev/null 2>&1 &
fi
