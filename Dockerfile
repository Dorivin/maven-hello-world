FROM maven:latest

RUN mkdir -p /apps/maven-app/
WORKDIR /apps/maven-app/

COPY ./my-app/target/*.jar .

CMD java -jar *.jar
