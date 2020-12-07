ARG BASE_IMAGE=daedalusproject/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 export DEBIAN_FRONTEND=noninteractive && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 nodejs=12.18.3-deb-1nodesource1 \
 ca-certificates=20201027ubuntu0.20.04.1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
