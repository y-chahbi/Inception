FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl
COPY conf/sslconf /etc/ssl/sslconf


COPY conf/default /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/certs/

COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ./usr/local/bin/script.sh