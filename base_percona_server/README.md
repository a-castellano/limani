# base_percona_server

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_percona_server)

This image is based on [base image](/base) and comes with percona-server-server installed.

Packages installed:

 * percona-server-server (8.4.7-7-1.noble)
 * daedalus-project-mysql-utils (0.4-7)
 * percona-telemetry-agent

Additional features:
 * Default root password is *L3tm3_in*
 * Runs as user 'mysql'
 * Exposes port 3306
 * Binds to all interfaces (0.0.0.0)
 * Disables name resolution
 * Disables Percona telemetry
