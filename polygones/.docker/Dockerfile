FROM php:7.1-fpm

RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends apt-utils \
 && apt-get install -yqq git zip unzip

RUN curl -Ss https://getcomposer.org/installer | php -- --filename=composer \
 && chmod a+x composer \
 && mv composer /usr/local/bin/composer \
 && composer -q global require hirak/prestissimo

RUN pecl install xdebug \
 && docker-php-ext-enable xdebug \
 && docker-php-ext-install bcmath


# Add custom php config
ADD custom-php.ini /usr/local/etc/php/conf.d/zz-custom-php.ini