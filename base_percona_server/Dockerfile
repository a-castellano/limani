ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE
MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
 export PERCONA_TELEMETRY_DISABLE=1 && \
 export DEBIAN_FRONTEND=noninteractive && \
 echo percona-server-server percona-server-server/root-pass password L3tm3_in | debconf-set-selections && \
 echo percona-server-server percona-server-server/re-root-pass password L3tm3_in | debconf-set-selections && \
 echo percona-server-server percona-server-server/default-auth-override select 1 | debconf-set-selections && \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 percona-server-server=8.4.5-5-1.noble \
 daedalus-project-mysql-utils=0.4-7 \
 percona-telemetry-agent \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

USER mysql
EXPOSE 3306
CMD ["/usr/sbin/mysqld", "--bind-address=0.0.0.0", "--skip_name_resolve"]
