#!/bin/bash

touch /etc/redis/redis.conf

cat <<EOF >  /etc/redis/redis.conf
port 6379
bind 0.0.0.0
logfile /var/log/redis/redis-server.log
dir /var/lib/redis
requirepass $REDISPASS
EOF

redis-server /etc/redis/redis.conf