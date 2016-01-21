# Docker XDebug

rzani/php7 is an Apache Server boxed with PHP7.0 configured in a Docker image built by [Rodrigo Zani](http://rodrigozani.com.br)

```
Maybe you should not use this image on production

As with most major-version language releases, it's best to wait a little while before switching to PHP 7 in production. In the meanwhile, it's a good time to test your applications for compatibility with the new release, perform benchmarks, and familiarize yourself with new language features.

If you're running any services or applications with active users, it is safest to first test this process in a staging environment.
```

# What is in this image?

This image is a php web development environment maked based on ubuntu:14.04 LTS, and with the following enhancements.

 - Enabled Apache2 rewrite module
 - Enabled CUrl
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
docker run --name web -v /path/to/web:/var/www/html -p 80:80 -d rzani/php7
```

This will pull the image and start an instance, and you are ready to go.
