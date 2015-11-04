#
# APACHE Dockerfile
#
# https://github.com/rzani/docker-workspace

FROM rzani/php

# File Author
MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yq php-pear

# Install MongoDB driver
RUN pecl install mongo

# Load mongo extension
RUN mkdir -p /etc/php5
RUN echo "extension=mongo.so" >> /etc/php5/mods-available/mongo.ini && \
    /bin/ln -s /etc/php5/mods-available/mongo.ini /etc/php5/apache2/conf.d/20-mongo.ini && \
    /bin/ln -s /etc/php5/mods-available/mongo.ini /etc/php5/cli/conf.d/20-mongo.ini

# Clean apt-get and other unusual things
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -Rf /var/cache/* && \
    rm -Rf /usr/share/doc/* && \
    rm -Rf /usr/share/man/*
