#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -m $CERTBOT_EMAIL -d $CERTBOT_DOMAIN -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --staging --agree-tos \
#     -m $CERTBOT_EMAIL -d $CERTBOT_DOMAIN -w $CERTBOT_WEBROOT

certbot certonly --webroot -n --agree-tos \
    -m $CERTBOT_EMAIL -d $CERTBOT_DOMAIN -w $CERTBOT_WEBROOT
