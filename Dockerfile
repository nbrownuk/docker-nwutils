FROM alpine:3.17.5

RUN apk add --no-cache                \
        bind-tools=9.18.19-r0         \
        net-tools=2.10-r0

CMD ["sh"]
