ARG BASE_IMAGE=daedalusproject/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 golang-1.13=1.13.8-1ubuntu1 \
 golang-1.13-go=1.13.8-1ubuntu1 \
 make=4.2.1-1.2 \
 git=1:2.25.1-1ubuntu3 \
 ca-certificates=20201027ubuntu0.20.04.1 \
 go-dep=0.5.4-3 \
 clang=1:10.0-50~exp1 \
 golint=0.0+git20200130.910be7a-1 \
 --no-install-recommends && \
 ln -s /usr/lib/go-1.13/bin/go /usr/bin/go && \
 adduser --disabled-password --gecos '' daedalus && \
 rm -rf /var/lib/apt/lists/*

USER daedalus
