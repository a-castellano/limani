# base_deb_builder

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_deb_builder)

This image is based on [base image](/base) and comes with Debian packaging utilities.


Packages installed:
- debhelper (13.14.1ubuntu5)
- fakeroot (1.33-1)
- build-essential (12.10ubuntu1)
- libdebhelper-perl (13.14.1ubuntu5)
- dpkg-dev (1.22.6ubuntu6.6)

Additional features:
- Configures DEBEMAIL and DEBFULLNAME environment variables