# base_golang_1_27

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_golang_1_27)

Golang 1.27 image with Debian packaging tools (dh-golang, nfpm, make, clang). Based on base_deb_builder.


Packages installed:
- git (1:2.53.0-1ubuntu1)
- nfpm (2.47.0)
- golang-golang-x-sys-dev (0.38.0-1)
- sudo (1.9.17p2-1ubuntu3)
- libclang-rt-18-dev (1:18.1.8-20ubuntu8)
- golang-1.27 (1.27.0-1longsleep1+jammy)
- make (4.4.1-3)
- clang (1:21.1.6-71)
- git-crypt (0.8.0-1)
- golang-1.27-go (1.27.0-1longsleep1+jammy)
- bind9-host (1:9.20.24-1ubuntu0.2)
- ca-certificates (20260601~26.04.1)
- dh-golang (1.63build1)
- openssl (3.5.5-1ubuntu3.4)

Additional features:
- Symlink for go binary and DEBEMAIL/DEBFULLNAME in bashrc
- Golang backports PPA and many pinned packages