FROM nginx:alpine
LABEL MAINTAINER - Lazar <lazar.ivkovic@syncitgroup.com>

RUN apk add --no-cache \
  curl \
  nss-tools \
  openssl

RUN mkdir -p /var/www/html \
	mkdir -p /etc/nginx/certs && \
    mkdir -p /etc/nginx/ssl && \
	openssl req \
		-x509 \
		-nodes \
		-days 365 \
		-newkey rsa:2048 \
		-out /etc/nginx/certs/nginx.crt \
		-keyout /etc/nginx/certs/nginx.key \
		-subj "/C=US/ST=IL/L= /O= /OU= /CN= "


COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/https.conf /etc/nginx/conf.d/https.conf
COPY ./config/wordpress.conf /etc/nginx/conf.d/wordpress.conf


EXPOSE 443
EXPOSE 8080

VOLUME /var/www
WORKDIR /var/www/html
