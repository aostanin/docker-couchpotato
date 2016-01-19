FROM alpine:3.2

RUN apk --update add git python py-openssl unrar && \
    apk add gcc libxml2-dev libxslt-dev musl-dev python-dev py-pip && \
    pip install lxml && \
    apk del gcc libxml2-dev libxslt-dev musl-dev python-dev py-pip && \
    git clone --depth=1 https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

ADD start.sh /start.sh

VOLUME ["/data"]
EXPOSE 5050

CMD ["/start.sh"]
