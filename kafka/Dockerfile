# base image
FROM openjdk:8

# define spark and hadoop versions
ENV KAFKA_VERSION 2.2.0


# download and install spark
RUN mkdir -p /opt && \
    cd /opt && \
    curl http://ftp.unicamp.br/pub/apache/kafka/${KAFKA_VERSION}/kafka_2.11-${KAFKA_VERSION}.tgz | \
	tar -zx && \
    ln -s kafka_2.11-${KAFKA_VERSION}/ kafka
ENV PATH $PATH:/opt/kafka/bin
COPY server.properties /
