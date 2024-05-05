FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

# VOLUME /var/lib/mysql

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 3306

CMD [ "./usr/local/bin/script.sh" ]