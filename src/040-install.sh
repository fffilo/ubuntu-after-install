#!/bin/bash

clear
echo "################################"
echo "### Ubuntu Tweak ###############"
echo "################################"
sudo add-apt-repository -y ppa:tualatrix/ppa 
sudo apt-get update
sudo apt-get install -y ubuntu-tweak

clear
echo "################################"
echo "### Nautilus Open Terminal #####"
echo "################################"
sudo apt-get install -y nautilus-open-terminal

clear
echo "################################"
echo "### Compiz #####################"
echo "################################"
sudo apt-get install -y compiz compizconfig-settings-manager compiz-plugins dconf-editor
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 4
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 1
gsettings set com.canonical.Unity.Lenses remote-content-search none
# disable desktop-wall
# enable desktop-cube
# enable rotate-cube
# disable snapping-windows
# enable wobbly-windows

clear
echo "################################"
echo "### Ubuntu restricted extras ###"
echo "################################"
sudo debconf-set-selections <<< "???? ????/???? ????"
sudo apt-get install -y ubuntu-restricted-extras

clear
echo "################################"
echo "### VLC ########################"
echo "################################"
sudo apt-get install -y vlc

clear
echo "################################"
echo "### XBMC #######################"
echo "################################"
sudo add-apt-repository -y ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install -y kodi

clear
echo "################################"
echo "### Cheese #####################"
echo "################################"
sudo apt-get install -y cheese

clear
echo "################################"
echo "### Gimp #######################"
echo "################################"
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

clear
echo "################################"
echo "### Inkscape ###################"
echo "################################"
sudo apt-get install -y inkscape

clear
echo "################################"
echo "### Skype ######################"
echo "################################"
sudo apt-get remove --purge -y skype
sudo apt-get install -f -y
sudo wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo dpkg -i skype-ubuntu-*.deb
sudo rm skype-ubuntu-*.deb
sudo apt-get install -y sni-qt:i386

clear
echo "################################"
echo "### FileZilla ##################"
echo "################################"
sudo apt-get install -y filezilla

echo "################################"
echo "### DropBox ####################"
echo "################################"
# get latest version
sudo wget https://linux.dropbox.com/packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i dropbox_2015.02.12_amd64.deb
sudo rm dropbox_2015.02.12_amd64.deb
# /usr/bin/dropbox start -i

echo "################################"
echo "### VirtualBox #################"
echo "################################"
# get latest version
sudo wget http://download.virtualbox.org/virtualbox/4.3.26/virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb
sudo dpkg -i virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb
sudo rm virtualbox-4.3_4.3.26-98988~Ubuntu~raring_amd64.deb

echo "################################"
echo "### Vagrant ####################"
echo "################################"
# get latest version
sudo wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb
sudo rm vagrant_1.7.2_x86_64.deb

echo "################################"
echo "### Sublime Text Editor ########"
echo "################################"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
wget -O ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package

echo "################################"
echo "### Google Chrome ##############"
echo "################################"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo rm google-chrome*.deb

clear
echo "################################"
echo "### Git ########################"
echo "################################"
sudo apt-get install -y git git-core 
git config --global alias.stat "status"
git config --global alias.hist "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

echo "################################"
echo "### SmartGit ###################"
echo "################################"
sudo add-apt-repository -y ppa:eugenesan/ppa
sudo apt-get update
sudo apt-get install -y smartgit

echo "################################"
echo "### Apache #####################"
echo "################################"
apache2 -v > /dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo apt-get install -y apache2
	sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.default
	echo "ServerName localhost" | sudo tee -a /etc/apache2/conf-available/fqdn.conf >/dev/null
	sudo a2enconf fqdn
	sudo a2enmod rewrite
	sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.default
	echo "<VirtualHost *:80>" | sudo tee /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "    DocumentRoot /storage/dev/www" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "    ServerAdmin webmaster@localhost" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "    <Directory /storage/dev/www>" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "        Options Indexes FollowSymLinks MultiViews" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "        AllowOverride All" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "        Allow From All" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "        Require all granted" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "    </Directory>" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	echo "</VirtualHost>" | sudo tee -a /etc/apache2/sites-available/000-default.conf >/dev/null
	sudo service apache2 restart
fi

