FROM debian:bullseye

RUN apt-get update
RUN apt install adminer -y
RUN apt install php -y
RUN apt install php-mysql -y

COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

EXPOSE 8080

CMD [ "./usr/local/bin/script.sh" ]