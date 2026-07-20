# base_deb_python3_builder

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_deb_python3_builder)

This image is based on [base_deb_builder image](/base_deb_builder) and comes with Debian packaging utilities (python flavour).


Packages installed:
- equivs (2.3.2build1)
- python3.14-venv (3.14.4-1ubuntu0.1)
- python3-dev (3.14.3-0ubuntu2)
- devscripts (2.26.7)
- python3-venv (3.14.3-0ubuntu2)
- libffi-dev (3.5.2-4)
- python3-setuptools (78.1.1-0.1build1)
- python3-pip (25.1.1+dfsg-1ubuntu2)
- ca-certificates (20260601~26.04.1)

Additional features:
- Creates a Python virtual environment at `/venv` with hatch for packaging
- Configures DEBEMAIL and DEBFULLNAME environment variables