# Limani

[Orignal Repo](https://git.windmaker.net/a-castellano/limani)

Docker manifests of images used by one or more of my personal projects.

## Available images

### Base images

- [base](/base): base image containing Daedalus Project and Windmaker repos only.

### Utilities

- [base_curl](/base_curl): base image with curl (8.5.0-2ubuntu10.6).
- [base_hugo](/base_hugo): base image with [Hugo](https://gohugo.io/) (0.156.0), rsync, and openssh-client.
- [base_xml_utils](/base_xml_utils): base image containing XML utils (libxml2-utils, xmlstarlet).
- [base_bash_utils](/base_bash_utils): base image containing bash development utils (shellcheck, shunit2, make, shfmt, bashcov) with non-root user 'ventus'.
- [base_perl_utils](/base_perl_utils): base image containing perl development utils (libtest-perl-critic-perl) with non-root user 'ventus'.
- [base_percona_client](/base_percona_client): base image with Percona server client (8.4.7-7-1.noble).
- [base_docker](/base_docker): base image with Docker utils installed (docker-ce, docker-ce-cli, containerd.io, docker-build, git-crypt).
- [base_git](/base_git): base image with git and ca-certificates installed.
- [base_openssl](/base_openssl): base image with openssl (3.0.13-0ubuntu3.9) installed.
- [base_golang_1_26](/base_golang_1_26): base image containing golang 1.26 (1.26.0-1longsleep1+jammy) and packaging utils.
- [base_nodejs_24](/base_nodejs_24): base image containing nodejs24.

### Services

- [base_valkey_server](/base_valkey_server): base image containing Valkey server with port 6379 exposed.
- [base_rabbitmq_server](/base_rabbitmq_server): base image containing RabbitMQ server (3.12.1-1ubuntu1.2) with custom configuration and ports 4369, 5671, 5672, 25672 exposed.
- [base_percona_server](/base_percona_server): base image with Percona server (8.4.7-7-1.noble) with default password 'L3tm3_in' and port 3306 exposed.
- [base_logrotate](/base_logrotate): base image with cron (3.0pl1-184ubuntu2) and logrotate (3.21.0-2build1).
- [base_caddy](/base_caddy): base image with Caddy web server (2.10.0).
- [base_nginx](/base_nginx): base image with nginx web server (1.24.0-2ubuntu7.6) with ports 80 and 443 exposed.
- [base_php_fpm](/base_php_fpm): base image with PHP 8.3 FPM (8.3.6-0ubuntu0.24.04.6) and common extensions with port 9000 exposed.
- [base_mailhog](/base_mailhog): base image with MailHog email testing tool (v1.0.1) and stunnel4 SSL/TLS tunneling service.

### Packaging

- [base_deb_builder](/base_deb_builder): base image containing Debian packaging utilities (dpkg-dev, debhelper, build-essential, fakeroot, libdebhelper-perl).
- [base_deb_perl_builder](/base_deb_perl_builder): base image containing Debian packaging utilities (perl flavour) with dh-make-perl and related modules.
- [base_deb_c_builder](/base_deb_c_builder): base image containing Debian packaging utilities (c flavour) with gcc, cmake, bison, flex.
- [base_deb_python3_builder](/base_deb_python3_builder): base image containing Debian packaging utilities (python3 flavour) with python3-dev, python3-pip, equivs, devscripts.

## Features

All images include:

- Ubuntu 24.04 (Noble) as base
- Windmaker repositories for custom packages
- Optimized layer cleanup and size reduction
- Specific package version pinning for reproducibility
- Environment variable configuration for packaging tools (DEBEMAIL, DEBFULLNAME)

## Build Process

The project uses GitLab CI/CD with a multi-stage build process:

1. **build_base**: Builds the base image
2. **build_base_inherited_images**: First generation images
3. **build_base_inherited_images_2nd_gen**: Second generation images
4. **build_base_inherited_images_3rd_gen**: Third generation images

Images are published to `harbor.windmaker.net/limani/` with the latest tag.
