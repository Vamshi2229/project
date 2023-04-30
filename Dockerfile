From openjdk:7
ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
ENTRYPOINT ["java", "-jar", "my-maven-docker-project.jar"]
expose 8080
