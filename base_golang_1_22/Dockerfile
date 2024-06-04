ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
 echo "deb https://ppa.launchpadcontent.net/longsleep/golang-backports/ubuntu/ jammy main" >> /etc/apt/sources.list && \
 gpg --keyserver keyserver.ubuntu.com --recv-keys  C631127F87FA12D1 && \
 gpg --keyserver keyserver.ubuntu.com --recv-keys  F6BC817356A3D45E && \
 gpg --armor --export C631127F87FA12D1 | apt-key add - && \
 gpg --armor --export F6BC817356A3D45E | apt-key add - && \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 dh-golang \
 golang-golang-x-sys-dev \
 golang-1.22=1.22.3-1longsleep1+focal \
 golang-1.22-go=1.22.3-1longsleep1+focal \
 make=4.3-4.1build1 \
 git=1:2.34.1-1ubuntu1.11 \
 ca-certificates=20230311ubuntu0.22.04.1 \
 clang=1:14.0-55~exp2 \
 golint=0.0+git20200130.910be7a-1ubuntu0.22.04.2 \
 sudo=1.9.9-1ubuntu2.4 \
 nfpm=2.32.0 \
 --no-install-recommends && \
 ln -s /usr/lib/go-1.22/bin/go /usr/bin/go && \
 apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget openssl && \
 apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
 apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro.castellano.vela@gmail.com\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
