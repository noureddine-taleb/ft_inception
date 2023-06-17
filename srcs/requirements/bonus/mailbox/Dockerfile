FROM debian:bookworm


RUN apt update && DEBIAN_FRONTEND=noninteractive \
    apt install --quiet --quiet --yes \
    --no-install-recommends --no-install-suggests \
    ca-certificates \
    diceware \
    dovecot-imapd \
    dovecot-lmtpd \
    gettext-base \
    mailutils \
    opendkim \
    opendkim-tools \
    opendmarc \
    postfix \
    procmail \
    sasl2-bin mutt vim

COPY ./conf/main.cf /etc/postfix/

RUN useradd -m ntaleb

EXPOSE 25/tcp

ENTRYPOINT ["postfix", "-v", "start-fg"]

