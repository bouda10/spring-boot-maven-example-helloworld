FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
LABEL version="1.0"
USER spring:spring
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]