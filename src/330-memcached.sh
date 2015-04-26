echo "################################"
echo "### MemCached ##################"
echo "################################"
dpkg -l memcached >/dev/null 2>&1
if [[ $? -eq 1 ]]; then
	sudo apt-get install -y memcached php5-memcache
	sudo cp /etc/memcached.conf /etc/memcached.conf.default
fi
