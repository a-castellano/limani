# base_curl

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_curl)

 This image is based on [base image](/base) comes with curl installed.


Packages installed:
- curl (8.5.0-2ubuntu10.8)
- ca-certificates (20240203)
- openssl (3.0.13-0ubuntu3.7)

Additional features:
- openssl and ca-certificates packages mat not be required but requests over https sites might fail.