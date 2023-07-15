FROM --platform=linux/amd64 ubuntu:bionic
LABEL authors="kokul@bioinformapping.com" \
      description="icommands docker container"
 
ENV LC_ALL=C 
ENV DEBIAN_FRONTEND=noninteractive
ENV IRODS_HOST="data.cyverse.org"
ENV IRODS_PORT="1247"
ENV IRODS_USER_NAME="anonymous"
ENV IRODS_ZONE_NAME="iplant"

RUN apt-get -yq update
RUN apt-get -yq install wget gnupg2

RUN wget -qO - https://packages.irods.org/irods-signing-key.asc | apt-key add -
RUN echo "deb [arch=amd64] https://packages.irods.org/apt/ bionic main" | tee /etc/apt/sources.list.d/renci-irods.list
RUN apt-get -y update
RUN apt-get -yq install irods-icommands

RUN ils /iplant/home/shared/dillpicl
