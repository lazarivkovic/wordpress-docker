FROM wordpress:php7.4-fpm
LABEL MAINTAINER - Lazar <lazar.ivkovic@syncitgroup.com>

RUN apt-get update

RUN apt-get install -y --no-install-recommends curl \
	wget \
	unzip \
	tar

## Install php-redis

RUN mkdir -p /usr/src/php/ext/redis \
    && curl -L https://github.com/phpredis/phpredis/archive/5.3.4.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && echo 'redis' >> /usr/src/php-available-exts \
    && docker-php-ext-install redis

##

WORKDIR /var/www/html

