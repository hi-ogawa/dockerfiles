FROM debian:bullseye-20220328-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29

RUN echo 'deb http://repo.mysql.com/apt/debian/ bullseye mysql-tools' > /etc/apt/sources.list.d/mysql.list
RUN apt-get update
RUN apt-get install -y --no-install-recommends mysql-shell
