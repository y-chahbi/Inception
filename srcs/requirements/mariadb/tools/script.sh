#!/bin/bash

export DOMAIN_NAME=ychahbi.42.fr
export MYSQL_DBNAME=db
export MYSQL_ROOT_PASSWORD=rootpass
export MYSQL_USER=ychahbi
export MYSQL_PASSWORD=hello001

service mariadb start

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DBNAME; \
CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD'; \
GRANT ALL PRIVILEGES ON $MYSQL_DBNAME.* TO '$MYSQL_USER'@'localhost'; \
FLUSH PRIVILEGES;"

sleep 1
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"
sleep 1

mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "SHUTDOWN;"
sleep 1

mariadbd