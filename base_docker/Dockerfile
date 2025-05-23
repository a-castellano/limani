ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 docker-ce=5:28.1.1-1~ubuntu.24.04~noble \
 docker-ce-cli=5:28.1.1-1~ubuntu.24.04~noble \
 containerd.io=1.7.27-1 \
 docker-build=0.4-1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

