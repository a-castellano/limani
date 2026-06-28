# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  gpg --keyserver keyserver.ubuntu.com --recv-keys C631127F87FA12D1 && \
  gpg --keyserver keyserver.ubuntu.com --recv-keys F6BC817356A3D45E && \
  gpg --export C631127F87FA12D1 F6BC817356A3D45E | gpg --dearmor > /etc/apt/keyrings/golang.gpg && \
  echo "deb [signed-by=/etc/apt/keyrings/golang.gpg] https://ppa.launchpadcontent.net/longsleep/golang-backports/ubuntu/ noble main" >> /etc/apt/sources.list.d/golang.list && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    git=1:2.43.0-1ubuntu7.3 \
    nfpm=2.43.0 \
    golang-golang-x-sys-dev=0.17.0-1 \
    sudo=1.9.15p5-3ubuntu5.24.04.2 \
    clang-20=1:20.1.2-0ubuntu1~24.04.3 \
    golang-1.26=1.26.4-1longsleep1+jammy \
    make=4.3-4.1build2 \
    libclang-rt-20-dev=1:20.1.2-0ubuntu1~24.04.3 \
    bind9-host=1:9.18.39-0ubuntu0.24.04.5 \
    golang-1.26-go=1.26.4-1longsleep1+jammy \
    ca-certificates=20260601~24.04.1 \
    dh-golang=1.62 \
    openssl=3.0.13-0ubuntu3.11 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  ln -s /usr/lib/go-1.26/bin/go /usr/bin/go && \
  echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup 
