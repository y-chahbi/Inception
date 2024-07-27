#!/bin/bash

export TIMESTAMP=$(date +"%Y-%m-%d");

rsync -avz --exclude='/wp-content/cache/' /var/wordpress /var/backups/$TIMESTAMP
mysqldump -h $IP_MARIADB -P $PORT_MARIADB -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DBNAME > /var/backups/databases/database.sql
