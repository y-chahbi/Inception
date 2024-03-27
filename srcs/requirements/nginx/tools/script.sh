#!/bin/bash

openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/privkey.pem -out /etc/ssl/certs/fullchain.pem -config /etc/ssl/sslconf -days 365 > /dev/null 2>&1

cp /etc/ssl/certs/fullchain.pem /etc/nginx/certs/fullchain.pem
cp /etc/ssl/private/privkey.pem /etc/nginx/certs/privkey.pem

echo 'fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
include fastcgi_params;' > /etc/nginx/snippets/fastcgi-php.conf

sed -i 's/^listen = .*/listen = 9000/' /etc/php/8.2/fpm/pool.d/www.conf

service php8.2-fpm start

nginx -g "daemon off;"