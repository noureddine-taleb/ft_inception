FROM debian:bookworm

WORKDIR /app
RUN apt update \
	&& apt install -y php-imagick php-fpm php-mbstring php-bcmath php-xml php-mysql php-common php-gd php-json php-cli php-curl php-zip

COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/

ENTRYPOINT ["/usr/sbin/php-fpm8.2", "-F"]

