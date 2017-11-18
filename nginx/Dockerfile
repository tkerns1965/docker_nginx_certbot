FROM nginx:1.13.6-alpine

RUN apk update && \
    apk add certbot && \
    echo "#!/bin/sh" > /root/certbot_create1.sh && \
    echo "certbot certonly --webroot -n --staging --agree-tos \" >> /root/certbot_create1.sh && \
    echo "-m tony.kerns.65@gmail.com -w /usr/share/nginx/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com" >> /root/certbot_create1.sh && \
    chmod +x /root/certbot_create1.sh

COPY certbot_create.sh /root/
