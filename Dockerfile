FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl && curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-`uname -s`-`uname -m` > docker_machine && \
    chmod 777 docker_machine && \
    apt-get install -y virtualbox && \
    docker_machine create -d virtualbox default


