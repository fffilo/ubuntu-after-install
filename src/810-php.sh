#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### PHP ########################"
echo "################################"
php -v >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
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
