#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --staging --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

# certbot certonly --webroot -n --dry-run --agree-tos \
#     -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

certbot certonly --webroot -n --agree-tos \
    -d $CERTBOT_DOMAIN -m $CERTBOT_EMAIL -w $CERTBOT_WEBROOT

FIRST_DOMAIN=`expr ${CERTBOT_DOMAIN} : '\([^,]*\)'`
PFX_NAME=${FIRST_DOMAIN//./_}.pfx
cd /etc/letsencrypt/live/$FIRST_DOMAIN
openssl pkcs12 -export \
    -certfile "chain.pem" \
    -in "cert.pem" \
    -inkey "privkey.pem" \
    -out $PFX_NAME \
    -passout pass:
mv $PFX_NAME /etc/letsencrypt
