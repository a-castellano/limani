ARG BASE_IMAGE=limani.windmaker.net/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y nginx-full=1.24.0-2ubuntu7.6 --no-install-recommends && \
  apt-get purge -y --auto-remove && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/nginx/* && \
  ln -sf /dev/stdout /var/log/nginx/access.log && \
  ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
