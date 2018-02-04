FROM dockerphp

WORKDIR /www

ADD / /www
ADD nginx.conf /etc/nginx/sites-enabled/001-api

RUN cd /www && composer install --prefer-dist