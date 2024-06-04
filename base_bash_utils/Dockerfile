ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 shellcheck=0.8.0-2 \
 shunit2=2.1.6-1.2 \
 make=4.3-4.1build1 \
 ruby=1:3.0~exp1 \
 sudo=1.9.9-1ubuntu2.4 \
 --no-install-recommends && \
 gem install bashcov --version 3.0.3 && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 adduser --disabled-password --gecos '' ventus && \
 adduser ventus sudo && \
 echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

 USER ventus
