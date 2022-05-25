FROM php:7.2-fpm

RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends apt-utils \
 && apt-get install -yqq git zip unzip libpq-dev \
 && apt-get clean -y

RUN curl -Ss https://getcomposer.org/installer | php -- --filename=composer \
 && chmod a+x composer \
 && mv composer /usr/local/bin/composer \
 && composer -q global require hirak/prestissimo

RUN pecl install xdebug \
 && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo pdo_pgsql pgsql

ENV COMPOSER_ROOT_VERSION=2.13.1
# Add custom php config
ADD custom-php.ini /usr/local/etc/php/conf.d/zz-custom-php.ini