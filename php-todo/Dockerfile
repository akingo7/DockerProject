FROM php:7-apache
LABEL MAINTAINER GABRIEL
WORKDIR /todo
RUN apt update
RUN apt install zip git nginx -y
COPY config.conf /etc/nginx/conf.d
COPY nginx-start /usr/local/bin
RUN service nginx start
RUN docker-php-ext-install pdo_mysql mysqli
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY . .
RUN composer install
CMD [ "php", "artisan", "migrate" ]
CMD [ "php", "artisan", "serve"]
#RUN nginx-start
#CMD [ "nginx", "-g", "daemon off;" ]
#RUN nginx -g daemon off;
#CMD ["nginx-start"]
