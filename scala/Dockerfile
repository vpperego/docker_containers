# base image
FROM openjdk:8

# define spark and hadoop versions
ENV SCALA_VERSION 2.11.8

COPY kafkatools_2.11-0.1.jar /
# download and install spark
RUN mkdir -p /opt && \
    cd /opt && \
    curl https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz | \
        tar -zx 

ENV PATH $PATH:/opt/scala-${SCALA_VERSION}/bin
