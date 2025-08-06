ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y stunnel4 --no-install-recommends && \
  apt-get purge -y --auto-remove && \
  rm -rf /var/lib/apt/lists/* && \
  openssl req -new -x509 -days 3650 -nodes  -subj "/C=ES/ST=Castellón/L=Castelló de la Plana/O=Windmaker/OU=IT/CN=mail.windmaker.net/emailAddress=alvaro@windmaker.net" -out /etc/stunnel/stunnel.pem -keyout /etc/stunnel/stunnel.pem

