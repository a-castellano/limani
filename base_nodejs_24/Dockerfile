# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  gpg --keyserver keyserver.ubuntu.com --recv-keys 2F59B5F99B1BE0B4 && \
  gpg --export 2F59B5F99B1BE0B4 | gpg --dearmor > /etc/apt/keyrings/nodejs.gpg && \
  echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/nodejs.gpg] https://deb.nodesource.com/node_24.x nodistro main" >> /etc/apt/sources.list.d/nodejs.list && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    nodejs=24.18.1-1nodesource1 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 
