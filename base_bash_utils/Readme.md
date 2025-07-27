# base_bash_utils

This image is based on [base image](/base) and comes with bash development utils installed.

Packages installed:

 * shellcheck (0.9.0-1)
 * shunit2 (2.1.8-4)
 * make (4.3-4.1build2)
 * ruby (1:3.2~ubuntu1)
 * sudo (1.9.15p5-3ubuntu5.24.04.1)
 * shfmt (3.8.0-1)
 * bashcov (3.0.3) - installed via gem

Additional features:
 * Creates a non-root user 'ventus' with sudo privileges
 * Runs as user 'ventus' by default
