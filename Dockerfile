FROM jenkins/jenkins
MAINTAINER Bensonz <mr.bz@hotmail.com>

LABEL Description="A custom jenkins master image with docker cli and kubectl installed"

ARG DOCKER_VERSION=17.09.0-ce

USER root

COPY docker-${DOCKER_VERSION}.tgz /

RUN mv docker-${DOCKER_VERSION}.tgz docker.tgz \
  && tar -xzvf docker.tgz \
  && mv docker/* /usr/local/bin/ \
  && rmdir docker \
  && rm docker.tgz
