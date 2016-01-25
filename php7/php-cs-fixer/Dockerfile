#
# php7:php-cs-fixer Dockerfile
#
# https://github.com/rzani/docker-repos

FROM rzani/php7

# File Author
MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O php-cs-fixer
RUN sudo chmod a+x php-cs-fixer
RUN sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer

VOLUME ["/app"]

WORKDIR /app

ENTRYPOINT ["php-cs-fixer"]

CMD ["--help"]
