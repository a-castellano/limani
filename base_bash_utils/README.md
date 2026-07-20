# base_bash_utils

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_bash_utils)

This image is based on [base image](/base) and comes with bash development utils installed.


Packages installed:
- sudo (1.9.17p2-1ubuntu3)
- ruby (1:3.3build1)
- shunit2 (2.1.8-4build1)
- make (4.4.1-3)
- shfmt (3.12.0-1)
- shellcheck (0.11.0-2)
- ca-certificates (20260601~26.04.1)

Additional features:
- Creates a non-root user 'ventus' with sudo privileges
- Runs as user 'ventus' by default