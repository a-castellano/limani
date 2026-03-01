# base_rabbitmq_server

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_rabbitmq_server)

RabbitMQ server image with custom config and plugins. Ports 4369, 5671, 5672, 25672 exposed.


Packages installed:
- rabbitmq-server (3.12.1-1ubuntu1.2)

Additional features:
- Custom rabbitmq.conf and enabled_plugins copied into image
- Runs as rabbitmq user with LANG/C.UTF-8