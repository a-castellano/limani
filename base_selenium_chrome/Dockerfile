ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_selenium
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

COPY base_selenium_chrome/files/config.json /home/daedalus/config.json
COPY base_selenium_chrome/files/start_selenium /home/daedalus/start_selenium

RUN \
 apt-get update -qq && \
 apt-get install -qq -o=Dpkg::Use-Pty=0 -y \
 chromium-browser \
 chromium-chromedriver \
 --no-install-recommends && \
 apt-get purge -y --auto-remove && \
 rm -rf /var/lib/apt/lists/*

USER daedalus
EXPOSE 5555

CMD ["/bin/bash","/home/daedalus/start_selenium"]
