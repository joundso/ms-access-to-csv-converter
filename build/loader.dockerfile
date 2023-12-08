FROM alpine:3.19.0

RUN apk --no-cache add --update ca-certificates openssl curl && update-ca-certificates