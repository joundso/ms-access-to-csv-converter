FROM alpine:3.13.4

RUN apk --no-cache add --update ca-certificates openssl curl && update-ca-certificates