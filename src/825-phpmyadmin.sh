#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### PhpMyAdmin #################"
echo "################################"
dpkg -l phpmyadmin >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password root"
	sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
	sudo apt-get install -y phpmyadmin
	sudo service apache2 restart
fi
