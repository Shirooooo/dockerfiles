FROM debian:buster-slim

ENV PRIVOXY_PORT=8118 \
    SS_PORT=1080

RUN apt-get update && \
    apt-get install shadowsocks-libev privoxy -y

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
