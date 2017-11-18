FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add certbot && \
    echo "#!/bin/sh" > /root/certbot_create1.sh && \
    chmod +x certbot_create1.sh

COPY certbot_create.sh /root/
