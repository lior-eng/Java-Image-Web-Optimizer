# Start with a base image containing Maven (and OpenJDK)
FROM maven:3.8-openjdk-11-slim

# Make the app directory inside the Docker image
WORKDIR /app

# Copy the pom.xml (Maven project object model file) into our app directory
COPY pom.xml .

# Copy your source code into the app directory
COPY src ./src

# Build the project inside the Docker image
RUN mvn package

COPY entry-point.sh ./
RUN chmod +x entry-point.sh

# Command to run when starting the container
ENTRYPOINT ["./entry-point.sh"]
