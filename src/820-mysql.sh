#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### MySql ######################"
echo "################################"
mysql --version >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
	sudo apt-get install -y mysql-server
	sudo cp /etc/mysql/my.cnf /etc/mysql/my.cnf.default
	sudo sed -ri 's/key_buffer(\s.*)/#key_buffer\1\nkey_buffer_size\1/g' /etc/mysql/my.cnf
	# sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
	# mysqladmin --user=root --password=root password 'newrootpassword'
	sudo service mysql restart
fi
