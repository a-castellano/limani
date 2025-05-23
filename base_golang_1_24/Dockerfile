ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  echo "deb [signed-by=/etc/apt/keyrings/golang.gpg] https://ppa.launchpadcontent.net/longsleep/golang-backports/ubuntu/ noble main" >> /etc/apt/sources.list && \
  gpg --keyserver keyserver.ubuntu.com --recv-keys  C631127F87FA12D1 && \
  gpg --keyserver keyserver.ubuntu.com --recv-keys  F6BC817356A3D45E && \
  gpg --export C631127F87FA12D1 F6BC817356A3D45E | gpg --dearmor > /etc/apt/keyrings/golang.gpg && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
  dh-golang \
  golang-golang-x-sys-dev \
  golang-1.24=1.24.3-1longsleep1+focal \
  golang-1.24-go=1.24.3-1longsleep1+focal \
  make=4.3-4.1build2 \
  git \
  ca-certificates \
  openssl=3.0.13-0ubuntu3.5 \
  clang=1:18.0-59~exp2 \
  sudo=1.9.15p5-3ubuntu5 \
  nfpm=2.42.1 \
  bind9-host=1:9.18.30-0ubuntu0.24.04.2 \
  --no-install-recommends && \
  ln -s /usr/lib/go-1.24/bin/go /usr/bin/go && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  echo -e "DEBEMAIL=\"alvaro.castellano.vela@gmail.com\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
