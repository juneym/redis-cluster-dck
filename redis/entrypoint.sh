#!/bin/sh

CF=${REDIS_CONF-/usr/local/etc/redis/redis-master.conf}

redis-server --version

echo "Using redis config: $CF"
redis-server "${CF}"

