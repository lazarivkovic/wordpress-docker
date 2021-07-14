FROM alpine:3.6
LABEL MAINTAINER - Lazar <lazar.ivkovic@syncitgroup.com>

RUN apk --update --no-cache add \
	varnish --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main

RUN apk add --no-cache wget \
	curl \
	unzip

COPY ./sbin/startup.sh /usr/local/bin/startup.sh
COPY ./config/default.vcl /etc/varnish/default.vcl

EXPOSE 80
WORKDIR /var/lib/varnish

CMD [ "sh", "/usr/local/bin/startup.sh" ]




