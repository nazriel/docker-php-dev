#!/bin/bash

docker create --link mysql:mysql -p $(cat $PWD/INFO | tail -n 1):80 --name $(cat $PWD/INFO | head -n 1) -v "$PWD/storage":/var/www/html php:5.6-apache

/bin/bash $PWD/install-ext.sh	 
