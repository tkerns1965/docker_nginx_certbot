#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --staging --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

certbot certonly --webroot -n --agree-tos \
    -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

cd /etc/letsencrypt/live/$CERTBOT_DOMAIN
openssl pkcs12 -export \
    -certfile "chain.pem" \
    -in "cert.pem" \
    -inkey "privkey.pem" \
    -out "$CERTBOT_DOMAIN.pfx" \
    -passout pass:
mv $CERTBOT_DOMAIN.pfx /etc/letsencrypt
