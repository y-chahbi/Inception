#!/bin/bash

rm -rf /var/www/html

cd /var/www

wget https://www.free-css.com/assets/files/free-css-templates/download/page291/dozecafe.zip

unzip dozecafe.zip

exec nginx -g 'daemon off;'
# apachectl -DFOREGROUND
# php -S 0.0.0.0:360 -t /var/www/html/