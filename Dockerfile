FROM openjdk:8-jre-alpine

WORKDIR /commafeed
COPY commafeed.jar .
COPY config.yml .

CMD ["/usr/bin/java", "-Djava.net.preferIPv4Stack=true", "-jar", "commafeed.jar",  "server", "config.yml"]
