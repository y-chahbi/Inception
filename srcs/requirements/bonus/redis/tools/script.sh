#!/bin/bash

touch /etc/redis/redis.conf

cat <<EOF >  /etc/redis/redis.conf
port 6379
bind 0.0.0.0
maxclients 10000
logfile /var/log/redis/redis-server.log
databases 16
save 900 1
save 300 10
save 60 10000
dir /var/lib/redis
appendonly yes
requirepass $REDISPASS
EOF


mkdir -p /var/lib/redis
touch /var/log/redis/redis-server.log


# echo "requirepass $REDISPASS" > /etc/redis/redis.conf

redis-server /etc/redis/redis.conf