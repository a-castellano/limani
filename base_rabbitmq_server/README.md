# base_rabbitmq_server

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_rabbitmq_server)

This image is based on [base image](/base) and comes with rabbitmq-server installed.

Packages installed:

 * rabbitmq-server (3.12.1-1ubuntu1.2)

Additional features:
 * Includes custom rabbitmq.conf and enabled_plugins configuration
 * Runs as user 'rabbitmq'
 * Exposes ports 4369, 5671, 5672, 25672
 * Sets UTF-8 locale environment variables
