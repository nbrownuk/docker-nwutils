FROM alpine:3.16.7

RUN apk add --no-cache                \
        bind-tools=9.16.44-r0         \
        net-tools=2.10-r0

CMD ["sh"]
