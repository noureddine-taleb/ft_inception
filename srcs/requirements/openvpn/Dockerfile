FROM debian:bookworm

WORKDIR /app

COPY ./conf/openvpn-install.sh /bin/

RUN echo openvpn | bash /bin/openvpn-install.sh

# COPY ./conf/openvpn-server.sh /bin/
COPY ./conf/server.conf /etc/openvpn/server/


WORKDIR /etc/openvpn/server

EXPOSE 1194/udp

ENTRYPOINT ["/usr/sbin/openvpn", "--config", "/etc/openvpn/server/server.conf"]
# ENTRYPOINT ["/bin/openvpn-server"]

