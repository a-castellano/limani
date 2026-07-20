# base_golang_1_26

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_golang_1_26)

Golang 1.26 image with Debian packaging tools (dh-golang, nfpm, make, clang). Based on base_deb_builder.


Packages installed:
- git (1:2.53.0-1ubuntu1)
- nfpm (2.43.0)
- golang-golang-x-sys-dev (0.38.0-1)
- sudo (1.9.17p2-1ubuntu3)
- libclang-rt-18-dev (1:18.1.8-20ubuntu8)
- golang-1.26 (1.26.4-1longsleep1+jammy)
- make (4.4.1-3)
- clang (1:21.1.6-71)
- bind9-host (1:9.20.18-1ubuntu2.1)
- golang-1.26-go (1.26.4-1longsleep1+jammy)
- ca-certificates (20260601~26.04.1)
- dh-golang (1.63build1)
- openssl (3.5.5-1ubuntu3.2)

Additional features:
- Symlink for go binary and DEBEMAIL/DEBFULLNAME in bashrc
- Golang backports PPA and many pinned packages