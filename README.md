# ap-examen-ci (macortesro)

## Objetivos
- Proyecto Maven con dependencias de prueba.
- Pipelines de CI con GitHub Actions.
- Pipeline de CD con despliegue simulado (Blue/Green + Rollback).

## Actividad 1 - Proyecto Maven
Se configuró un proyecto Maven con:
- Java 17 (Temurin).
- Dependencias de pruebas con **JUnit**.
- Métodos de ejemplo (`suma`, `resta`) probados con **Unit Tests** e **Integration Tests**.

##  Actividad 2 - CI Pipeline

Se configuró un workflow en GitHub Actions (.github/workflows/ci.yml) con los siguientes stages:

Build → Compila el proyecto con Maven.

Unit Tests → Ejecuta pruebas unitarias.

Integration Tests → Ejecuta pruebas de integración.

Acceptance → Construye una imagen Docker y prueba que el servidor HTTP responda en el entorno GREEN.

Ejecución automática en cada push y pull request.

## Actividad 3 - CD Pipeline

Se configuró el workflow deploy.yml para simular despliegues:

Stage build-and-package: genera el JAR y la imagen Docker (app-candidate).

Stage acceptance: levanta entornos BLUE (estable) y GREEN (candidato) en puertos distintos (8080 / 8081).

Stage promote-or-rollback:

Si GREEN pasa pruebas → se promueve como nuevo BLUE (producción).

Si GREEN falla → rollback y se mantiene BLUE estable.


## Docker 

El proyecto incluye un Dockerfile para empaquetar la aplicación en un contenedor:

```bash
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```
## Comandos
```bash
mvn -B -U -ntp clean test

git checkout -b feature/ci-setup
git add .
git commit -m "ci: proyecto maven + tests + workflow"
git push -u origin feature/ci-setup
git push -u origin feature/test-change
git commit -m
git push



```
## Tecnologías usadas

Java 17

Maven

JUnit 5

GitHub Actions (CI/CD)

Docker (Blue/Green Deployment)

## Evidencias

![Imagen 5](docs/img/5.png)

![Imagen 6](docs/img/6.png)
![Imagen 7](docs/img/7.png)
![Imagen 8](docs/img/8.png)
![Imagen 9](docs/img/9.png)
![Imagen 10](docs/img/10.png)

![Imagen 11](docs/img/11.png)
![Imagen 12](docs/img/12.png)
![Imagen 13](docs/img/13.png)
![Imagen 14](docs/img/14.png)
![Imagen 15](docs/img/15.png)

![Imagen 16](docs/img/16.png)
![Imagen 17](docs/img/17.png)
![Imagen 18](docs/img/18.png)
![Imagen 19](docs/img/19.png)
![Imagen 20](docs/img/20.png)

![Imagen 21](docs/img/21.png)
![Imagen 22](docs/img/22.png)
![Imagen 23](docs/img/23.png)
![Imagen 24](docs/img/24.png)
![Imagen 27](docs/img/27.png)
![Imagen 25](docs/img/25.png)

![Imagen 26](docs/img/26.png)
![Imagen 28](docs/img/28.png)
![Imagen 29](docs/img/29.png)
![Imagen 30](docs/img/30.png)

![Imagen 31](docs/img/31.png)
![Imagen 32](docs/img/32.png)
![Imagen 33](docs/img/33.png)
![Imagen 34](docs/img/34.png)
![Imagen 35](docs/img/35.png)

![Imagen 36](docs/img/36.png)
![Imagen 37](docs/img/37.png)
![Imagen 38](docs/img/38.png)
![Imagen 39](docs/img/39.png)
![Imagen 40](docs/img/40.png)

![Imagen 41](docs/img/41.png)
![Imagen 42](docs/img/42.png)
![Imagen 43](docs/img/43.png)
![Imagen 44](docs/img/44.png)
![Imagen 45](docs/img/45.png)

![Imagen 46](docs/img/46.png)
![Imagen 47](docs/img/47.png)


# Autor: Matías CORTÉS ROMERO - EXAMEN AUTOMATIZACIÓN DE PRUEBAS
---
