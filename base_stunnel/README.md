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
