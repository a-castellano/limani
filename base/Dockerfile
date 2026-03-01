# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=ubuntu:noble
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "deb [signed-by=/etc/apt/keyrings/windmaker.gpg] http://packages.windmaker.net/ any main" >> /etc/apt/sources.list.d/windmaker.list && \
  echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/windmaker.gpg] http://packages.windmaker.net/ noble main" >> /etc/apt/sources.list.d/windmaker.list && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 
