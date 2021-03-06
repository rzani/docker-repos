# Docker XDebug:selenium

rzani/xdebug is an Apache Server boxed with xdebug configured in a Docker image built by [Rodrigo Zani](http://rodrigozani.com.br)

```
You may not use this image in production
```

# What is in this image?

This image is a php web development environment maked based on ubuntu:14.04 LTS, and with the following enhancements.

 - Enabled CUrl
 - Enabled Apache2 rewrite module
 - Enabled GD support with GIF, JPEG, PNG, WBMP, XBM and FreeType(TrueType Fonts)
 - Enabled Imagick
 - Enabled mbstring
 - Enabled mcrypt
 - Enabled mysql
 - Enabled mysqli
 - Enabled pdo_mysql
 - Enabled memcached and php-memcached
 - Enabled sqlite
 - Enabled xdebug
 - Enabled selenium server

# How to use this image

## Single instance mode

Get the docker image by running the following commands:

```shell
docker run --name web -v /path/to/web:/var/www/html -p 80:80 -d rzani/xdebug
```

This will pull the image and start an instance, and you are ready to go.
