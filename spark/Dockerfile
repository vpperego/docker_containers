# base image
FROM openjdk:8

# define spark and hadoop versions
ENV SPARK_VERSION 2.3.3


# download and install spark
RUN mkdir -p /hadoop_conf && \
    mkdir -p /opt && \
    cd /opt && \
    curl http://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz | \
        tar -zx && \
    ln -s spark-${SPARK_VERSION}-bin-hadoop2.7 spark && \
    echo Spark ${SPARK_VERSION} installed in /opt

ENV PATH $PATH:/opt/spark/bin
ENV SPARK_HOME=/opt/spark
ENV HADOOP_CONF_DIR /hadoop_conf

COPY spark-defaults.conf /opt/spark/conf
COPY hadoop_conf/ /hadoop_conf
COPY spark-master /
COPY spark-worker /
COPY spark-master-batch /
COPY common.sh /
RUN chmod +x spark-master
