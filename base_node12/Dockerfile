ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 export DEBIAN_FRONTEND=noninteractive && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 nodejs=12.22.9~dfsg-1ubuntu3 \
 ca-certificates=20230311ubuntu0.22.04.1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
