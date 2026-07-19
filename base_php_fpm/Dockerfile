# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>


RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    php8.5-common=8.5.4-0ubuntu1.1 \
    php8.5-imagick=3.8.0-3ubuntu1 \
    php8.5-gd=8.5.4-0ubuntu1.1 \
    php8.5-igbinary=3.2.16-4ubuntu1 \
    php8.5-zip=8.5.4-0ubuntu1.1 \
    php8.5-mysql=8.5.4-0ubuntu1.1 \
    php8.5-intl=8.5.4-0ubuntu1.1 \
    php8.5-gmp=8.5.4-0ubuntu1.1 \
    php8.5-bz2=8.5.4-0ubuntu1.1 \
    php8.5-xml=8.5.4-0ubuntu1.1 \
    php8.5-fpm=8.5.4-0ubuntu1.1 \
    php8.5-curl=8.5.4-0ubuntu1.1 \
    php8.5-mbstring=8.5.4-0ubuntu1.1 \
    php8.5-opcache=8.3.6-0ubuntu0.24.04.9 \
    php8.5-bcmath=8.5.4-0ubuntu1.1 \
    php8.5-cli=8.5.4-0ubuntu1.1 \
    php8.5-pgsql=8.5.4-0ubuntu1.1 \
    php8.5-readline=8.5.4-0ubuntu1.1 \
    ca-certificates=20260601~26.04.1 \
    php8.5-redis=6.2.0-1ubuntu1 \
    openssl=3.5.5-1ubuntu3.2 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget  && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* 

EXPOSE 9000 
CMD ["php-fpm8.3", "-F", "--allow-to-run-as-root"]