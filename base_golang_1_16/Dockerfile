ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 golang-1.16=1.16.5-1 \
 golang-1.16-go=1.16.5-1 \
 make=4.2.1-1.2 \
 git=1:2.25.1-1ubuntu3.1 \
 ca-certificates=20210119~20.04.2 \
 go-dep=0.5.4-3 \
 clang=1:10.0-50~exp1 \
 golint=0.0+git20200130.910be7a-1 \
 sudo=1.8.31-1ubuntu1.2 \
 --no-install-recommends && \
 ln -s /usr/lib/go-1.16/bin/go /usr/bin/go && \
 echo "daedalus ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
 adduser --disabled-password --gecos '' daedalus && \
 rm -rf /var/lib/apt/lists/*

USER daedalus
