FROM docker.io/php:7.4-apache

ENV version="3.12.0"
LABEL maintainer="burnedvpn"

RUN apt update && apt install -y \
  libzip-dev \
  wget \
  && rm -rf /var/lib/apt/lists/* \
  && pecl install zip \
  && docker-php-ext-enable zip \
  && wget https://github.com/DirectoryLister/DirectoryLister/releases/download/${version}/DirectoryLister-${version}.tar.gz -O - | tar -xz \
  && chown -R 33:33 /var/www/html
