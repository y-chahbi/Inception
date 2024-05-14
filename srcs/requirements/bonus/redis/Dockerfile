FROM debian:bullseye

RUN apt-get update && apt install redis-server -y

COPY conf/conf /etc/redis/redis.conf
COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

EXPOSE 6379

CMD [ "./usr/local/bin/script.sh" ]