# Limani

[Orignal Repo](https://git.windmaker.net/a-castellano/limani)

Docker manifests of images used by one or more of my personal projects.

## Available images

### Base images

* [base](/base): base image containing Daedalus Project and Windmaker repos only.

### Utilities

* [base_curl](/base_curl): base image with curl.
* [base_hugo](/base_hugo): base image with [Hugo](https://gohugo.io/).
* [base_xml_utils](/base_xml_utils): base image containing XML utils.
* [base_bash_utils](/base_bash_utils): base image containing bash development utils.
* [base_perl_utils](/base_perl_utils): base image containing perl development utils.
* [base_percona_client](/base_percona_client): base image with Percona server client.
* [base_docker](/base_docker): base image with Docker utils installed.
* [base_git](/base_git): base image with git installed.
* [base_openssl](/base_openssl): base image with openssl installed.
* [base_golang_1_22](/base_golang_1_22): base image containing golang 1.22 and packaging utils.

### Services

* [base_redis_server](/base_redis_server): base image containing Redis server.
* [base_rabbitmq_server](/base_rabbitmq_server): base image containing Rabbitmq server.
* [base_percona_server](/base_percona_server): base image with Percona server.
* [base_logrotate](/base_logrotate): base image with cron and logrotate.

### Packaging

* [base_deb_builder](/base_deb_builder): base image containing Debian packaging utilities.
* [base_deb_perl_builder](/base_deb_perl_builder): base image containing Debian packaging utilities (perl flavour).
* [base_deb_c_builder](/base_deb_c_builder): base image containing Debian packaging utilities (c flavour).
* [base_deb_python3_builder](/base_deb_python3_builder): base image containing Debian packaging utilities (python3 flavour).
