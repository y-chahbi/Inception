FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server

COPY tools/script.sh /usr/local/bin/script.sh
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /usr/local/bin/script.sh

# EXPOSE 3306
CMD [ "./usr/local/bin/script.sh" ]
