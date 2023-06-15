FROM debian:bookworm

RUN apt update && apt install -y vsftpd && useradd -d /app wp && passwd wp <<EOF
password
password
EOF

RUN mkdir -p /var/run/vsftpd/empty

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 21/tcp

ENTRYPOINT ["vsftpd", "/etc/vsftpd.conf"]

