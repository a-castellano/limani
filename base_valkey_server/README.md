# base_valkey_server

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_valkey_server)

This image is based on [base image](/base) and comes with valkey-server installed.


Packages installed:
- valkey-server (7.2.13+dfsg1-0ubuntu0.1)

Additional features:
- Exposes port 6379.
- Runs valkey-server with `--protected-mode no` by default.