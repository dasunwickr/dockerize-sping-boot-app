# JDK 17 Base Image
FROM eclipse-termurin:17-jdk-jammy

# Default working directory for container
WORKDIR /app

COPY .mvn/ .mvn

COPY mvnw pom.xml ./

RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw","spring-boot:run"]
