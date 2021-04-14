FROM openjdk:8-jre-alpine3.9

## Copy the packaged jar file into our docker image
COPY ./converter.jar /converter.jar

## Set the startup command to execute the jar
CMD ["java", "-jar", "./converter.jar", "convert", "--output-format=csv", "/data/in/db.accdb", "/data/out"]