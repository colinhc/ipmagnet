FROM php:7.4.7-apache

RUN docker-php-ext-install pdo

COPY static /var/www/html/static
COPY index.php /var/www/html
COPY ipmagnet.db3 /var/www/html
COPY sample.htaccess /var/www/html/.htaccess

EXPOSE 80
