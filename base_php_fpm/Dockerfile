# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    php8.3-cli=8.3.6-0ubuntu0.24.04.9 \
    php8.3-curl=8.3.6-0ubuntu0.24.04.9 \
    php8.3-gmp=8.3.6-0ubuntu0.24.04.9 \
    php8.3-bcmath=8.3.6-0ubuntu0.24.04.9 \
    php8.3-zip=8.3.6-0ubuntu0.24.04.9 \
    php8.3-mysql=8.3.6-0ubuntu0.24.04.9 \
    php8.3-imagick=3.7.0-4ubuntu3 \
    php8.3-xml=8.3.6-0ubuntu0.24.04.9 \
    php8.3-gd=8.3.6-0ubuntu0.24.04.9 \
    php8.3-mbstring=8.3.6-0ubuntu0.24.04.9 \
    php8.3-opcache=8.3.6-0ubuntu0.24.04.9 \
    php8.3-igbinary=3.2.13-1ubuntu3 \
    php8.3-bz2=8.3.6-0ubuntu0.24.04.9 \
    php8.3-fpm=8.3.6-0ubuntu0.24.04.9 \
    php8.3-intl=8.3.6-0ubuntu0.24.04.9 \
    php8.3-pgsql=8.3.6-0ubuntu0.24.04.9 \
    php8.3-redis=5.3.7+4.3.0-3ubuntu1 \
    php8.3-readline=8.3.6-0ubuntu0.24.04.9 \
    ca-certificates=20260601~26.04.1 \
    openssl=3.5.5-1ubuntu3.2 \
    php8.3-common=8.3.6-0ubuntu0.24.04.9 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 

EXPOSE 9000 
CMD ["php-fpm8.3", "-F", "--allow-to-run-as-root"]