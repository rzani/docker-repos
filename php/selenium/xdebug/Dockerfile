#
# APACHE Dockerfile
#
# https://github.com/rzani/docker-workspace

FROM rzani/php:selenium

# File Author
MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yq php5-xdebug

# Turn display_errors on
RUN sed -i "s/display_errors = Off/display_errors = On/" /etc/php5/apache2/php.ini
RUN sed -i "s/html_errors = Off/html_errors = On/" /etc/php5/apache2/php.ini

# Clean apt-get and other unusual things
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -Rf /var/cache/* && \
    rm -Rf /usr/share/doc/* && \
    rm -Rf /usr/share/man/*
