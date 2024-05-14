#!/bin/bash

export TIMESTAMP=$(date +"%Y-%m-%d");

source /env.sh
rsync -avz --exclude='/wp-content/cache/' /var/wordpress /var/backups/$TIMESTAMP
mysqldump -h $IP_MARIADB -P $PORT_MARIADB -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DBNAME > /var/backups/databases/database.sql 2> /var/backups/databases/err-log.txt

# cat env.sh >> /var/backups/databases/err-log.txt

# /bin/ls -la > /var/backups/databases/root-dir.txt

# echo "hello" > /var/a.txt
# echo "exited with: " $?
