ARG BASE_IMAGE=limani.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 libtest-perl-critic-perl=1.04-2 \
 --no-install-recommends \
 && apt-get purge -y --auto-remove \
 && rm -rf /var/lib/apt/lists/* \
 && adduser --disabled-password --gecos '' ventus

 USER ventus
