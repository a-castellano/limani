ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro@windmaker.net>

COPY base_stunnel/run_stunnel.sh /usr/local/bin/

RUN \
  apt-get update -qq && \
  apt-get install -qq -o=Dpkg::Use-Pty=0 -y stunnel4 --no-install-recommends && \
  apt-get purge -y --auto-remove && \
  rm -rf /var/lib/apt/lists/* && \
  openssl req -new -x509 -days 3650 -nodes  -subj "/C=ES/ST=Castellón/L=Castelló de la Plana/O=Windmaker/OU=IT/CN=mail.windmaker.net/emailAddress=alvaro@windmaker.net" -out /etc/stunnel/stunnel.pem -keyout /etc/stunnel/stunnel.pem && \
  chmod +x /usr/local/bin/run_stunnel.sh

CMD ["/usr/local/bin/run_stunnel.sh"]

