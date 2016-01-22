FROM alpine:3.3

RUN apk --update add git python py-lxml py-openssl unrar && \
    git clone --depth=1 https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

ADD start.sh /start.sh

VOLUME ["/data"]
EXPOSE 5050

CMD ["/start.sh"]
