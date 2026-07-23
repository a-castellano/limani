# base_php_fpm

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_php_fpm)

This image is based on [base image](/base) and comes with PHP 8.3 FPM and various extensions installed.


Packages installed:
- php8.5-common (8.5.4-0ubuntu1.2)
- php8.5-imagick (3.8.0-3ubuntu1)
- php8.5-gd (8.5.4-0ubuntu1.2)
- php8.5-igbinary (3.2.16-4ubuntu1)
- php8.5-zip (8.5.4-0ubuntu1.2)
- php8.5-mysql (8.5.4-0ubuntu1.2)
- php8.5-intl (8.5.4-0ubuntu1.2)
- php8.5-gmp (8.5.4-0ubuntu1.2)
- php8.5-bz2 (8.5.4-0ubuntu1.2)
- php8.5-xml (8.5.4-0ubuntu1.2)
- php8.5-fpm (8.5.4-0ubuntu1.2)
- php8.5-curl (8.5.4-0ubuntu1.2)
- php8.5-mbstring (8.5.4-0ubuntu1.2)
- php8.5-bcmath (8.5.4-0ubuntu1.2)
- php8.5-cli (8.5.4-0ubuntu1.2)
- php8.5-pgsql (8.5.4-0ubuntu1.2)
- php8.5-readline (8.5.4-0ubuntu1.2)
- ca-certificates (20260601~26.04.1)
- php8.5-redis (6.2.0-1ubuntu1)
- openssl (3.5.5-1ubuntu3.2)

Additional features:
- Port 9000 exposed
- The default PHP-FPM configuration is located at `/etc/php/8.5/fpm/php-fpm.conf`. The pool configuration is at `/etc/php/8.5/fpm/pool.d/www.conf`.