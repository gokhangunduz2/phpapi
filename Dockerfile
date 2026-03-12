FROM ubuntu:22.04

RUN apt update && apt install -y \
    nginx \
    php-fpm \
    php-mysql \
    curl

COPY app /var/www/html
COPY nginx/default.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD service php8.1-fpm start && nginx -g "daemon off;"
