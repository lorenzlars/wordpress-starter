FROM wordpress

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
