# base_bash_utils

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_bash_utils)

This image is based on [base image](/base) and comes with bash development utils installed.


Packages installed:
- sudo (1.9.15p5-3ubuntu5.24.04.2)
- ruby (1:3.2~ubuntu1)
- shunit2 (2.1.8-4)
- make (4.3-4.1build2)
- shfmt (3.8.0-1)
- shellcheck (0.9.0-1)
- ca-certificates (20240203)

Additional features:
- Creates a non-root user 'ventus' with sudo privileges
- Runs as user 'ventus' by default