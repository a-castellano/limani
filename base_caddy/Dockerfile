# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "Types: deb " > /etc/apt/sources.list.d/caddy.sources && \
  echo "URIs: http://packages.windmaker.net/caddy " >> /etc/apt/sources.list.d/caddy.sources && \
  echo "Suites: any " >> /etc/apt/sources.list.d/caddy.sources && \
  echo "Components: main " >> /etc/apt/sources.list.d/caddy.sources && \
  echo "Architectures: amd64 " >> /etc/apt/sources.list.d/caddy.sources && \
  echo "Signed-By: /etc/apt/keyrings/windmaker.gpg" >> /etc/apt/sources.list.d/caddy.sources && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    caddy=2.11.4 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 
