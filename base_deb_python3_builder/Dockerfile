# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    equivs=2.3.1 \
    python3.12-venv=3.12.3-1ubuntu0.13 \
    python3-dev=3.12.3-0ubuntu2.1 \
    devscripts=2.23.7ubuntu0.2 \
    python3-venv=3.12.3-0ubuntu2.1 \
    libffi-dev=3.4.6-1build1 \
    python3-setuptools=68.1.2-2ubuntu1.2 \
    python3-pip=24.0+dfsg-1ubuntu1.3 \
    ca-certificates=20240203 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  python3 -m venv /venv && \
  /venv/bin/pip install --no-cache-dir hatch==1.16.3 && \
  ln -s /venv/bin/hatch /usr/local/bin/hatch && \
  echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup 
