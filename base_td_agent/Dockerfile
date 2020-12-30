ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

ENV LD_PRELOAD /opt/td-agent/embedded/lib/libjemalloc.so
ENV GEM_HOME /opt/td-agent/embedded/lib/ruby/gems/2.4.0/
ENV GEM_PATH /opt/td-agent/embedded/lib/ruby/gems/2.4.0/
ENV FLUENT_CONF /etc/td-agent/td-agent.conf
ENV FLUENT_PLUGIN /etc/td-agent/plugin
ENV FLUENT_SOCKET /var/run/td-agent/td-agent.sock

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 td-agent=3.6.0-0 \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

 CMD ["/opt/td-agent/embedded/bin/fluentd", "--log", "/var/log/td-agent/td-agent.log"]
