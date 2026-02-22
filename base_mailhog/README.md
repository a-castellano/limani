# base_mailhog

This image is based on [base_golang_1_26](/base_golang_1_26) and comes with MailHog and stunnel installed.

Packages installed:

- stunnel4
- MailHog (v1.0.1) - Email testing tool

## Certificate

The image generates a self-signed certificate with the following details:

- **Country**: ES
- **State**: Castellón
- **City**: Castelló de la Plana
- **Organization**: Windmaker
- **Organizational Unit**: IT
- **Common Name**: mail.windmaker.net
- **Email**: alvaro@windmaker.net
- **Validity**: 3650 days (10 years)
- **Location**: `/etc/stunnel/stunnel.pem`

The certificate is automatically generated during the build process and includes both the certificate and private key in a single PEM file.

## Usage

The container includes a script `run_mailhog_and_stunnel.sh` that starts both MailHog and configures stunnel based on environment variables:

### Required Environment Variables

- `STUNNEL_SERVICE`: Name of the stunnel service
- `STUNNEL_ACCEPT`: Port to accept connections on (e.g., 8443)

### Example Usage

```bash
docker run -d \
  -e STUNNEL_SERVICE=mailhog \
  -e STUNNEL_ACCEPT=8443 \
  -p 8443:8443 \
  -p 1025:1025 \
  -p 8025:8025 \
  harbor.windmaker.net/limani/base_mailhog:latest
```

This will:

- Start MailHog on port 1025 (SMTP) and 8025 (Web UI)
- Configure stunnel to accept SSL/TLS connections on port 8443 and forward them to MailHog on port 1025
- Provide a web interface at `http://localhost:8025` to view captured emails

**Note**: The container has a default `CMD` that runs `/usr/local/bin/run_mailhog_and_stunnel.sh`, so you don't need to specify the command explicitly.

## Ports

- **8443**: SSL/TLS SMTP port (stunnel)
- **1025**: Plain SMTP port (MailHog)
- **8025**: Web UI port (MailHog)
