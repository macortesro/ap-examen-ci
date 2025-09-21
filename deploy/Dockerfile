FROM openjdk:17-jdk-slim

WORKDIR /app

# ARG para versionado desde GitHub Actions
ARG APP_VERSION=dev
ENV APP_VERSION=${APP_VERSION}

# Copiar el JAR desde target
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
