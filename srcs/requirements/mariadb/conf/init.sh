#!/bin/sh

DATADIR=/var/lib/mysql
USER=mysql

DB=$WORDPRESS_DB
DBUSER=$WORDPRESS_USER
DBUSERPASSWORD=$WORDPRESS_PASSWORD

# create data dir if it doesn't exists this happens when we run for the first time
if [ ! -d $DATADIR/mysql ]
then
	echo ----- init db dir
	mariadb-install-db --datadir=$DATADIR --rpm --auth-root-authentication-method=normal \
		--skip-test-db \
		--old-mode='UTF8_IS_UTF8MB3' \
		--default-time-zone=SYSTEM --enforce-storage-engine= \
		--skip-log-bin \
		--expire-logs-days=0 \
		--loose-innodb_buffer_pool_load_at_startup=0 \
		--loose-innodb_buffer_pool_dump_at_shutdown=0
	chown -R $USER $DATADIR;

	echo ------- starting mariadb server
	mariadbd --user $USER &

	MARIADBPID=$!

	echo --------- wait for mariadb server to start
	sleep 10

	echo --------- create $DB database
	echo "create database $DB;" | mariadb -u root 

	echo --------- create $DBUSER user
	echo "grant all privileges on $DB.* to $DBUSER@'%' identified by '$DBUSERPASSWORD';" | mariadb -u root 

	echo ------- foreground mariadb
	wait $MARIADBPID
else
	chown -R $USER $DATADIR;
	mariadbd --user $USER
fi
