# Limani

[Original Repo](https://git.windmaker.net/a-castellano/limani)

Docker manifests of images used by one or more of my personal projects.

## Available images

### Base images

- [base](/base): base image containing Daedalus Project and Windmaker repos only.

### Utilities

- [base_curl](/base_curl): base image with curl (8.5.0-2ubuntu10.8).
- [base_hugo](/base_hugo): base image with [Hugo](https://gohugo.io/) (0.160.1), [Dart Sass](https://github.com/sass/dart-sass) (1.99.0) in `/usr/local/bin/sass`, rsync (3.2.7-1ubuntu1.2), openssh-client (1:9.6p1-3ubuntu13.15), ca-certificates (20240203), and openssl (3.0.13-0ubuntu3.9).
- [base_xml_utils](/base_xml_utils): base image containing XML utils (libxml2-utils 2.9.14+dfsg-1.3ubuntu3.7, xmlstarlet 1.6.1-4).
- [base_bash_utils](/base_bash_utils): base image containing bash development utils (shellcheck 0.9.0-1, shunit2 2.1.8-4, make 4.3-4.1build2, shfmt 3.8.0-1, bashcov 3.0.3 via RubyGems) with non-root user 'ventus'.
- [base_perl_utils](/base_perl_utils): base image containing perl development utils (libtest-perl-critic-perl 1.04-2) with non-root user 'ventus'.
- [base_percona_client](/base_percona_client): base image with Percona server client (8.4.7-7-1.noble).
- [base_docker](/base_docker): base image with Docker utils installed (docker-ce and docker-ce-cli 5:28.3.2-1~ubuntu.24.04~noble, containerd.io 1.7.27-1, docker-build 0.4-1, git-crypt 0.7.0-0.1build3).
- [base_git](/base_git): base image with git (1:2.43.0-1ubuntu7.3), ca-certificates (20240203), and openssl (3.0.13-0ubuntu3.9).
- [base_openssl](/base_openssl): base image with openssl (3.0.13-0ubuntu3.9) and ca-certificates (20240203) installed.
- [base_golang_1_26](/base_golang_1_26): base image containing Go 1.26 (golang-1.26-go 1.26.2-1longsleep1+jammy), dh-golang, nfpm, make, clang, and related packaging utils.
- [base_nodejs_24](/base_nodejs_24): base image with Node.js 24 from NodeSource (nodejs 24.14.1-1nodesource1).

### Services

- [base_valkey_server](/base_valkey_server): base image containing Valkey server (7.2.12+dfsg1-0ubuntu0.1) with port 6379 exposed.
- [base_rabbitmq_server](/base_rabbitmq_server): base image containing RabbitMQ server (3.12.1-1ubuntu1.2) with custom configuration and ports 4369, 5671, 5672, 25672 exposed.
- [base_percona_server](/base_percona_server): base image with Percona server (8.4.7-7-1.noble) with default password 'L3tm3_in' and port 3306 exposed.
- [base_logrotate](/base_logrotate): base image with cron (3.0pl1-184ubuntu2) and logrotate (3.21.0-2build1).
- [base_caddy](/base_caddy): base image with Caddy web server (2.10.0).
- [base_nginx](/base_nginx): base image with nginx-full (1.24.0-2ubuntu7.6) with ports 80 and 443 exposed.
- [base_php_fpm](/base_php_fpm): base image with PHP 8.3 FPM (8.3.6-0ubuntu0.24.04.8) and common extensions with port 9000 exposed.
- [base_mailhog](/base_mailhog): base image with MailHog (v1.0.1) and stunnel4 (3:5.72-1build2) SSL/TLS tunneling service.

### Packaging

- [base_deb_builder](/base_deb_builder): base image containing Debian packaging utilities (dpkg-dev 1.22.6ubuntu6.5, debhelper 13.14.1ubuntu5, build-essential 12.10ubuntu1, fakeroot 1.33-1, libdebhelper-perl 13.14.1ubuntu5).
- [base_deb_perl_builder](/base_deb_perl_builder): base image containing Debian packaging utilities (perl flavour) with dh-make-perl (0.124) and related modules (e.g. libmodule-build-perl 0.423400-2, libcatalyst-modules-perl 49).
- [base_deb_c_builder](/base_deb_c_builder): base image containing Debian packaging utilities (c flavour) with gcc (4:13.2.0-7ubuntu1), cmake (3.28.3-1build7), bison (2:3.8.2+dfsg-1build2), flex (2.6.4-8.2build1).
- [base_deb_python3_builder](/base_deb_python3_builder): base image containing Debian packaging utilities (python3 flavour) with python3-dev (3.12.3-0ubuntu2.1), python3.12-venv (3.12.3-1ubuntu0.13), python3-pip (24.0+dfsg-1ubuntu1.3), equivs (2.3.1), devscripts (2.23.7ubuntu0.2), and Hatch (1.16.3) in `/venv`.

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
