ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 python3-setuptools=45.2.0-1 \
 python3-pip=20.0.2-5ubuntu1.6 \
 python3-dev=3.8.2-0ubuntu2 \
 libffi-dev=3.3-4 \
 equivs=2.2.0 \
 devscripts=2.20.2ubuntu2 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro.castellano.vela@gmail.com\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
