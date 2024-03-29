#!/bin/bash

mkdir -p /var/lib/redis
touch /var/log/redis/redis-server.log

redis-server /etc/redis/redis.conf