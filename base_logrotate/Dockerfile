ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 cron=3.0pl1-137ubuntu3 \
 logrotate=3.19.0-1ubuntu1.1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*
