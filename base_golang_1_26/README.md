# base_golang_1_26

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_golang_1_26)

Golang 1.26 image with Debian packaging tools (dh-golang, nfpm, make, clang). Based on base_deb_builder.


Packages installed:
- git (1:2.43.0-1ubuntu7.3)
- nfpm (2.43.0)
- golang-golang-x-sys-dev (0.17.0-1)
- sudo (1.9.15p5-3ubuntu5.24.04.2)
- clang-20 (1:20.1.2-0ubuntu1~24.04.3)
- golang-1.26 (1.26.4-1longsleep1+jammy)
- make (4.3-4.1build2)
- libclang-rt-20-dev (1:20.1.2-0ubuntu1~24.04.3)
- bind9-host (1:9.18.39-0ubuntu0.24.04.5)
- golang-1.26-go (1.26.4-1longsleep1+jammy)
- ca-certificates (20260601~24.04.1)
- dh-golang (1.62)
- openssl (3.0.13-0ubuntu3.11)

Additional features:
- Symlink for go binary and DEBEMAIL/DEBFULLNAME in bashrc
- Golang backports PPA and many pinned packages