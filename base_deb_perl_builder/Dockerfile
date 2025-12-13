ARG BASE_IMAGE=limani.windmaker.net/limani/base_deb_builder
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 dh-make-perl=0.124 \
 libmodule-install-perl=1.21-1 \
 libgit-wrapper-perl=0.048-2 \
 libcatalyst-modules-perl=49 \
 libmodule-build-perl=0.423400-2 \
 libmodule-build-tiny-perl=0.047-1 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo -e "DEBEMAIL=\"alvaro@windmaker.net\"\nDEBFULLNAME=\"Álvaro Castellano Vela\"\nexport DEBEMAIL DEBFULLNAME\n" >> ~/.bashrc.backup
