FROM ubuntu:jammy
MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
 wget -O - http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub | apt-key add - && \
 apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget openssl && \
 apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
 apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
 echo "deb http://packages.windmaker.net/ any main" >> /etc/apt/sources.list && \
 echo "deb [arch=amd64] http://packages.windmaker.net/ jammy main" >> /etc/apt/sources.list && \
 apt-get update -qq && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
