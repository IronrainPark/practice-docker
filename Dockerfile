FROM openjdk:8-jdk-alpine
RUN ls -al
WORKDIR var
WORKDIR lib
WORKDIR docker
WORKDIR tmp
RUN ls -al
VOLUME /tmp
WORKDIR var
WORKDIR lib
WORKDIR docker
WORKDIR tmp
RUN ls -al
ARG JAR_FILE
WORKDIR var
WORKDIR lib
WORKDIR docker
WORKDIR tmp
RUN ls -al
ADD ${JAR_FILE} app.jar
WORKDIR var
WORKDIR lib
WORKDIR docker
WORKDIR tmp
RUN ls -al
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
