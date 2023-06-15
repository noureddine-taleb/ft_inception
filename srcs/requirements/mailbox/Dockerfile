FROM debian:bookworm

RUN apt update && apt install -y postfix

# COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 25/tcp

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf", "--daemonize", "no"]

