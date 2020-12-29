FROM python:3.7-alpine
MAINTAINER FAN VINGA<fanalcest@gmail.com>

ENV NODE_ID=0                     \
    DNS_1=1.0.0.1                 \
    DNS_2=8.8.8.8                 \
    SPEEDTEST=6                   \
    CLOUDSAFE=0                   \
    AUTOEXEC=0                    \
    ANTISSATTACK=0                \
    MU_SUFFIX=zhaoj.in            \
    MU_REGEX=%5m%id.%suffix       \
    API_INTERFACE=modwebapi       \
    WEBAPI_URL=https://zhaoj.in   \
    WEBAPI_TOKEN=glzjin           \
    MYSQL_HOST=127.0.0.1          \
    MYSQL_PORT=3306               \
    MYSQL_USER=ss                 \
    MYSQL_PASS=ss                 \
    MYSQL_DB=shadowsocks          \
    REDIRECT=github.com           \
    CONNECT_VERBOSE_INFO=0        \
    FAST_OPEN=false

COPY . /root/shadowsocks
WORKDIR /root/shadowsocks

RUN  apk --no-cache add \
			tzdata \
                        curl \
                        libintl \
                        libsodium-dev \
                        openssl-dev \
                        udns-dev \
                        mbedtls-dev \
                        pcre-dev \
                        libev-dev \
                        libtool \
                        libffi-dev            && \
     apk --no-cache add --virtual .build-deps \
                        tar \
                        make \
                        gettext \
                        autoconf \
                        automake \
                        build-base \
                        linux-headers         && \
     cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone   && \
     cp  /usr/bin/envsubst  /usr/local/bin/   && \
     pip install --upgrade pip                && \
     pip install -r requirements.txt          && \
     rm -rf ~/.cache && touch /etc/hosts.deny && \
     apk del --purge .build-deps

CMD envsubst < apiconfig.py > userapiconfig.py && \
    envsubst < config.json > user-config.json  && \
    echo -e "${DNS_1}\n${DNS_2}\n" > dns.conf  && \
    python server.py
