# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "Types: deb " > /etc/apt/sources.list.d/golang.sources && \
  echo "URIs: http://packages.windmaker.net/golang " >> /etc/apt/sources.list.d/golang.sources && \
  echo "Suites: resolute " >> /etc/apt/sources.list.d/golang.sources && \
  echo "Components: golang " >> /etc/apt/sources.list.d/golang.sources && \
  echo "Architectures: amd64 " >> /etc/apt/sources.list.d/golang.sources && \
  echo "Signed-By: /etc/apt/keyrings/windmaker.gpg" >> /etc/apt/sources.list.d/golang.sources && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    git=1:2.53.0-1ubuntu1 \
    nfpm=2.47.0 \
    golang-golang-x-sys-dev=0.38.0-1 \
    sudo=1.9.17p2-1ubuntu3 \
    libclang-rt-18-dev=1:18.1.8-20ubuntu8 \
    golang-1.27=1.27.0-1longsleep1+jammy \
    make=4.4.1-3 \
    clang=1:21.1.6-71 \
    git-crypt=0.8.0-1 \
    golang-1.27-go=1.27.0-1longsleep1+jammy \
    bind9-host=1:9.20.24-1ubuntu0.2 \
    ca-certificates=20260601~26.04.1 \
    dh-golang=1.63build1 \
    openssl=3.5.5-1ubuntu3.4 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  ln -s /usr/lib/go-1.27/bin/go /usr/bin/go && \
  echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup 
