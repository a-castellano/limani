ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 shellcheck=0.9.0-1 \
 shunit2=2.1.8-4 \
 make=4.3-4.1build2 \
 ruby=1:3.2~ubuntu1 \
 sudo=1.9.15p5-3ubuntu5.24.04.1 \
 shfmt=3.8.0-1 \
 --no-install-recommends && \
 gem install bashcov --version 3.0.3 && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 adduser --disabled-password --gecos '' ventus && \
 adduser ventus sudo && \
 echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

 USER ventus
