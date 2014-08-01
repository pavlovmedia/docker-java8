FROM ubuntu:14.04
MAINTAINER Shawn Dempsay <shawn@dempsay.org>

#
# Basic steps to get Java 8 from Oracle
#
ENV DEBIAN_FRONTEND noninteractive 
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
ADD files/webupd8team-java-trusty.list /etc/apt/sources.list.d/webupd8team-java-trusty.list
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer


