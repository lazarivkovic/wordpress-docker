#!/usr/bin/env sh

if [[ "$VERBOSE" == "true" ]]; then
	tail -f /var/log/redis/*.log &
fi

# Install Redis Cache Plugin

	echo "Installing Redis Plugins: "

    echo "## Installing Redis Cache"
    if [ ! -e "/var/www/html/wp-content/plugins/redis-cache" ]; then
      if ( wget "https://downloads.wordpress.org/plugin/redis-cache.2.0.18.zip" ); then
        unzip "redis-cache.2.0.18.zip" -d /var/www/html/wp-content/plugins
      else
        echo "## WARN: wget failed for Redis Cache"
      fi
    else
      echo "### Redis Cache already installed, skipping."
    fi 

redis-server /etc/redis.conf
