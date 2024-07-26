FROM debian:bullseye

RUN apt-get update
RUN apt install wget nginx unzip -y

COPY conf/default /etc/nginx/nginx.conf

COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ./usr/local/bin/script.sh