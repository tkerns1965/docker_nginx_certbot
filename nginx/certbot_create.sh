#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --staging --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

certbot certonly --webroot -n --agree-tos \
    -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT
