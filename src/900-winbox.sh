#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### WinBox #####################"
echo "################################"
sudo mkdir -p /usr/share/winbox/
sudo wget -O /usr/share/winbox/winbox.exe http://download2.mikrotik.com/routeros/winbox/3.0/winbox.exe
sudo wget -O /usr/share/winbox/winbox.png http://images.kz.prom.st/2933696_w640_h640_winboxicon.png
echo '#!/bin/bash' | sudo tee /usr/bin/winbox >/dev/null
echo "" | sudo tee -a /usr/bin/winbox >/dev/null
echo "/usr/bin/wine /usr/share/winbox/winbox.exe >/dev/null 2>&1 &" | sudo tee -a /usr/bin/winbox >/dev/null
sudo chmod +x /usr/bin/winbox
echo "[Desktop Entry]" | sudo tee /usr/share/applications/winbox.desktop >/dev/null
echo "Name=WinBox" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
echo "Comment=Configuration tool for RouterOS" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
echo "Exec=/usr/bin/winbox" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
echo "Icon=/usr/share/winbox/winbox.png" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
echo "Type=Application" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
echo "Categories=Network;" | sudo tee -a /usr/share/applications/winbox.desktop >/dev/null
