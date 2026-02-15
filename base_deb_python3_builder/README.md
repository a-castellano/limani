# base_deb_python3_builder

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_deb_python3_builder)

This image is based on [base_deb_builder image](/base_deb_builder) and comes with Debian packaging utilities (python3 flavour).

Packages installed:

 * python3-setuptools (68.1.2-2ubuntu1.2)
 * python3-pip (24.0+dfsg-1ubuntu1.3)
 * python3-dev (3.12.3-0ubuntu2.1)
 * python3.12-venv (3.12.3-1ubuntu0.11)
 * libffi-dev (3.4.6-1build1)
 * equivs (2.3.1)
 * devscripts (2.23.7)
 * hatch (1.16.3) – installed via pip in `/venv`, symlinked at `/usr/local/bin/hatch`

Additional features:
 * Creates a Python virtual environment at `/venv` with hatch for packaging
 * Configures DEBEMAIL and DEBFULLNAME environment variables
