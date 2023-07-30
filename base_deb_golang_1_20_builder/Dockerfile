ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 dh-golang \
 golang-golang-x-sys-dev \
 golang-1.20=1.20.3-1ubuntu0.1~22.04 \
 golang-1.20-go=1.20.3-1ubuntu0.1~22.04 \
 make=4.3-4.1build1 \
 git=1:2.34.1-1ubuntu1.9 \
 ca-certificates=20230311ubuntu0.22.04.1 \
 clang=1:14.0-55~exp2 \
 golint=0.0+git20200130.910be7a-1ubuntu0.22.04.2 \
 sudo=1.9.9-1ubuntu2.4 \
 nfpm=2.32.0 \
 --no-install-recommends && \
 ln -s /usr/lib/go-1.20/bin/go /usr/bin/go && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro.castellano.vela@gmail.com\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
