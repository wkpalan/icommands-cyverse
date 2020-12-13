Bootstrap: docker
From: ubuntu:bionic

%labels
OWNER Kokulapalan Wimalanathan
MAINTAINER Kokulapalan Wimalanathan
ICOMMANDS_Version 4.1.12

%environment
    export LC_ALL=C 
    export DEBIAN_FRONTEND=noninteractive

%post
    
    export IRODS_HOST="data.cyverse.org"
    export IRODS_PORT="1247"
    export IRODS_USER_NAME="anonymous"
    export IRODS_ZONE_NAME="iplant"
    
	echo "Running Post"

    wget -qO - https://packages.irods.org/irods-signing-key.asc | sudo apt-key add -
    echo "deb [arch=amd64] https://packages.irods.org/apt/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/renci-irods.list
    sudo apt-get update
    
	apt-get -yq update
    apt-get -yq install irods-icommands

	#wget https://files.renci.org/pub/irods/releases/4.1.12/ubuntu14/irods-icommands-4.1.12-ubuntu14-x86_64.deb
	#dpkg -i irods-icommands-4.1.12-ubuntu14-x86_64.deb
   
    ils /iplant/home/shared/dillpicl

	echo "=============================================="
	echo "Completed Post" 
	echo "=============================================="
