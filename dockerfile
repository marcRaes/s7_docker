FROM php:8.3-fpm

# Install Symfony requirements
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    libpng-dev \
    unzip \
    && docker-php-ext-install \
    zip \
    pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-install gd

WORKDIR /var/www/html/

COPY --from=composer /usr/bin/composer /usr/bin/composer

# Installation de Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin
