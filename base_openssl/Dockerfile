ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y --no-install-recommends \
 openssl=3.0.2-0ubuntu1.15 && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
