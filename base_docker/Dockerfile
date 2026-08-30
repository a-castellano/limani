# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "Types: deb " > /etc/apt/sources.list.d/docker.sources && \
  echo "URIs: http://packages.windmaker.net/docker " >> /etc/apt/sources.list.d/docker.sources && \
  echo "Suites: resolute " >> /etc/apt/sources.list.d/docker.sources && \
  echo "Components: main " >> /etc/apt/sources.list.d/docker.sources && \
  echo "Architectures: amd64 " >> /etc/apt/sources.list.d/docker.sources && \
  echo "Signed-By: /etc/apt/keyrings/windmaker.gpg" >> /etc/apt/sources.list.d/docker.sources && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    containerd.io=2.3.4-1~ubuntu.26.04~resolute \
    docker-ce=5:29.7.2-1~ubuntu.26.04~resolute \
    git-crypt=0.8.0-1 \
    docker-ce-cli=5:29.7.2-1~ubuntu.26.04~resolute \
    docker-build=0.4-1 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 
