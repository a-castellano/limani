# Dockerfile generated using karavomarangos - https://git.windmaker.net/a-castellano/karavomarangos
ARG BASE_IMAGE=harbor.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

COPY base_rabbitmq_server/files/rabbitmq.conf /tmp/rabbitmq.conf
COPY base_rabbitmq_server/files/enabled_plugins /tmp/enabled_plugins

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
    rabbitmq-server=4.0.5-10ubuntu5 \
    --no-install-recommends && \
  apt-get purge -qq -o=Dpkg::Use-Pty=0 -y gnupg wget ca-certificates && \
  apt-get autoremove -qq -o=Dpkg::Use-Pty=0 -y && \
  apt-get autoclean -qq -o=Dpkg::Use-Pty=0 -y && \
  rm -rf /var/lib/apt/lists/* && \
  mv /tmp/rabbitmq.conf /tmp/enabled_plugins /etc/rabbitmq/ && \
  chown rabbitmq:rabbitmq /etc/rabbitmq/* 

USER rabbitmq
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8 
EXPOSE 4369 5671 5672 25672 
CMD ["rabbitmq-server"]