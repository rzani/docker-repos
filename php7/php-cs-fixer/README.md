# Docker XDebug

rzani/php7:php-cs-fixer is an Apache Server boxed with php-cs-fixer configured in a Docker image built by [Rodrigo Zani](http://rodrigozani.com.br)

```
You may not use this image in production
```

## How to use

You can create an entry in .zshrc or .bashrc like that
```shell
php-cs-fixer (){
  docker run -it --rm --net host -v `pwd`:/app  rzani/php7:php-cs-fixer fix --level=psr2 --verbose $@
}
```

Or you also create an executable file ```/usr/local/bin/php-cs-fixer```

```shell
#!/bin/bash
docker run -it --rm --net host -v `pwd`:/app  rzani/php7:php-cs-fixer fix --level=psr2 --verbose $@
```
