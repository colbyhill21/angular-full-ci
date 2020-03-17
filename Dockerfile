FROM alpine:latest
LABEL "maintainer"="Colby Hill <colbyahill21@gmail.com>"

RUN apk add nodejs

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
