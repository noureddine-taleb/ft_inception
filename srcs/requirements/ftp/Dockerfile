FROM debian:bookworm

RUN apt update && apt install -y vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 443/tcp

ENTRYPOINT ["vsftpd", "/etc/vsftpd.conf"]

