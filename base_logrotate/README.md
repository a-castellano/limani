# base_logrotate

[![Docker image](https://img.shields.io/badge/docker-latest-blue.svg)](https://harbor.windmaker.net/harbor/projects/2/repositories/base_logrotate)

 This image is based on [base image](/base) and comes with cron and logrotate installed.


Packages installed:
- cron (3.0pl1-200ubuntu1)
- logrotate (3.22.0-1build1)

Additional features:
- Used as sidecar for log rotation in our applications.