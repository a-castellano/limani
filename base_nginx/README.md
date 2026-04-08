# base_nginx

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_nginx)

This image is based on base and comes with nginx installed.


Packages installed:
- nginx-full (1.24.0-2ubuntu7.6)
- ca-certificates (20240203)
- openssl (3.0.13-0ubuntu3.9)

Additional features:
- Exposes ports 80 (HTTP) and 443 (HTTPS)
- Logs redirected to stdout/stderr for Docker logging
- Runs nginx in foreground mode (daemon off)
- Nginx cache directories cleaned during build
- Basic usage: docker run -d -p 80:80 -p 443:443 harbor.windmaker.net/limani/base_nginx:latest
- With custom config: mount nginx.conf to /etc/nginx/nginx.conf and html to /usr/share/nginx/html
- With custom site: mount default to /etc/nginx/sites-available/default and html to /usr/share/nginx/html
- Ports: 80 HTTP, 443 HTTPS
- Default nginx config at /etc/nginx/nginx.conf; override by mounting custom config
- Default web root at /usr/share/nginx/html