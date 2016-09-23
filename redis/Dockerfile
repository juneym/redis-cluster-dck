FROM redis:alpine

COPY configs/redis-master.conf /usr/local/etc/redis/redis-master.conf
COPY configs/redis-slave.conf  /usr/local/etc/redis/redis-slave.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

#CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
CMD ["/usr/local/bin/entrypoint.sh"]
