FROM php:8.2-fpm
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y git unzip libonig-dev libzip-dev zip curl
RUN docker-php-ext-install pdo pdo_mysql mbstring zip
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY . /var/www/html
RUN composer install --no-dev --optimize-autoloader
RUN chown -R www-data:www-data /var/www/html
