# Limani

[Original Repo](https://git.windmaker.net/a-castellano/limani)

Docker manifests of images used by one or more of my personal projects.

## Available images

### Base images

- [base](/base): base image based on Ubuntu Resolute, only the Windmaker repositories are added.

### Utilities

- [base_curl](/base_curl): base image with curl (8.18.0-1ubuntu2.4), ca-certificates (20260601~26.04.1), and openssl (3.5.5-1ubuntu3.4).
- [base_hugo](/base_hugo): image based on base_golang_1_26 with [Hugo](https://gohugo.io/) (0.164.0), [Dart Sass](https://github.com/sass/dart-sass) (1.99.0) in `/usr/local/bin/sass`, rsync (3.4.1+ds1-7ubuntu0.3), openssh-client (1:10.2p1-2ubuntu3.5), ca-certificates (20260601~26.04.1), and openssl (3.5.5-1ubuntu3.4).
- [base_xml_utils](/base_xml_utils): base image containing XML utils (libxml2-utils 2.15.2+dfsg-0.1ubuntu0.1, xmlstarlet 1.6.1-5build1).
- [base_bash_utils](/base_bash_utils): base image containing bash development utils (shellcheck 0.11.0-2, shunit2 2.1.8-4build1, make 4.4.1-3, shfmt 3.12.0-1, ruby 1:3.3build1, sudo 1.9.17p2-1ubuntu3, bashcov 3.0.3 via RubyGems) with passwordless-sudo non-root user 'ventus'.
- [base_perl_utils](/base_perl_utils): base image containing perl development utils (libtest-perl-critic-perl 1.04-3) with non-root user 'ventus'.
- [base_percona_client](/base_percona_client): base image with Percona server client (8.4.11-11-1.resolute) and daedalus-project-mysql-utils (0.4-7).
- [base_docker](/base_docker): base image with Docker utils installed (docker-ce and docker-ce-cli 5:29.7.2-1~ubuntu.26.04~resolute, containerd.io 2.3.4-1~ubuntu.26.04~resolute, docker-build 0.4-1, git-crypt 0.8.0-1).
- [base_git](/base_git): base image with git (1:2.53.0-1ubuntu1), ca-certificates (20260601~26.04.1), and openssl (3.5.5-1ubuntu3.4).
- [base_openssl](/base_openssl): base image with openssl (3.5.5-1ubuntu3.4) and ca-certificates (20260601~26.04.1) installed.
- [base_golang_1_26](/base_golang_1_26): image based on base_deb_builder containing Go 1.26 (golang-1.26 and golang-1.26-go 1.26.7-1longsleep1+jammy), dh-golang (1.63build1), nfpm (2.47.0), make (4.4.1-3), clang (1:21.1.6-71), git-crypt (0.8.0-1), and related packaging utils.
- [base_golang_1_27](/base_golang_1_27): image based on base_deb_builder containing Go 1.27 (golang-1.27 and golang-1.27-go 1.27.0-1longsleep1+jammy), dh-golang (1.63build1), nfpm (2.47.0), make (4.4.1-3), clang (1:21.1.6-71), git-crypt (0.8.0-1), and related packaging utils.
- [base_nodejs_24](/base_nodejs_24): base image with Node.js 24 from NodeSource (nodejs 24.20.0-1nodesource1).

### Services

- [base_valkey_server](/base_valkey_server): base image containing Valkey server (9.0.4-0ubuntu0.1) with port 6379 exposed.
- [base_rabbitmq_server](/base_rabbitmq_server): base image containing RabbitMQ server (4.0.5-10ubuntu5) with custom configuration and ports 4369, 5671, 5672, 25672 exposed.
- [base_percona_server](/base_percona_server): base image with Percona server (8.4.11-11-1.resolute) and percona-telemetry-agent (1.0.14-1.resolute), default password 'L3tm3_in', runs as user 'mysql' with port 3306 exposed.
- [base_logrotate](/base_logrotate): base image with cron (3.0pl1-200ubuntu1) and logrotate (3.22.0-1build1).
- [base_caddy](/base_caddy): base image with Caddy web server (2.11.4).
- [base_nginx](/base_nginx): base image with nginx-full (1.28.3-2ubuntu1.10) with ports 80 and 443 exposed.
- [base_php_fpm](/base_php_fpm): base image with PHP 8.5 FPM (8.5.4-0ubuntu1.2) and common extensions with port 9000 exposed.
- [base_mailhog](/base_mailhog): image based on base_golang_1_26 with MailHog (v1.0.1) and stunnel4 (3:5.77-1) SSL/TLS tunneling service.
- [base_otelcol](/base_otelcol): base image with the OpenTelemetry Collector Contrib distribution (otelcol-contrib 0.157.0) with ports 4317, 4318 and 55679 exposed.

### Packaging

- [base_deb_builder](/base_deb_builder): base image containing Debian packaging utilities (dpkg-dev 1.23.7ubuntu1, debhelper 13.31ubuntu1, build-essential 12.12ubuntu2.26.04.2, fakeroot 1.37.2-1, libdebhelper-perl 13.31ubuntu1).
- [base_deb_perl_builder](/base_deb_perl_builder): base image containing Debian packaging utilities (perl flavour) with dh-make-perl (0.130) and related modules (e.g. libmodule-build-perl 0.423400-3, libcatalyst-modules-perl 49).
- [base_deb_c_builder](/base_deb_c_builder): base image containing Debian packaging utilities (c flavour) with gcc (4:15.2.0-5ubuntu1), cmake (4.2.3-2ubuntu2), bison (2:3.8.2+dfsg-1build4), flex (2.6.4-8.2build2).
- [base_deb_python3_builder](/base_deb_python3_builder): base image containing Debian packaging utilities (python3 flavour) with python3-dev (3.14.3-0ubuntu2), python3.14-venv (3.14.4-1ubuntu0.1), python3-pip (25.1.1+dfsg-1ubuntu2), equivs (2.3.2build1), devscripts (2.26.7), and Hatch (1.17.1) in `/venv`.

## Features

All images include:

- Ubuntu 26.04 (Resolute Raccoon) as base
- Windmaker repositories for custom packages
- Optimized layer cleanup and size reduction
- Specific package version pinning for reproducibility
- Environment variable configuration for packaging tools (DEBEMAIL, DEBFULLNAME)

Every image directory holds a `Dockerfile`, a `README.md` and a `<image_name>.json` manifest; Dockerfiles are generated from those manifests using [karavomarangos](https://git.windmaker.net/a-castellano/karavomarangos).

## Build Process

The project uses GitLab CI/CD with a multi-stage build process:

1. **build_base**: Builds the base image
2. **build_base_inherited_images**: First generation images, built directly from `base` (base_curl, base_git, base_openssl, base_nodejs_24, base_xml_utils, base_bash_utils, base_perl_utils, base_docker, base_logrotate, base_caddy, base_nginx, base_php_fpm, base_otelcol, base_valkey_server, base_rabbitmq_server, base_percona_server, base_percona_client, base_deb_builder)
3. **build_base_inherited_images_2nd_gen**: Second generation images (base_golang_1_26, base_golang_1_27, base_deb_perl_builder, base_deb_c_builder, base_deb_python3_builder)
4. **build_base_inherited_images_3rd_gen**: Third generation images built on top of base_golang_1_26 (base_hugo, base_mailhog)

Images are published to `harbor.windmaker.net/limani/` with the latest tag.
