FROM alpine:3.6
LABEL MAINTAINER - Lazar <lazar.ivkovic@syncitgroup.com>

RUN apk --update --no-cache add \
	redis --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main 

RUN apk add --no-cache wget \
	curl \
	unzip

RUN touch /var/log/redis/redis.log

COPY ./sbin/startup.sh /usr/local/bin/startup.sh
COPY ./config/redis.conf /etc/redis.conf

EXPOSE 6379
WORKDIR /var/lib/redis

CMD [ "sh", "/usr/local/bin/startup.sh" ]
