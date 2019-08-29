# caddy

This image uses [abiosoft/caddy](https://github.com/abiosoft/caddy-docker) and additonally makes sure that a Caddyfile is available before starting the server.

When the `abisoft/caddy` image is used with docker-gen ([https://github.com/drlogout/caddy-proxy](https://github.com/drlogout/caddy-proxy)) the Caddyfile is supplied via a volume which could be empty in the intial phase. This leads to a crash of the caddy server which doesn't come up again despite the `restart always` policy of the container.



