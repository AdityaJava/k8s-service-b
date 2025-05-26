# Use Java 21 base image
FROM openjdk:21-jdk-alpine

# Copy the JAR file into the container
COPY target/*.jar app.jar

# Set the startup command
ENTRYPOINT ["java", "-jar", "/app.jar"]
