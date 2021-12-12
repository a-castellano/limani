ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE
MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 git=1:2.25.1-1ubuntu3.1 \
 ca-certificates=20210119~20.04.2 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
