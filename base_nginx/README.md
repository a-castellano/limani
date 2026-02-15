# base_nginx

This image is based on [base image](/base) and comes with nginx installed.

Packages installed:

 * nginx-full (1.24.0-2ubuntu7.6)

Additional features:

 * Exposes ports 80 (HTTP) and 443 (HTTPS)
 * Logs are redirected to stdout/stderr for Docker logging
 * Runs nginx in foreground mode (daemon off)
 * Nginx cache directories are cleaned during build

## Usage

### Basic Usage

```bash
docker run -d \
  -p 80:80 \
  -p 443:443 \
  limani.windmaker.net/limani/base_nginx:latest
```

### With Custom Configuration

You can mount your own nginx configuration:

```bash
docker run -d \
  -p 80:80 \
  -p 443:443 \
  -v /path/to/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /path/to/html:/usr/share/nginx/html:ro \
  limani.windmaker.net/limani/base_nginx:latest
```

### With Custom Site Configuration

```bash
docker run -d \
  -p 80:80 \
  -p 443:443 \
  -v /path/to/default:/etc/nginx/sites-available/default:ro \
  -v /path/to/html:/usr/share/nginx/html:ro \
  limani.windmaker.net/limani/base_nginx:latest
```

## Ports

- **80**: HTTP port
- **443**: HTTPS port

## Configuration

The default nginx configuration is located at `/etc/nginx/nginx.conf`. You can override it by mounting a custom configuration file.

The default web root is `/usr/share/nginx/html`.
