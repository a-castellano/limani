# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
  wget -qO- http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub >> /etc/apt/keyrings/windmaker.gpg && \
  echo "Types: deb " > /etc/apt/sources.list.d/percona-mysql.sources && \
  echo "URIs: http://packages.windmaker.net/percona " >> /etc/apt/sources.list.d/percona-mysql.sources && \
  echo "Suites: resolute " >> /etc/apt/sources.list.d/percona-mysql.sources && \
  echo "Components: percona-mysql " >> /etc/apt/sources.list.d/percona-mysql.sources && \
  echo "Architectures: amd64 " >> /etc/apt/sources.list.d/percona-mysql.sources && \
  echo "Signed-By: /etc/apt/keyrings/windmaker.gpg" >> /etc/apt/sources.list.d/percona-mysql.sources && \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    daedalus-project-mysql-utils=0.4-7 \
    percona-server-client=8.4.10-10-1.resolute \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 
