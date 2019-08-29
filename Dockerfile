FROM rochdev/caddy-proxy
MAINTAINER Christian Nolte hello@noltech.net

RUN apk -U add bash

COPY Caddyfile /etc/Caddyfile
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
