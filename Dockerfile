FROM alpine:3.18.4

RUN apk add --no-cache                \
        bind-tools=9.18.19-r0         \
        net-tools=2.10-r3

CMD ["sh"]
