ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 dh-golang \
 golang-golang-x-sys-dev \
 golang-1.15=1.15-2ubuntu1 \
 golang-1.15-go=1.15-2ubuntu1 \
 nfpm=2.10.0 \
 go-bin-deb \
 make=4.2.1-1.2 \
 git=1:2.25.1-1ubuntu3.2 \
 ca-certificates=20210119~20.04.2 \
 go-dep=0.5.4-3 \
 clang=1:10.0-50~exp1 \
 golint=0.0+git20200130.910be7a-1 \
 sudo=1.8.31-1ubuntu1.2 \
 nfpm=2.10.0 \
 --no-install-recommends && \
 ln -s /usr/lib/go-1.15/bin/go /usr/bin/go && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro.castellano.vela@gmail.com\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
