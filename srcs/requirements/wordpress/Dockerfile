FROM debian:bullseye

RUN apt-get update

RUN apt install curl -y \
    && apt update

RUN apt-get install -y php7.4 php7.4-fpm mariadb-client php7.4-mysql

COPY tools/script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

CMD ./usr/local/bin/script.sh