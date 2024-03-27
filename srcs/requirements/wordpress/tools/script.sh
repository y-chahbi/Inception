#!/bin/bash




curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html
wp core download --allow-root
mv wp-config-sample.php wp-config.php

echo 'fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
include fastcgi_params;' > /etc/wordpress/snippets/fastcgi-php.conf

sed -i 's/^listen = .*/listen = 9000/' /etc/php/8.2/fpm/pool.d/www.conf
wp config set SERVER_PORT 3306 --allow-root
wp config set DB_NAME $MYSQL_DBNAME --allow-root --path=/var/www/html
wp config set DB_USER $MYSQL_USER --allow-root --path=/var/www/html
wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root --path=/var/www/html
wp config set DB_HOST 'mariadb:3306' --allow-root --path=/var/www/html



wp core install --url=$DOMAIN_NAME --title=INCEPTION --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root --path=/var/www/html
wp user create $WP_USER $WP_USER_E --role=author --user_pass=$WP_USER_PASS --allow-root --path=/var/www/html

service php8.2-fpm start
/usr/sbin/php-fpm8.2 -F