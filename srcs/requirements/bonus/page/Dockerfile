FROM debian:bullseye

RUN apt-get update
RUN apt install wget apache2 unzip -y

COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

# EXPOSE 360

CMD ./usr/local/bin/script.sh