# base_hugo

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_hugo)

This image is based on [base_golang_1_26 image](/base_golang_1_26) and comes with Hugo installed.


Packages installed:
- rsync (3.4.1+ds1-7ubuntu0.3)
- hugo (0.164.0)
- ca-certificates (20260601~26.04.1)
- openssh-client (1:10.2p1-2ubuntu3.5)
- openssl (3.5.5-1ubuntu3.3)

Additional features:
- Added ssh and rsync packages for deployment purposes.
- dart-sass is also installed, check CI config.