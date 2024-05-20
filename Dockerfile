# Use a base image containing Java runtime
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/my-spring-boot-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the app runs on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

