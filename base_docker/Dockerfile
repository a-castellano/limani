ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 docker-ce=5:24.0.5-1~ubuntu.22.04~jammy \
 docker-ce-cli=5:24.0.5-1~ubuntu.22.04~jammy \
 containerd.io=1.6.21-1 \
 docker-build=0.4-1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

