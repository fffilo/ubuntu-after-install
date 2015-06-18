#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### MemCached ##################"
echo "################################"
dpkg -l memcached >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo apt-get install -y memcached
	sudo cp /etc/memcached.conf /etc/memcached.conf.default
fi
php -v > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
	sudo apt-get install -y php5-memcache
fi
