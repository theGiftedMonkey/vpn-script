#!/usr/bin/bash

input=$1

if [[ "$EUID" = 0 ]]; then

	if [ $input = "install" ]; then
		echo "installing nordvpn...";
		/home/velix/.bash_scripts/vpn/install.sh
	fi

	if [ $input = "uninstall" ]; then
		echo "uninstalling nordvpn...";
		/home/velix/.bash_scripts/vpn/uninstall.sh
	fi

else
	echo "run as sudo"
fi

