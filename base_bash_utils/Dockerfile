# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    sudo=1.9.17p2-1ubuntu3 \
    ruby=1:3.3build1 \
    shunit2=2.1.8-4build1 \
    make=4.4.1-3 \
    shfmt=3.12.0-1 \
    shellcheck=0.11.0-2 \
    ca-certificates=20260601~26.04.1 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  gem install bashcov --version 3.0.3 && \
  adduser --disabled-password --gecos '' ventus && \
  adduser ventus sudo && \
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers 

USER ventus