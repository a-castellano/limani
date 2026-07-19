# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    equivs=2.3.2build1 \
    python3.14-venv=3.14.4-1ubuntu0.1 \
    python3-dev=3.14.3-0ubuntu2 \
    devscripts=2.26.7 \
    python3-venv=3.14.3-0ubuntu2 \
    libffi-dev=3.5.2-4 \
    python3-setuptools=78.1.1-0.1build1 \
    python3-pip=25.1.1+dfsg-1ubuntu2 \
    ca-certificates=20260601~26.04.1 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  python3 -m venv /venv && \
  /venv/bin/pip install --no-cache-dir hatch==1.17.1 && \
  ln -s /venv/bin/hatch /usr/local/bin/hatch && \
  echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup 
