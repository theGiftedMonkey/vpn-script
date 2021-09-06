#~/usr/bin/bash

	#Go to downloads directory
	cd /home/velix/Downloads

        #Download package
        wget -qnc https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb

        #Install package
        sudo dpkg -i /home/velix/Downloads/nordvpn-release_1.0.0_all.deb

        #Update apt
        sudo apt update

        #Install vpn
        sudo apt install nordvpn

        #Remove the download
        rm nordvpn-release_1.0.0_all.deb


        #connect
        echo Connect and login to vpn? y/n
        read connectResponse

        if [ $connectResponse = 'y' ]
        then
                sudo nordvpn connect
                sudo nordvpn status
        else
                sudo nordvpn status
        fi
