# base_php_fpm

This image is based on [base image](/base) and comes with PHP 8.3 FPM and various extensions installed.

Packages installed:

- php8.3-bcmath (8.3.6-0ubuntu0.24.04.6)
- php8.3-bz2 (8.3.6-0ubuntu0.24.04.6)
- php8.3-cli (8.3.6-0ubuntu0.24.04.6)
- php8.3-common (8.3.6-0ubuntu0.24.04.6)
- php8.3-curl (8.3.6-0ubuntu0.24.04.6)
- php8.3-fpm (8.3.6-0ubuntu0.24.04.6)
- php8.3-gd (8.3.6-0ubuntu0.24.04.6)
- php8.3-gmp (8.3.6-0ubuntu0.24.04.6)
- php8.3-igbinary (3.2.13-1ubuntu3)
- php8.3-imagick (3.7.0-4ubuntu3)
- php8.3-intl (8.3.6-0ubuntu0.24.04.6)
- php8.3-mbstring (8.3.6-0ubuntu0.24.04.6)
- php8.3-mysql (8.3.6-0ubuntu0.24.04.6)
- php8.3-opcache (8.3.6-0ubuntu0.24.04.6)
- php8.3-readline (8.3.6-0ubuntu0.24.04.6)
- php8.3-redis (5.3.7+4.3.0-3ubuntu1)
- php8.3-xml (8.3.6-0ubuntu0.24.04.6)
- php8.3-zip (8.3.6-0ubuntu0.24.04.6)
- openssl (openssl=3.0.13-0ubuntu3.6)

Additional features:

- Exposes port 9000 (PHP-FPM)
- Runs PHP-FPM in foreground mode
- Includes commonly used PHP extensions for web development

## Usage

### Basic Usage

```bash
docker run -d \
  -p 9000:9000 \
  limani.windmaker.net/limani/base_php_fpm:latest
```

### With Custom PHP Configuration

You can mount your own PHP configuration:

```bash
docker run -d \
  -p 9000:9000 \
  -v /path/to/php.ini:/etc/php/8.3/fpm/php.ini:ro \
  -v /path/to/www.conf:/etc/php/8.3/fpm/pool.d/www.conf:ro \
  limani.windmaker.net/limani/base_php_fpm:latest
```

### With Nginx (using base_nginx)

```bash
# Run PHP-FPM
docker run -d \
  --name php-fpm \
  -v /path/to/php:/var/www/html:ro \
  limani.windmaker.net/limani/base_php_fpm:latest

# Run Nginx and connect to PHP-FPM
docker run -d \
  --name nginx \
  -p 80:80 \
  -v /path/to/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /path/to/php:/usr/share/nginx/html:ro \
  --link php-fpm:php-fpm \
  limani.windmaker.net/limani/base_nginx:latest
```

## Ports

- **9000**: PHP-FPM port

## Configuration

The default PHP-FPM configuration is located at `/etc/php/8.3/fpm/php-fpm.conf`. The pool configuration is at `/etc/php/8.3/fpm/pool.d/www.conf`.

You can override these by mounting custom configuration files.
