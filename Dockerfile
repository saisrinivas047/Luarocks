FROM ubuntu:16.04

MAINTAINER Sai Srinivas Chetti <saisrinivas.chetti@zemosolabs.com>

RUN apt-get update && \
      apt-get -y install sudo
RUN apt-get -y install wget     
RUN apt-get -y install git 
RUN apt-get install curl 

RUN git clone https://github.com/saisrinivas047/Luarocks.git
RUN cd /Luarocks
RUN tar xvf luarocks-2.4.1 (1).tar.gz
RUN CD /luarocks-2.4.1 (1)
RUN ./configure --lua-version=5.2 --versioned-rocks-dir
RUN make build
RUN make install