Bootstrap: docker
From: ubuntu:bionic

%labels
MAINTAINER Kokulapalan Wimalanathan
Version 1.1.0

%post
    
	echo "Running post.sh"
    
	apt-get -yq update && apt-get -yq upgrade
    apt-get -yq install libfuse2 libssl1.0.0 wget

    mkdir -p /root/.irods && cd /root/.irods/ && wget https://raw.githubusercontent.com/Dill-PICL/GOMAP-singularity/master/irods_environment.json

	wget ftp://ftp.renci.org/pub/irods/releases/4.1.9/ubuntu14/irods-icommands-4.1.9-ubuntu14-x86_64.deb
	dpkg -i irods-icommands-4.1.9-ubuntu14-x86_64.deb 

	echo "=============================================="
	echo "Completed Post" 
	echo "=============================================="
