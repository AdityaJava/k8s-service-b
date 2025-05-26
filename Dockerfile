# Use Java 21 base image
FROM eclipse-temurin:21-jdk-jammy

# Copy the JAR file into the container
COPY build/libs/*.jar app.jar

# Set the startup command
ENTRYPOINT ["java", "-jar", "/app.jar"]
