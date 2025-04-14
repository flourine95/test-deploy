# Build stage
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM tomcat:10-jdk17
WORKDIR /usr/local/tomcat/webapps/
COPY --from=build /app/target/*.war ./ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
