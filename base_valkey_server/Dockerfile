# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "Types: deb " > /etc/apt/sources.list.d/percona-valkey-91.sources && \
  echo "URIs: http://packages.windmaker.net/percona-valkey " >> /etc/apt/sources.list.d/percona-valkey-91.sources && \
  echo "Suites: resolute " >> /etc/apt/sources.list.d/percona-valkey-91.sources && \
  echo "Components: main " >> /etc/apt/sources.list.d/percona-valkey-91.sources && \
  echo "Architectures: amd64 " >> /etc/apt/sources.list.d/percona-valkey-91.sources && \
  echo "Signed-By: /etc/apt/keyrings/windmaker.gpg" >> /etc/apt/sources.list.d/percona-valkey-91.sources && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    percona-valkey-server=1:9.1.2-1.resolute \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 

EXPOSE 6379 
CMD ["valkey-server", "--protected-mode", "no"]