# Usa una imagen base con JDK para compilar
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Copia el código fuente al contenedor
WORKDIR /app
COPY . .

# Compila y empaqueta con Maven (salida: target/*.jar)
RUN mvn -B -U -ntp clean package

# Etapa final: usa JRE liviano para ejecutar
FROM eclipse-temurin:17-jre

# Copiamos el JAR generado de la etapa anterior
COPY --from=build /app/target/*.jar /app/app.jar

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
