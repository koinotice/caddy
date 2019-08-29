#!/bin/bash

set -e

args=("$@")
caddyfile=""
counter=0

for arg in "${args[@]}"; do
  if [ "$arg" == "-conf" ] || [ "$arg" == "--conf" ] ; then
    caddyfile=${args[$counter+1]}
  fi
  counter=$((counter+1))
done

if [ ! -z "$caddyfile" ] && [ ! -e "$caddyfile" ] ; then
  echo "Copy initial Caddyfile to $caddyfile"
  cp /etc/Caddyfile "$caddyfile"
fi

exec /usr/bin/caddy "$@"
