# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base_golang_1_26
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

COPY base_hugo/dart-sass /tmp/dart-sass

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    rsync=3.2.7-1ubuntu1.5 \
    hugo=0.164.0 \
    ca-certificates=20260601~24.04.1 \
    openssh-client=1:9.6p1-3ubuntu13.18 \
    openssl=3.0.13-0ubuntu3.11 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  mv /tmp/dart-sass /usr/local/lib/dart-sass && \
  chmod 755 /usr/local/lib/dart-sass/sass && \
  ln -s /usr/local/lib/dart-sass/sass /usr/local/bin/sass 
