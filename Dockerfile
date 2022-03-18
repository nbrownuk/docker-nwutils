FROM alpine:3.15.1

RUN apk add --no-cache                \
        bind-tools=9.16.25-r0         \
        net-tools=1.60_git20140218-r2

CMD ["sh"]
