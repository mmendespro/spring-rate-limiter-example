# For Java 21, try this
FROM bellsoft/liberica-openjdk-alpine:21

# Refer to Maven build -> finalName
ARG JAR_FILE=target/*.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/*.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

ENV SPRING_PROFILES_ACTIVE=docker

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]