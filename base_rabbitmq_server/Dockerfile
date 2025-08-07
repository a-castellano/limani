ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE
MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

COPY base_rabbitmq_server/files/rabbitmq.conf /tmp/rabbitmq.conf
COPY base_rabbitmq_server/files/enabled_plugins /tmp/enabled_plugins

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y rabbitmq-server=3.12.1-1ubuntu1.2 --no-install-recommends && \
 mv /tmp/rabbitmq.conf /tmp/enabled_plugins /etc/rabbitmq/ && \
 chown rabbitmq:rabbitmq /etc/rabbitmq/* && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

USER rabbitmq
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
EXPOSE 4369 5671 5672 25672
CMD ["rabbitmq-server"]
