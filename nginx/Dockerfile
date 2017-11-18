FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add certbot && \
    mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old && \
    mkdir -p /var/www/html

COPY root/* /root/
COPY nginx.conf /etc/nginx/
