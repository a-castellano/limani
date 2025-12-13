ARG BASE_IMAGE=limani.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y --no-install-recommends \
 openssl=3.0.13-0ubuntu3.6 && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
