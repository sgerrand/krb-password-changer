FROM alpine:3.5
MAINTAINER Sasha Gerrand <krb-password-changer@sgerrand.com>
RUN apk add --no-cache krb5
COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT /usr/local/bin/docker-entrypoint.sh
