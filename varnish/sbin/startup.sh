#!/usr/bin/env sh

if [[ "$VERBOSE" == "true" ]]; then
	varnishlog &
fi

## Install Varnish Cache Plugin

	echo "Installing Varnish Cache Plugins: "

    echo "## Installing Varnish Cache"
    if [ ! -e "/var/www/html/wp-content/plugins/varnish-http-purge" ]; then
       if ( wget "https://downloads.wordpress.org/plugin/varnish-http-purge.5.0.2.zip" ); then
         unzip "varnish-http-purge.5.0.2.zip" -d /var/www/html/wp-content/plugins
       else
         echo "## WARN: wget failed for Varnish Cache"
       fi
     else
       echo "### Varnish Cache already installed, skipping."
     fi
	 
varnishd \
	-F \
	-a :80 \
	-f /etc/varnish/default.vcl \
	-p http_resp_hdr_len=65536 \
	-p http_resp_size=98304 \
	-p vcc_allow_inline_c=on \
	-p workspace_backend=128k \
	-p workspace_client=128k \
	-s malloc,2G
