FROM alpine:3.10

RUN apk update

RUN apk add --update nodejs npm

RUN mkdir /var/node_app

WORKDIR /var/node_app

COPY . .

EXPOSE  8081

ENTRYPOINT [ "/usr/bin/node" ]

CMD [ "main.js" ]
