ARG BASE_IMAGE=registry.windmaker.net:5005/a-castellano/limani/base_selenium
FROM $BASE_IMAGE

MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>

USER daedalus
EXPOSE 4444

CMD ["/usr/bin/java", "-jar", "/home/daedalus/selenium-server-standalone-3.141.59.jar", "-role", "hub"]
