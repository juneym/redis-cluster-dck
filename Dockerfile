FROM php:5.6-cli

VOLUME /opt/webapp

# php -S 0.0.0.0:80 -t .
CMD ["/usr/local/bin/php", "-S", "0.0.0.0:80", "-t", "/opt/webapp/src"]
