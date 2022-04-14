FROM php:7-apache
LABEL MAINTAINER GABRIEL
WORKDIR /todo
RUN apt update
RUN apt install zip git nginx -y
COPY config.conf /etc/nginx/conf.d
RUN service nginx enable
RUN service nginx start
RUN docker-php-ext-install pdo_mysql mysqli
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY . .
RUN composer install
CMD [ "php", "artisan", "migrate" ]
CMD [ "php", "artisan", "serve" ]





