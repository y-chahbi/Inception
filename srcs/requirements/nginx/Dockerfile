FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl
COPY conf/sslconf /etc/ssl/sslconf

# Create nginx user and group
RUN adduser --system --no-create-home --disabled-login --disabled-password --group nginx

COPY conf/default /etc/nginx/nginx.conf
# COPY conf/default /etc/nginx/conf.d/default
# COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/certs/

COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ./usr/local/bin/script.sh