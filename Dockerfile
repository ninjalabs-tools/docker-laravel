FROM php:8-apache
RUN apt-get update && apt-get install libonig-dev && 
docker-php-ext-install pdo_mysql mbstring
