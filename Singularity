Bootstrap: docker
From: ubuntu:bionic

%labels
MAINTAINER Kokulapalan Wimalanathan
Version 4.1.9

%environment
    export IRODS_HOST=data.iplantcollaborative.org
    export IRODS_PORT=1247
    export IRODS_USER_NAME=anonymous
    export IRODS_ZONE_NAME=iplant

%post
    
    export IRODS_HOST=data.iplantcollaborative.org
    export IRODS_PORT=1247
    export IRODS_USER_NAME=anonymous
    export IRODS_ZONE_NAME=iplant
    
	echo "Running post.sh"
    
	apt-get -yq update && apt-get -yq upgrade
    apt-get -yq install libfuse2 libssl1.0.0 wget

    mkdir -p /root/.irods && cd /root/.irods/ && wget https://raw.githubusercontent.com/Dill-PICL/GOMAP-singularity/master/irods_environment.json

	wget ftp://ftp.renci.org/pub/irods/releases/4.1.9/ubuntu14/irods-icommands-4.1.9-ubuntu14-x86_64.deb
	dpkg -i irods-icommands-4.1.9-ubuntu14-x86_64.deb
    su root
    
    ils

	echo "=============================================="
	echo "Completed Post" 
	echo "=============================================="
