FROM ubuntu:16.04

    #apt-get install linux-headers-`uname -r` linux-headers-`uname -r`-generic && \
RUN apt-get update && apt-get install -y curl wget linux-headers-generic build-essential dkms && \
    echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list && \
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add - && \
    apt-get update && \
    apt-get remove --purge virtualbox-dkms && apt-get install -y virtualbox-dkms && \
    apt-get install -y --no-install-recommends virtualbox-5.0


RUN curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-`uname -s`-`uname -m` > docker_machine && \
    chmod 777 docker_machine && \
    ./docker_machine create -d virtualbox default



