FROM alpine:3.8

EXPOSE 80
VOLUME ["/punbb"]
ARG	VERSION=1.4.5
ENV	VERSION=$VERSION

RUN	apk update && apk add -U php5-cli php5-zlib php5-ctype php5-mysqli php5-xml php5-openssl php5-gd php5-curl php5-opcache php5-json php5-sqlite3 curl sqlite unzip

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
