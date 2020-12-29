# Limani

[Orignal Repo](https://git.windmaker.net/a-castellano/limani)

Docker manifests of images used by one or more of my personal projects.

## Available images

### Base images

* [base](/base): base image containing Daedalus Project and Windmaker repos only.

### Utilities

* [base_curl](/base_curl): base image with curl.
* [base_node8](/base_node8): base image with nodejs 8 LTS.
* [base_node12](/base_node12): base image with nodejs 12 LTS.
* [base_hugo](/base_hugo): base image with [Hugo](https://gohugo.io/).
* [base_xml_utils](/base_xml_utils): base image containing XML utils.
* [base_bash_utils](/base_bash_utils): base image containing bash development utils.
* [base_perl_utils](/base_perl_utils): base image containing perl development utils.
* [base_percona_client](/base_percona_client): base image with Percona server client.
* [base_docker](/base_docker): base image with Docker utils installed.
* [base_git](/base_git): base image with git installed.
* [base_openssl](/base_openssl): base image with openssl installed.

### Services

* [base_nginx_light](/base_nginx_light): base image with Nginx (light flavour).
* [base_nginx_daedalus_light](/base_nginx_daedalus_light): base image with Nginx (daedalus light flavour).
* [base_redis_server](/base_redis_server): base image containing Redis server.
* [base_rabbitmq_server](/base_rabbitmq_server): base image containing Rabbitmq server.
* [base_percona_server](/base_percona_server): base image with Percona server.
* [base_logrotate](/base_logrotate): base image with cron and logrotate.

### Logging

* [base_td_agent](/base_td_agent): base image with td-agent installed.
* [base_td_agent_bit](/base_td_agent_bit): base image with td-agent-bit installed.

### Packaging

* [base_deb_builder](/base_deb_builder): base image containing Debian packaging utilities.
* [base_deb_perl_builder](/base_deb_perl_builder): base image containing Debian packaging utilities (perl flavour).
* [base_deb_c_builder](/base_deb_c_builder): base image containing Debian packaging utilities (c flavour).
* [base_deb_golang_1_13_builder](/base_deb_golang_1_13_builder): base image containing Debian packaging utilities (golang 1.13 flavour).
* [base_deb_golang_1_14_builder](/base_deb_golang_1_14_builder): base image containing Debian packaging utilities (golang 1.14 flavour).
* [base_deb_golang_1_15_builder](/base_deb_golang_1_15_builder): base image containing Debian packaging utilities (golang 1.15 flavour).
* [base_deb_python3_builder](/base_deb_python3_builder): base image containing Debian packaging utilities (python3 flavour).

### Misc

* [base_daedaluscore](/base_daedaluscore): base image with [Daedalus Core](https://git.daedalus-project.io/daedalusproject/Daedalus-Core) dependences.
* [base_java_11](/base_java_11): base image with openjdk-11-jdk-headless installed.
* [base_golang_1_13](/base_golang_1_13): base image with golang 1.13 installed.
* [base_golang_1_14](/base_golang_1_14): base image with golang 1.14 installed.
* [base_golang_1_15](/base_golang_1_15): base image with golang 1.15 installed.
* [base_selenium](/base_selenium): base image with selenium installed.
* [base_selenium_grid](/base_selenium_grid): base image running Selenium grid.
* [base_selenium_chrome](/base_selenium_chrome): base image running Selenium using Chromedriver.

## Develop images

* [base](/base_develop): base image containing Daedalus Project testing and Windmaker repos only.
* [base_develop_hugo](/base_develop_hugo): base develop image with [Hugo](https://gohugo.io/).
* [base_develop_percona_server](/base_develop_percona_server): base develop image with Percona server.
* [base_develop_nginx_light](/base_develop_nginx_light): base develop image with Nginx (light flavour).
* [base_develop_nginx_daedalus_light](/base_develop_nginx_daedalus_light): base develop image with Nginx (daedalus light flavour).

