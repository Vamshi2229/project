FROM ubuntu:latest
RUN apt-get update
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y openjdk-17-jdk
RUN apt-get update && apt-get install -y maven
RUN apt-get update && apt-get install -y tomcat9
CMD git --version
