FROM debian:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get update && apt-get install -y openssl
RUN apt-get update && apt-get install -y php php8.2-fpm

COPY conf/sslconf /etc/ssl/sslconf

COPY conf/default /etc/nginx/sites-available/
RUN mkdir -p /etc/nginx/certs/

COPY index.php /var/www/html


COPY tools/generate_certificate.sh /usr/local/bin/generate_certificate.sh
RUN chmod +x /usr/local/bin/generate_certificate.sh


# EXPOSE 80

CMD [ "./usr/local/bin/generate_certificate.sh" ]