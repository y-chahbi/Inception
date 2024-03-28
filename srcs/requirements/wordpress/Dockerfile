FROM debian:bullseye

RUN apt-get update

RUN apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https curl -y \
    && curl -sSL https://packages.sury.org/php/README.txt | bash -x \
    && apt update

RUN apt-get install -y php7.4 php7.4-fpm mariadb-client php7.4-mysql sendmail php7.4-xml php7.4-mysqli php7.4-mysqlnd


COPY tools/script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 9000

CMD [ "./usr/local/bin/script.sh" ]