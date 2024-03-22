FROM debian:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get update && apt-get install -y openssl

RUN addgroup --system www && adduser --system --ingroup www www

COPY conf/sslconf /etc/ssl/sslconf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html
# RUN nginx -s reload

COPY tools/generate_certificate.sh /usr/local/bin/generate_certificate.sh
RUN chmod +x /usr/local/bin/generate_certificate.sh

RUN /usr/local/bin/generate_certificate.sh


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]