ARG BASE_IMAGE=limani.windmaker.net/limani/base_golang_1_26
FROM $BASE_IMAGE
MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y hugo=0.156.0 rsync openssh-client --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
