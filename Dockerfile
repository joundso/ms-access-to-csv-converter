## Stage 1: Get the converter.jar
FROM alpine:3.23.3 as loader
RUN apk --no-cache add --update ca-certificates openssl curl && update-ca-certificates

RUN curl -o /opt/converter.jar https://repo1.maven.org/maven2/com/rebasedata/client/0.0.5/client-0.0.5.jar

## Stage 2: Run the jar
FROM openjdk:8-jre-alpine3.9

COPY --from=loader /opt/converter.jar /opt/converter.jar

ENTRYPOINT ["java", "-jar", "/opt/converter.jar"]

CMD ["help"]
