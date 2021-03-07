FROM debian:buster-slim

ENV PRIVOXY_PORT=8118

RUN apt-get update && \
    apt-get install shadowsocks-libev privoxy -y && \
    sed -i '/^listen-address/d' /etc/privoxy/config && \
    echo "forward-socks5 / 0.0.0.0:1080 ." >>/etc/privoxy/config && \
    echo "listen-address  0.0.0.0:${PRIVOXY_PORT}" >>/etc/privoxy/config

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
