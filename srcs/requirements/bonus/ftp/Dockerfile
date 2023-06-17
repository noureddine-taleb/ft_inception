FROM debian:bookworm

ARG FTP_USER
ARG FTP_PASSWORD

RUN apt update && apt install -y vsftpd && useradd -d /app $FTP_USER
RUN passwd $FTP_USER <<EOF
$FTP_PASSWORD
$FTP_PASSWORD
EOF

RUN mkdir -p /var/run/vsftpd/empty

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 21/tcp

ENTRYPOINT ["vsftpd", "/etc/vsftpd.conf"]

