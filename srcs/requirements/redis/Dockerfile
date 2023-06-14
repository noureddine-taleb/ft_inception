FROM debian:bookworm

RUN apt update && apt install -y redis

COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379/tcp

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf", "--daemonize", "no"]

