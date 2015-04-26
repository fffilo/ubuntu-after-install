#!/bin/bash

clear
echo "################################"
echo "### Mount storage ##############"
echo "################################"
cat /etc/fstab | grep "4372786d-6ae6-4fc8-98d3-d166655f1521"
if [[ $? -eq 1 ]]; then
	echo "# storage" | sudo tee -a /etc/fstab >/dev/null
	echo "UUID=4372786d-6ae6-4fc8-98d3-d166655f1521    /storage    ext4    defaults    0    2" | sudo tee -a /etc/fstab
	sudo mkdir -p /storage
	sudo mount -a
fi
