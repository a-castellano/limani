FROM ubuntu:noble
MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y gnupg ca-certificates wget --no-install-recommends && \
 mkdir -p /etc/apt/keyrings && \
 wget -qO /etc/apt/keyrings/windmaker.gpg http://packages.windmaker.net/WINDMAKER-GPG-KEY.pub && \
 apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget openssl && \
 apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
 apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
 echo "deb [signed-by=/etc/apt/keyrings/windmaker.gpg] http://packages.windmaker.net/ any main" >> /etc/apt/sources.list && \
 echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/windmaker.gpg] http://packages.windmaker.net/ noble main" >> /etc/apt/sources.list && \
 apt-get update -qq && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
