#!/bin/bash

echo ""
echo ""
echo "################################"
echo "### Mount storage ##############"
echo "################################"
cat /etc/fstab | grep "a99ff6b1-e25d-4ea5-9205-77aa880d7c40"
if [[ $? -eq 1 ]]; then
	echo "# storage" | sudo tee -a /etc/fstab >/dev/null
	echo "UUID=a99ff6b1-e25d-4ea5-9205-77aa880d7c40    /storage    ext4    defaults    0    2" | sudo tee -a /etc/fstab
	sudo mkdir -p /storage
	sudo mount -a
	ln -s /storage ~/storage
fi
