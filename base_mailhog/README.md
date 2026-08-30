# base_mailhog

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_mailhog)

Image based on base_golang_1_26 with MailHog and stunnel for email testing.


Packages installed:
- stunnel4 (3:5.77-1)
- ca-certificates (20260601~26.04.1)
- openssl (3.5.5-1ubuntu3.4)

Additional features:
- Packages: stunnel4, MailHog (v1.0.1) - Email testing tool
- Self-signed certificate generated at build: Country ES, State Castellón, City Castelló de la Plana, Organization Windmaker, OU IT, CN mail.windmaker.net, Email alvaro@windmaker.net, validity 3650 days (10 years), location /etc/stunnel/stunnel.pem
- Certificate includes both cert and private key in a single PEM file
- Script run_mailhog_and_stunnel.sh starts MailHog and configures stunnel from environment variables
- Required env vars: STUNNEL_SERVICE (stunnel service name), STUNNEL_ACCEPT (port to accept, e.g. 8443)
- Example: docker run -d -e STUNNEL_SERVICE=mailhog -e STUNNEL_ACCEPT=8443 -p 8443:8443 -p 1025:1025 -p 8025:8025 harbor.windmaker.net/limani/base_mailhog:latest
- MailHog on port 1025 (SMTP) and 8025 (Web UI); stunnel accepts SSL/TLS on 8443 and forwards to MailHog 1025
- Web UI at http://localhost:8025 to view captured emails
- Default CMD runs /usr/local/bin/run_mailhog_and_stunnel.sh
- Ports: 8443 SSL/TLS SMTP (stunnel), 1025 plain SMTP (MailHog), 8025 Web UI (MailHog)