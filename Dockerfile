FROM php:8.2-apache
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql \
    && a2enmod rewrite
COPY ./docker/apache/apache.conf /etc/apache2/sites-available/000-default.conf
WORKDIR /var/www/html
RUN mkdir -p /var/www/html/frontoffice/images && chmod 775 /var/www/html/frontoffice/images
