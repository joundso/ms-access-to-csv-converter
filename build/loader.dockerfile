FROM alpine:3.18.5

RUN apk --no-cache add --update ca-certificates openssl curl && update-ca-certificates