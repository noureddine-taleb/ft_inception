FROM debian:bookworm

RUN apt update \
	&& apt install -y mariadb-server mariadb-client

COPY ./conf/mariadb.cnf /etc/mysql/mariadb.cnf
COPY ./conf/init.sh /bin

RUN rm -rf /var/lib/mysql; \
	mkdir -p /var/lib/mysql /var/run/mysqld; \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; \
	chmod 777 /var/run/mysqld;

# VOLUME /var/lib/mysql

ENTRYPOINT /bin/init.sh

