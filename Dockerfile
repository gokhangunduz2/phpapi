FROM php:8.2-fpm-alpine

RUN apk add --no-cache nginx

WORKDIR /var/www/html

COPY app/ /var/www/html
COPY nginx/default.conf /etc/nginx/http.d/default.conf

EXPOSE 80

CMD php-fpm -D && nginx -g "daemon off;"
