# base_golang_1_24

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://hub.docker.com/r/daedalusproject/base_deb_golang_1_24_builder)

This image is based on [base_deb_builder image](/base_deb_builder) and comes with Debian packaging utilities (golang 1.24 flavour).

Packages installed:

 * dh-golang
 * golang-golang-x-sys-dev
 * golang-1.24 (1.24.7-1longsleep1+focal)
 * golang-1.24-go (1.24.7-1longsleep1+focal)
 * make (4.3-4.1build2)
 * git
 * ca-certificates
 * openssl (3.0.13-0ubuntu3.7)
 * clang (1:18.0-59~exp2)
 * sudo (1.9.15p5-3ubuntu5.24.04.1)
 * nfpm (2.43.0)
 * bind9-host (1:9.18.39-0ubuntu0.24.04.2)

Additional features:
 * Creates a symlink from `/usr/lib/go-1.24/bin/go` to `/usr/bin/go`
 * Configures DEBEMAIL and DEBFULLNAME environment variables
