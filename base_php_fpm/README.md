# base_php_fpm

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_php_fpm)

This image is based on [base image](/base) and comes with PHP 8.3 FPM and various extensions installed.


Packages installed:
- php8.3-cli (8.3.6-0ubuntu0.24.04.9)
- php8.3-curl (8.3.6-0ubuntu0.24.04.9)
- php8.3-gmp (8.3.6-0ubuntu0.24.04.9)
- php8.3-bcmath (8.3.6-0ubuntu0.24.04.9)
- php8.3-zip (8.3.6-0ubuntu0.24.04.9)
- php8.3-mysql (8.3.6-0ubuntu0.24.04.9)
- php8.3-imagick (3.7.0-4ubuntu3)
- php8.3-xml (8.3.6-0ubuntu0.24.04.9)
- php8.3-gd (8.3.6-0ubuntu0.24.04.9)
- php8.3-mbstring (8.3.6-0ubuntu0.24.04.9)
- php8.3-opcache (8.3.6-0ubuntu0.24.04.9)
- php8.3-igbinary (3.2.13-1ubuntu3)
- php8.3-bz2 (8.3.6-0ubuntu0.24.04.9)
- php8.3-fpm (8.3.6-0ubuntu0.24.04.9)
- php8.3-intl (8.3.6-0ubuntu0.24.04.9)
- php8.3-pgsql (8.3.6-0ubuntu0.24.04.9)
- php8.3-redis (5.3.7+4.3.0-3ubuntu1)
- php8.3-readline (8.3.6-0ubuntu0.24.04.9)
- ca-certificates (20240203)
- openssl (3.0.13-0ubuntu3.9)
- php8.3-common (8.3.6-0ubuntu0.24.04.9)

Additional features:
- Port 9000 exposed
- The default PHP-FPM configuration is located at `/etc/php/8.3/fpm/php-fpm.conf`. The pool configuration is at `/etc/php/8.3/fpm/pool.d/www.conf`.