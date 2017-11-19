#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT -d $CERTBOT_DOMAIN

certbot certonly --webroot -n --staging --agree-tos \
    -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT -d $CERTBOT_DOMAIN

# certbot certonly --webroot -n --agree-tos \
#     -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT -d $CERTBOT_DOMAIN
