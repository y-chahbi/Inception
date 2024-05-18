FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y rsync vim cron mariadb-client && \
    export EDITOR=/usr/bin/vim && \
    export SHELL=/bin/bash

COPY tools/script.sh /script.sh

RUN mkdir -p /var/backups/databases && \
    chmod +x /script.sh

RUN echo "*/1 * * * * /script.sh" | crontab -

# EXPOSE 600

CMD env > env.sh && cron -f
