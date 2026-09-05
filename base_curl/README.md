# base_curl

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_curl)

 This image is based on [base image](/base) comes with curl installed.


Packages installed:
- curl (8.18.0-1ubuntu2.4)
- ca-certificates (20260601~26.04.1)
- openssl (3.5.5-1ubuntu3.5)

Additional features:
- openssl and ca-certificates packages mat not be required but requests over https sites might fail.