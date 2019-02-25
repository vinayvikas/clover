FROM maven:3.5-jdk-8-alpine
RUN mkdir app 
WORKDIR /app
ADD pom.xml /app/pom.xml 
ADD src /app/src
RUN ["mvn", "clean", "package"]
