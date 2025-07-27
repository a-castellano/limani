# base_valkey_server

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_valkey_server)

This image is based on [base image](/base) and comes with valkey-server installed.

Packages installed:

 * valkey-server

Additional features:
 * Exposes port 6379
 * Runs valkey-server with `--protected-mode no` by default
