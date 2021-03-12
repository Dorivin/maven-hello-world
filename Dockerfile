FROM maven:latest

RUN mkdir /apps/maven-app/
WORKDIR /apps/maven-app/

COPY ./my-app/target/*.jar .

CMD java -jar *.jar
