FROM alpine:3.14.2

RUN apk add --no-cache                \
        bind-tools=9.16.20-r1         \
        net-tools=1.60_git20140218-r2

CMD ["sh"]
