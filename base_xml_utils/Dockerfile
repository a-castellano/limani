ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 libxml2-utils \
 xmlstarlet \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
