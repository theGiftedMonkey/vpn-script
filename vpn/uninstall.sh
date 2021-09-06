#!/usr/bin/bash

#Disconnect and logout of nordvpn
sudo nordvpn disconnect
sudo norvpn logout

#Uninstall packages
sudo apt --purge remove nordvpn -y
sudo apt --purge remove nordvpn-release -y

echo Double checking existance of packages....

dpkg --list | grep nordvpn

echo If any packages showed up the uninstall did not work

sleep 2

echo Nordvpn uninstall complete

