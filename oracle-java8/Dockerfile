# Dockerfile for oracle java 7
# docker pull barnybug/oracle-java7
FROM ubuntu:20.04

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

# just for testing
CMD java -version