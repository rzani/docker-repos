FROM ubuntu:14.04

# Author
MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

LABEL Description="This image is used to start php develop enviroment" Vendor="E-Midia Informações" Version="1.0"

ENV DEBIAN_FRONTEND noninteractive

RUN rm -rf /var/www/html && \
    mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html && \
    chown -R www-data:www-data /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html

RUN apt-get update && \
    apt-get -yq install curl \
                apache2 \
                libapache2-mod-php5 \
                memcached \
                php5 \
                php5-mysql \
                php5-gd \
                php5-imagick \
                php5-curl \
                php5-mcrypt \
                php5-memcached \
                php5-sqlite \
                php5-odbc \
                php5-pgsql

# Apache + PHP requires preforking Apache for best results
RUN a2dismod mpm_event && a2enmod mpm_prefork

RUN mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.dist && \
    rm /etc/apache2/conf-enabled/* /etc/apache2/sites-enabled/*

# Installing Composer
RUN curl -sS https://getcomposer.org/installer | php && mv ./composer.phar /usr/local/bin/composer

# Enable apache mod_rewrite
RUN a2enmod rewrite

# Clean unusual things
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -Rf /var/cache/* && \
    rm -Rf /usr/share/doc/* && \
    rm -Rf /usr/share/man/*


ENV APACHE_LOG_DIR /var/log/apache2

# Enable SSL
RUN /bin/ln -sf ../mods-available/ssl.conf /etc/apache2/mods-enabled/
RUN /bin/ln -sf ../mods-available/ssl.load /etc/apache2/mods-enabled/
RUN /bin/cp /etc/apache2/mods-available/socache_shmcb.load /etc/apache2/mods-enabled/

COPY apache2start /usr/local/bin/
RUN chmod +x /usr/local/bin/apache2start
COPY apache2.conf /etc/apache2/apache2.conf

WORKDIR /var/www/html

EXPOSE 80
CMD ["apache2start"]
