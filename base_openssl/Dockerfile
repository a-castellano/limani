ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y --no-install-recommends \
 openssl=1.1.1f-1ubuntu2.3 && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
