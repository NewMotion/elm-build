FROM node:7.4-slim

MAINTAINER Konstantin Alexandroff <k.alexandroff@gmail.com>

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24
RUN /bin/bash -c "echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list"
RUN apt-get update 

RUN apt-get -y install git \
	&& npm install -g elm@0.18.0 \
	&& npm install -g elm-test@0.18.0 \
	&& npm install -g bower \
	&& npm install -g --unsafe-perm elm-github-install
