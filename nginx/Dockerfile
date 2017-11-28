ARG NGINX_VERSION
FROM nginx:${NGINX_VERSION}

RUN apk update && \
    apk add certbot

COPY certbot_create.sh /root/
