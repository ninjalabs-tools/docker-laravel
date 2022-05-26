FROM php:8-apache
RUN apt-get update \
        && apt-get install -y libonig-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
        && docker-php-ext-configure gd --with-freetype --with-jpeg \
        && docker-php-ext-install pdo_mysql mbstring -j$(nproc) gd exif
