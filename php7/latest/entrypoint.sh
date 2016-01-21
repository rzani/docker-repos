#!/bin/sh

if [ ! -z "$BOOT2DOCKER" ] && [ -z "`grep docker /etc/apache2/apache2.conf`" ]; then

	echo "Using 'docker/staff' in boot2docker ..."

	useradd -u 1000 -g 50 docker

	# Use the uid 1000 & gid 50 for Apache2
	sed -i 's/User www-data/User docker/' /etc/apache2/apache2.conf
	sed -i 's/Group www-data/Group staff/' /etc/apache2/apache2.conf
fi

# Execute CMD
exec "$@"
