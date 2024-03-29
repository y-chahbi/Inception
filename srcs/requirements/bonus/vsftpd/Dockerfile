FROM debian:bullseye

RUN apt-get update
RUN apt-get install vsftpd -y

COPY conf/conf /etc/vsftpd.conf
COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

EXPOSE 21

CMD [ "./usr/local/bin/script.sh" ]