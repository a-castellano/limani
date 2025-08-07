ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 python3-setuptools=68.1.2-2ubuntu1.2 \
 python3-pip=24.0+dfsg-1ubuntu1.2 \
 python3-dev=3.12.3-0ubuntu2 \
 libffi-dev=3.4.6-1build1 \
 equivs=2.3.1 \
 devscripts=2.23.7 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
