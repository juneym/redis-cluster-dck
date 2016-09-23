FROM php:5.6-cli

VOLUME /opt/webapp
WORKDIR /opt/webapp
COPY entrypoint.sh /entrypoint.sh

RUN curl -o /usr/local/bin/composer https://getcomposer.org/composer.phar && \
    chmod 755 /usr/local/bin/composer && \
    chmod 755 /entrypoint.sh && \
    apt-get update && \
    apt-get install -y git-core && \
    rm -r /var/lib/apt/lists/*

CMD ["/entrypoint.sh"]
