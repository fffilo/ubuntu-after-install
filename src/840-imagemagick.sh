#!/bin/bash

echo "################################"
echo "### ImageMagick ################"
echo "################################"
sudo apt-get install -y imagemagick
php -v > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
	sudo apt-get install -y php5-imagick
fi