# Docker XDebug

rzani/php7:dbg is an Apache Server boxed with PHPDBG configured in a Docker image built by [Rodrigo Zani](http://rodrigozani.com.br)

```
You may not use this image in production
```

# What is in this image?

This image is a php web development environment maked based on ubuntu:14.04 LTS, and with the following enhancements.

 - Enabled Apache2 rewrite module
 - Enabled CUrl
 - Enabled dbg
 - Enabled GD support with GIF, JPEG, PNG, WBMP, XBM and FreeType(TrueType Fonts)
 - Enabled json
 - Enabled mcrypt
 - Enabled mysql
 - Enabled memcached and php-memcached
 - Enabled opcache
 - Enabled sqlite3


# How to use this image

## Single instance mode

Get the docker image by running the following commands:

```shell
docker run --name web -v /path/to/web:/var/www/html -p 80:80 -d rzani/php7:dbg
```

This will pull the image and start an instance, and you are ready to go.
