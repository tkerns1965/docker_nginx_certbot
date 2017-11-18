#!/bin/sh

# certbot certonly --webroot -n --staging --dry-run --agree-tos \
#     -m $EMAIL -w /usr/share/nginx/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com

# certbot certonly --webroot -n --staging --agree-tos \
#     -m $EMAIL -w /usr/share/nginx/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com

certbot certonly --webroot -n --agree-tos \
    -m $EMAIL -w /usr/share/nginx/html -d tkhome.ignorelist.com,owncloud.tkhome.ignorelist.com
