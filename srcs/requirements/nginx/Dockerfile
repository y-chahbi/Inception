FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl

RUN apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https curl -y \
    && curl -sSL https://packages.sury.org/php/README.txt | bash -x \
    && apt update

RUN apt-get install -y php php8.2-mysql php8.2-fpm

COPY conf/sslconf /etc/ssl/sslconf

COPY conf/default /etc/nginx/sites-available/
RUN mkdir -p /etc/nginx/certs/

COPY index.php /var/www/html


COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh


# EXPOSE 80

CMD [ "./usr/local/bin/script.sh" ]