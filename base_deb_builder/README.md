# base_deb_builder

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_deb_builder)

This image is based on [base image](/base) and comes with Debian packaging utilities.


Packages installed:
- debhelper (13.31ubuntu1)
- fakeroot (1.37.2-1)
- build-essential (12.12ubuntu2.26.04.1)
- libdebhelper-perl (13.31ubuntu1)
- dpkg-dev (1.23.7ubuntu1)

Additional features:
- Configures DEBEMAIL and DEBFULLNAME environment variables