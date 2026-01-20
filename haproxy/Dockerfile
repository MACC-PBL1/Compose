FROM haproxy:lts-alpine

USER root

RUN apk add --no-cache gettext 2>/dev/null

COPY entrypoint-wrapper.sh /usr/local/bin/entrypoint-wrapper.sh

RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh

ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]

USER haproxy

WORKDIR /var/lib/haproxy

CMD ["haproxy", "-f", "/tmp/haproxy.cfg"]