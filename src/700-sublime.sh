#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Sublime Text Editor ########"
echo "################################"
dpkg -l sublime-text-installer >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	# add repository and install
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install -y sublime-text-installer

	# mkdir
	mkdir -p ~/.config/sublime-text-3/Packages/User
	mkdir -p ~/.config/sublime-text-3/Installed\ Packages/

	# User Preferences
	wget -O ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings https://raw.githubusercontent.com/fffilo/config/master/home/fffilo/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

	# Package Control
	wget -O ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package

	# Theme Afterglow
	wget -O /tmp/afterglow-theme.zip https://github.com/YabataDesign/afterglow-theme/archive/master.zip
	unzip /tmp/afterglow-theme.zip -d /tmp
	(cd /tmp/afterglow-theme-master/; zip -r ~/.config/sublime-text-3/Installed\ Packages/Theme\ \-\ Afterglow.sublime-package *)
	rm /tmp/afterglow-theme.zip
	rm -rf /tmp/afterglow-theme-master

	# SyncedSideBar
	wget -O /tmp/SyncedSideBar.zip https://github.com/sobstel/SyncedSideBar/archive/master.zip
	unzip /tmp/SyncedSideBar.zip -d /tmp
	(cd /tmp/SyncedSideBar-master/; zip -r ~/.config/sublime-text-3/Installed\ Packages/SyncedSideBar.sublime-package *)
	rm /tmp/SyncedSideBar.zip
	rm -rf /tmp/SyncedSideBar-master

	# SideBarEnhancements

	# Alignment

	# Emmet
	wget -O /tmp/Emmet.zip https://github.com/sergeche/emmet-sublime/archive/master.zip
	unzip /tmp/Emmet.zip -d /tmp
	(cd /tmp/emmet-sublime-master/; zip -r ~/.config/sublime-text-3/Installed\ Packages/Emmet.sublime-package *)
	rm /tmp/Emmet.zip
	rm -rf /tmp/emmet-sublime-master

	# Sublime Linter
	wget -O /tmp/SublimeLinter3.zip https://github.com/SublimeLinter/SublimeLinter3/archive/master.zip
	unzip /tmp/SublimeLinter3.zip -d /tmp
	mv /tmp/SublimeLinter3-master ~/.config/sublime-text-3/Packages/SublimeLinter
	rm /tmp/SublimeLinter3.zip

	# DocBlockr
	wget -O /tmp/DocBlockr.zip https://github.com/spadgos/sublime-jsdocs/archive/master.zip
	unzip /tmp/DocBlockr.zip -d /tmp
	(cd /tmp/sublime-jsdocs-master/; zip -r ~/.config/sublime-text-3/Installed\ Packages/DocBlockr.sublime-package *)
	rm /tmp/DocBlockr.zip
	rm -rf /tmp/sublime-jsdocs-master

	# Open Terminal
	git clone https://github.com/fffilo/OpenTerminal.git ~/.config/sublime-text-3/Packages/OpenTerminal
fi
