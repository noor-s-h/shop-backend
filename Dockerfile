FROM php:apache

RUN apt-get update && apt-get install -y php-mysql

COPY . .

RUN a2enmod rewrite headers

RUN chown -R www-data:www-data /var/www

USER www-data
