#!/bin/bash

if [[ "$SS_PORT" ]]; then
    echo "forward-socks5 / 0.0.0.0:${SS_PORT} ." >>/etc/privoxy/config
fi
if [[ "$PRIVOXY_PORT" ]]; then
    sed -i '/^listen-address/d' /etc/privoxy/config
    echo "listen-address  0.0.0.0:${PRIVOXY_PORT}" >>/etc/privoxy/config
fi

/usr/sbin/privoxy --pidfile /run/privoxy.pid --user privoxy /etc/privoxy/config
/usr/bin/ss-local -c /etc/shadowsocks-libev/config.json
