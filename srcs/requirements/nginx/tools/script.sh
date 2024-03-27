#!/bin/bash

openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/privkey.pem -out /etc/ssl/certs/fullchain.pem -config /etc/ssl/sslconf -days 365 > /dev/null 2>&1

cp /etc/ssl/certs/fullchain.pem /etc/nginx/certs/fullchain.pem
cp /etc/ssl/private/privkey.pem /etc/nginx/certs/privkey.pem

nginx -g "daemon off;"