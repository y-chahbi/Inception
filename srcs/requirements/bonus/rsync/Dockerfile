FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y rsync vim cron mariadb-client && \
    export EDITOR=/usr/bin/vim

COPY tools/script.sh /usr/local/bin/script.sh

RUN mkdir -p /var/backups/databases && \
    chmod +x /usr/local/bin/script.sh

RUN echo "0 0 * * * /usr/local/bin/script.sh" | crontab -

CMD ["cron", "-f"]