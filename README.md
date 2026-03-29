# cforge-springboot

Spring Boot backend stack for CircuitForge.

## Overview

This repository is the Spring Boot implementation track for CircuitForge microservices.

Current status:

- Bootstrapped with Spring Boot `4.0.5`
- Java `21`
- Initial scaffold is `auth-service` at repo root
- Stack dependencies included: Web MVC, Validation, Security, MongoDB, Actuator, Lombok

## Role In CircuitForge

This repo must follow contracts defined in `cforge-core` and behave consistently with `cforge-nestjs` (reference implementation).

High-level flow:

`circuit-ide -> cforge-gateway -> cforge-springboot services -> MongoDB/Redis/MinIO`

## Current Project Layout

```text
cforge-springboot/
  src/main/java/com/cforge/auth/AuthServiceApplication.java
  src/main/resources/application.properties
  src/test/java/com/cforge/auth/AuthServiceApplicationTests.java
  pom.xml
```

## Run Locally

Prerequisites:

- Java 21+
- Maven Wrapper (included)

Commands:

```bash
./mvnw spring-boot:run
```

Windows PowerShell:

```powershell
.\mvnw.cmd spring-boot:run
```

Default app name is set in `src/main/resources/application.properties`.

## Build And Test

```bash
./mvnw clean test
./mvnw clean package
```

Windows PowerShell:

```powershell
.\mvnw.cmd clean test
.\mvnw.cmd clean package
```

## Contract-First Rules

- Follow GraphQL/API contracts from `cforge-core`
- Keep service behavior aligned with `cforge-nestjs`
- Use environment variables for runtime config
- Keep services stateless and independently deployable

## Planned Service Roadmap

1. auth (in progress)
2. workspace
3. project
4. drawing
5. analysis
6. export
7. collab

## Next Suggested Step

Add auth vertical slice:

- `POST /auth/register`
- `POST /auth/login`
- DTO validation
- Mongo user model
- JWT generation/validation
- Health endpoint via Actuator
