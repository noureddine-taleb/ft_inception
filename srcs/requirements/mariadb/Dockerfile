FROM debian:bookworm

RUN apt update \
	&& apt install -y mariadb-server mariadb-client

COPY ./conf/mariadb.cnf /etc/mysql/mariadb.cnf

# RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN mkdir -p /run/mysqld && chown -R mysql /run/mysqld
# RUN nohup mariadbd &
# RUN echo "create database wordpress;" | mariadb -u root
# RUN echo "grant all privileges on wordpress.* to wpman@wordpress identified by 'P@ssw0rd';" | mariadb -u root

VOLUME /var/lib/mysql

CMD ["mariadbd", "--user", "mysql"]

