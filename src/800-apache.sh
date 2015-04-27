#!/bin/bash

echo "################################"
echo "### Apache #####################"
echo "################################"
apache2 -v >/dev/null 2>&1
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
