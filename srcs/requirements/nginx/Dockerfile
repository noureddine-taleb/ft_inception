FROM debian:bookworm

RUN apt update && apt install -y nginx && mkdir /adminer

COPY ./conf/wp.conf /etc/nginx/sites-enabled/default
COPY ./conf/private_key.pem /etc/ssl/private/
COPY ./conf/certificate.crt /etc/ssl/certs/

EXPOSE 443/tcp

ENTRYPOINT ["nginx", "-g", "daemon off;"]

