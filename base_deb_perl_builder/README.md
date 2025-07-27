# base_deb_perl_builder

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_deb_perl_builder)

This image is based on [base_deb_builder image](/base_deb_builder) and comes with Debian packaging utilities (perl flavour).

Packages installed:

 * dh-make-perl (0.124)
 * libmodule-install-perl (1.21-1)
 * libgit-wrapper-perl (0.048-2)
 * libcatalyst-modules-perl (49)
 * libmodule-build-perl (0.423400-2)
 * libmodule-build-tiny-perl (0.047-1)

Additional features:
 * Configures DEBEMAIL and DEBFULLNAME environment variables
