#!/bin/bash
/usr/sbin/privoxy --pidfile /run/privoxy.pid --user privoxy /etc/privoxy/config
/usr/bin/ss-local -c /etc/shadowsocks-libev/config.json
