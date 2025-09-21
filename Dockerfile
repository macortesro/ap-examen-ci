# ---------- build ----------
FROM maven:3.9.7-eclipse-temurin-17 AS build
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

# ---------- run ----------
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

COPY --from=build /build/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
