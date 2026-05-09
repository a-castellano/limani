# base_hugo

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_hugo)

This image is based on [base_golang_1_26 image](/base_golang_1_26) and comes with Hugo installed.


Packages installed:
- rsync (3.2.7-1ubuntu1.2)
- hugo (0.160.1)
- ca-certificates (20240203)
- openssh-client (1:9.6p1-3ubuntu13.16)
- openssl (3.0.13-0ubuntu3.9)

Additional features:
- Added ssh and rsync packages for deployment purposes.
- dart-sass is also installed, check CI config.