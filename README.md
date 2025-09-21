# ap-examen-ci (macortesro)

## Objetivos
- Proyecto Java 17 + Maven con tests JUnit 5.
- CI en GitHub Actions que ejecuta `mvn test` en cada push/PR.
- Documentación, estructura y evidencias.

## Requisitos
Java 17, Maven 3.9+, Git.

## Estructura

.
├─ pom.xml
├─ src
│ ├─ main/java/com/macortes/App.java
│ └─ test/java/com/macortes/{SumaTest.java,RestaTest.java}
└─ .github/workflows/ci.yml


## Comandos
```bash
mvn -B -U -ntp clean test

git checkout -b feature/ci-setup
git add .
git commit -m "ci: proyecto maven + tests + workflow"
git push -u origin feature/ci-setup

```

## Pipeline

Se ejecuta en push y pull_request.

Sube artefactos JUnit de target/surefire-reports.

## Evidencias


![Imagen 1](docs/img/1.png)
![Imagen 2](docs/img/2.png)
![Imagen 3](docs/img/3.png)
![Imagen 4](docs/img/4.png)
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
---
