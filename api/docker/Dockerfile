FROM php:8.4-fpm

ADD https://github.com/mlocati/docker-php-extension-installer/releases/download/2.1.10/install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y git

RUN chmod +x /usr/local/bin/install-php-extensions  \
    && sync && \
    install-php-extensions gd zip soap pdo pdo_mysql pdo_pgsql xml curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/api
