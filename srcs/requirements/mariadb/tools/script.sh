#!/bin/bash


echo "[client]
socket=/var/run/mysqld/mysqld.sock" > /etc/my.cnf

service mariadb start