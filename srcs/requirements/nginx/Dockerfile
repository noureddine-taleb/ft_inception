FROM debian:bookworm

RUN apt update && apt install -y nginx

COPY ./conf/wp.conf /etc/nginx/sites-enabled/default

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]

