FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add certbot

COPY certbot_create.sh /root/
