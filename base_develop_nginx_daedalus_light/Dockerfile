ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_develop
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y nginx-daedalus-light=1.18.0-5 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/* && \
 echo "server_tokens off;" >> /etc/nginx/conf.d/hide-version.conf
