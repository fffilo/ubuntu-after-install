#!/bin/bash

echo "################################"
echo "### MouseSensitivity Indicator #"
echo "################################"
if [ ! -d /usr/share/mouse-sensitivity ]; then
	sudo git clone https://github.com/fffilo/mouse-sensitivity.git
	sudo mv mouse-sensitivity /usr/share
	sudo sh -c "echo \#\!/bin/bash > /usr/bin/mouse-sensitivity"
	sudo sh -c "echo '/usr/bin/python /usr/share/mouse-sensitivity/src/mouse.py >/dev/null 2>&1 &' >> /usr/bin/mouse-sensitivity"
	sudo chmod +x /usr/bin/mouse-sensitivity
fi
if [ ! -f ~/.config/autostart/mouse-sensitivity.desktop ]; then
	echo "[Desktop Entry]" > ~/.config/autostart/mouse-sensitivity.desktop
	echo "Type=Application" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Exec=/usr/bin/python /usr/share/mouse-sensitivity/src/mouse.py" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Hidden=false" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "NoDisplay=false" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Name[en_US]=SystemLoadIndicator" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Name=SystemLoadIndicator" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Comment[en_US]=" >> ~/.config/autostart/mouse-sensitivity.desktop
	echo "Comment=" >> ~/.config/autostart/mouse-sensitivity.desktop
fi
