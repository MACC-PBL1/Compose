#!/bin/sh
set -e

envsubst < /usr/local/etc/haproxy/haproxy.cfg.template > /tmp/haproxy.cfg

haproxy -c -f /tmp/haproxy.cfg

exec /usr/local/bin/docker-entrypoint.sh "$@"