FROM ubuntu:12.04

MAINTAINER Clemens Stolle clemens.stolle@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential libssl-dev curl

# install github.com/wg/wrk v3.1.0
RUN (mkdir /opt/wrk && cd /opt/wrk && curl -L# https://github.com/wg/wrk/archive/3.1.0.tar.gz | tar zx --strip 1 && make)

RUN apt-get clean
RUN apt-get -y remove build-essential curl && apt-get -y autoremove
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory.
WORKDIR /opt/wrk

# Define default command.
ENTRYPOINT ["./wrk"]
