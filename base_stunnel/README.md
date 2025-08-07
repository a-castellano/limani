# base_stunnel

This image is based on [base image](/base) comes with stunnel installed.

Packages installed:

- stunnel4

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

The container includes a script `run_stunnel.sh` that dynamically configures stunnel based on environment variables:

### Required Environment Variables

- `STUNNEL_SERVICE`: Name of the stunnel service
- `STUNNEL_ACCEPT`: Port to accept connections on (e.g., 8443)
- `STUNNEL_CONNECT`: Target host:port to connect to (e.g., 127.0.0.1:8080)
- `STUNNEL_PROTO`: Protocol to use (e.g., https)

### Example Usage

```bash
docker run -d \
  -e STUNNEL_SERVICE=myapp \
  -e STUNNEL_ACCEPT=8443 \
  -e STUNNEL_CONNECT=127.0.0.1:8080 \
  -e STUNNEL_PROTO=https \
  -p 8443:8443 \
  registry.windmaker.net:5005/a-castellano/limani/base_stunnel:latest
```

This will create a stunnel configuration that accepts HTTPS connections on port 8443 and forwards them to the target service.

**Note**: The container has a default `CMD` that runs `/usr/local/bin/run_stunnel.sh`, so you don't need to specify the command explicitly.
