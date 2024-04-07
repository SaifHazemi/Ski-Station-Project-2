# Use a base image with the JDK
FROM openjdk:11-jdk-slim

# Copy the JAR file into the container
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Optionally, add a volume for temporary files (if needed)
VOLUME /tmp
EXPOSE 9090
# Set the entry point to run the JAR file
ENTRYPOINT ["java","-jar","app.jar"]

