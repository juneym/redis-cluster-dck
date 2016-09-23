#!/usr/bin/env bash


cd /opt/webapp/
composer install

/usr/local/bin/php -S 0.0.0.0:80 -t /opt/webapp/src
