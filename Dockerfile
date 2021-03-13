FROM maven:latest

RUN mkdir -p /apps/maven-app/
WORKDIR /apps/maven-app/

COPY ./my-app/target/my-app-*.jar ./

CMD java -jar *.jar
