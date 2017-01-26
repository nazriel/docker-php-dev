#!/bin/bash

EXTS=$(cat $PWD/EXTENSIONS | tr '\n' ' ')
NAME=$(cat $PWD/INFO | head -n 1)

docker start $NAME

docker exec $NAME /bin/sh -c "apt-get update && apt-get -y install libssl-dev libjpeg-dev libpng12-dev libicu-dev libxml2-dev libmcrypt-dev && /usr/local/bin/docker-php-ext-install $EXTS" 

docker stop $NAME