echo "################################"
echo "### PHP ########################"
echo "################################"
php -v > /dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo add-apt-repository -y ppa:ondrej/php5-5.6
	sudo apt-get update
	sudo apt-get install -y php5 libapache2-mod-php5 php-pear php5-cli php5-curl php5-mcrypt php5-gd php5-xdebug php5-gmp php5-mysql php5-pgsql php5-sqlite
	sudo cp /etc/php5/cli/php.ini /etc/php5/cli/php.ini.default >/dev/null
	sudo sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini
	sudo php5enmod mcrypt
	cat /etc/php5/cli/php.ini | sed -r "s|;?date.timezone =.*|date.timezone = Europe/Zagreb|" | sudo tee /etc/php5/cli/php.ini >/dev/null
	echo "xdebug.scream=0" | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
	echo "xdebug.cli_color=1" | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
	echo "xdebug.show_local_vars=1" | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
	echo "xdebug.max_nesting_level=300" | sudo tee -a /etc/php5/mods-available/xdebug.ini >/dev/null
	sudo cp /etc/php5/apache2/php.ini /etc/php5/apache2/php.ini.default >/dev/null
	cat /etc/php5/apache2/php.ini | sed -r "s|;?date.timezone =.*|date.timezone = Europe/Zagreb|" | sudo tee /etc/php5/apache2/php.ini >/dev/null
	cat /etc/php5/apache2/php.ini | sed -r "s|;?upload_max_filesize =.*|upload_max_filesize = 64M|" | sudo tee /etc/php5/apache2/php.ini >/dev/null
	cat /etc/php5/apache2/php.ini | sed -r "s|;?post_max_size =.*|post_max_size = 64M|" | sudo tee /etc/php5/apache2/php.ini >/dev/null
	cat /etc/php5/apache2/php.ini | sed -r "s|;?max_execution_time =.*|max_execution_time = 90|" | sudo tee /etc/php5/apache2/php.ini >/dev/null
	sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
	sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
	sudo service apache2 restart
fi

echo "################################"
echo "### Composer ###################"
echo "################################"
sudo sh -c "curl -sS https://getcomposer.org/installer | php"
sudo mv composer.phar /usr/local/bin/composer

echo "################################"
echo "### MySql ######################"
echo "################################"
mysql --version > /dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
	sudo apt-get install -y mysql-server
	sudo cp /etc/mysql/my.cnf /etc/mysql/my.cnf.default
	sudo sed -ri 's/key_buffer(\s.*)/#key_buffer\1\nkey_buffer_size\1/g' /etc/mysql/my.cnf
	# sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
	# mysqladmin --user=root --password=root password 'newrootpassword'
	sudo service mysql restart
fi

echo "################################"
echo "### PhpMyAdmin #################"
echo "################################"
if [ ! -d "/usr/share/phpmyadmin/" ]; then
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
	sudo apt-get install -y phpmyadmin
	sudo service apache2 restart
fi

echo "################################"
echo "### MemCached ##################"
echo "################################"
which memcached
if [[ $? -eq 1 ]]; then
	sudo apt-get install -y memcached php5-memcache
	sudo cp /etc/memcached.conf /etc/memcached.conf.default
fi

echo "################################"
echo "### NodeJS #####################"
echo "################################"
sudo apt-get install -y nodejs nodejs-legacy npm

echo "################################"
echo "### Grunt ######################"
echo "################################"
sudo npm install -g grunt

echo "################################"
echo "### PhantomJS ##################"
echo "################################"
sudo npm install -g phantomjs

echo "################################"
echo "### ImageMagick ################"
echo "################################"
sudo apt-get install -y imagemagick php5-imagick

echo "################################"
echo "### Steam ######################"
echo "################################"
#sudo debconf-set-selections <<< "steam steam/purge note"
#sudo debconf-set-selections <<< "steam steam/question select I\ AGREE"
#sudo debconf-set-selections <<< "steam steam/licence note"
sudo apt-get install -y steam

echo "################################"
echo "### PlayOnLinux ################"
echo "################################"
sudo apt-get install -y wine playonlinux

echo "################################"
echo "### ScreenCloud ################"
echo "################################"
# get latest version
sudo wget http://download.opensuse.org/repositories/home:/olav-st/xUbuntu_14.04/amd64/screencloud_1.2.0-1_amd64.deb
sudo apt-get install -y libqtmultimediakit1 libqxt-core0 libqxt-gui0 libquazip0
sudo dpkg -i screencloud_1.2.0-1_amd64.deb
sudo rm screencloud_1.2.0-1_amd64.deb

echo "################################"
echo "### My Weather Indicator #######"
echo "################################"
sudo add-apt-repository -y ppa:atareao/atareao
sudo apt-get update
sudo apt-get install -y my-weather-indicator
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

echo "################################"
echo "### System Load Indicator ######"
echo "################################"
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install indicator-multiload
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

echo "################################"
echo "### Classic Menu Indicator #####"
echo "################################"
sudo add-apt-repository -y ppa:diesch/testing
sudo apt-get update
sudo apt-get install -y classicmenu-indicator

echo "################################"
echo "### Radio Tray #################"
echo "################################"
sudo apt-get install -y radiotray
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

echo "################################"
echo "### MouseSensitivity Indicator #"
echo "################################"
sudo git clone https://github.com/fffilo/mouse-sensitivity.git
sudo mv mouse-sensitivity /usr/share
sudo sh -c "echo \#\!/bin/bash > /usr/bin/mouse-sensitivity"
sudo sh -c "echo '/usr/bin/python /usr/share/mouse-sensitivity/src/mouse.py >/dev/null 2>&1 &' >> /usr/bin/mouse-sensitivity"
sudo chmod +x /usr/bin/mouse-sensitivity
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

echo "################################"
echo "### Git Sounds #################"
echo "################################"
git clone https://github.com/fffilo/gitsound.git
chmod +x gitsound/gitsound.sh
yes | ./gitsound/gitsound.sh
rm gitsound -rf
