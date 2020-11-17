# Dockerfile for openjdk java 8 JRE
# docker pull barnybug/openjdk-8-jre
FROM ubuntu:18.04

# enable universe
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y openjdk-8-jre-headless && apt-get clean

# just for testing
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
CMD java -version