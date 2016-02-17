#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### GitEye #####################"
echo "################################"
dpkg -l giteye >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	#sudo mkdir -p /usr/share/GitEye/
	#sudo wget -O /tmp/GitEye.zip https://downloads-guests.open.collab.net/files/documents/61/12536/GitEye-1.12.0-linux.x86_64.zip
	sudo unzip /tmp/GitEye.zip -d /usr/share/GitEye/
	sudo rm /tmp/GitEye.zip
	sudo ln -s /usr/share/GitEye/GitEye /usr/bin/giteye
	echo "[Desktop Entry]" > ~/.local/share/applications/giteye.desktop
	echo "Type=Application" >> ~/.local/share/applications/giteye.desktop
	echo "Name=GitEye" >> ~/.local/share/applications/giteye.desktop
	echo "Comment=Git GUI" >> ~/.local/share/applications/giteye.desktop
	echo "Exec=/usr/bin/giteye %F" >> ~/.local/share/applications/giteye.desktop
	echo "Icon=/usr/share/GitEye/icon.xpm" >> ~/.local/share/applications/giteye.desktop
	echo "Categories=Development;Utility;" >> ~/.local/share/applications/giteye.desktop
	sudo mv ~/.local/share/applications/giteye.desktop /usr/share/applications/giteye.desktop
fi
