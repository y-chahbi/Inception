#!/bin/bash



curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

mkdir -p /var/www/html
cd /var/www/html

wp core download --allow-root
mv wp-config-sample.php wp-config.php
mkdir /run/php

wp config set SERVER_PORT 3306 --allow-root
wp config set DB_NAME $MYSQL_DBNAME --allow-root --path=/var/www/html
wp config set DB_USER $MYSQL_USER --allow-root --path=/var/www/html
wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root --path=/var/www/html
wp config set DB_HOST 'mariadb:3306' --allow-root --path=/var/www/html
wp core install --url=$DOMAIN_NAME --title=INCEPTION --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_E --allow-root --path=/var/www/html
wp theme install bizboost --allow-root --path=/var/www/html
wp theme activate bizboost --allow-root --path=/var/www/html
wp user create $WP_USER $WP_USER_E --role=author --user_pass=$WP_USER_PASS --allow-root --path=/var/www/html

sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 0.0.0.0:9000#' /etc/php/7.4/fpm/pool.d/www.conf
sed -i 's/;extension=mysqli/extension=mysqli/' /etc/php/7.4/fpm/php.ini
sed -i 's/;   extension=mysqli/extension=mysqli/' /etc/php/7.4/cli/php.ini

/usr/sbin/php-fpm7.4 -F