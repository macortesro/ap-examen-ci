# Imagen base de Java 17
FROM openjdk:17-jdk-slim

# Copiar el JAR generado por Maven
COPY target/*.jar app.jar

# Exponer el puerto de la app
EXPOSE 8080

# Comando de inicio
ENTRYPOINT ["java", "-jar", "app.jar"]
