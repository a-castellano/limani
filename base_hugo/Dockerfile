ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_golang_1_24
FROM $BASE_IMAGE
MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y hugo=0.148.1 rsync openssh-client --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
