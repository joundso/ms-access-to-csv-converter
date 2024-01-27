FROM alpine:3.19.1

RUN apk --no-cache add --update ca-certificates openssl curl && update-ca-certificates