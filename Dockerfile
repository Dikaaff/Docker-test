FROM php:8.1-cli
COPY . /var/www/html
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y unzip git \
 && curl -sS https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer install
CMD ["php", "-S", "0.0.0.0:8000"]
